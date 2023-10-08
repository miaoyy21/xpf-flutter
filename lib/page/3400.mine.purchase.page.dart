import 'dart:async';
import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../index.dart';
import '../pb/psw.pb.dart' as $pb;

class MinePurchasePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateMinePurchasePage();
}

class _StateMinePurchasePage extends State<MinePurchasePage> {
  final UserDataService userDataService = Get.find();
  final InAppPurchase inAppPurchase = InAppPurchase.instance;

  StreamSubscription<List<PurchaseDetails>> subscription;
  Future<List<ProductDetails>> future;

  List<String> msg = [];

  @override
  void initState() {
    final purchaseStream = inAppPurchase.purchaseStream;

    subscription = purchaseStream.listen((List<PurchaseDetails> details) {
      listenPurchase(details);
    }, onDone: () {
      msg.add("Purchase Stream is DONE");
      subscription.cancel();
    }, onError: (e) {
      msg.add("Purchase Stream ERROR ${e}");
    });

    msg.add("Products is ${userDataService.products}");
    future = fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("积分充值".translate),
        centerTitle: true,
        actions: Config().mode.isDebug
            ? [
                IconButton(
                  icon: Icon(Icons.clear),
                  padding: EdgeInsets.zero,
                  onPressed: msg.clear,
                ),
                IconButton(
                  icon: Icon(Icons.error),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Card(
                          margin: EdgeInsets.symmetric(
                            vertical: 64,
                            horizontal: 24,
                          ),
                          child: ListView.separated(
                            itemBuilder: (context, index) => Container(
                              padding: EdgeInsets.all(8),
                              child: SelectableText(msg[index]),
                            ),
                            separatorBuilder: (context, index) =>
                                Divider(height: 0),
                            itemCount: msg.length,
                          ),
                        );
                      },
                    );
                  },
                ),
              ]
            : null,
      ),
      backgroundColor: context.whiteBlackColor,
      body: FutureBuilder<List<ProductDetails>>(
        future: future,
        builder: (context, snapshot) {
          msg.add("Connection State is ${snapshot.connectionState.name}");

          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(child: context.spinKit());
            default:
              if (!snapshot.hasData || snapshot.data.length.isZero)
                return Center(
                  child: Icon(Icons.search, size: 64, color: context.greyColor),
                );

              if (snapshot.hasError) {
                msg.add("FutureBuilder ERROR ${snapshot.error}");
              }

              snapshot.data.sort((a, b) => a.rawPrice > b.rawPrice ? 1 : 0);
              return buildView(snapshot.data);
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    subscription.cancel();

    super.dispose();
  }

  Widget buildView(List<ProductDetails> products) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];

        msg.add(jsProduct(product));

        return ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          title: Text(product.title),
          subtitle:
              product.description.isNotEmpty ? Text(product.description) : null,
          trailing: TextButton(
            child: Text(
              product.price,
              style: TextStyle(color: context.actionTextColor),
            ),
            style: context.buttonStyle,
            onPressed: () {
              try {
                final purchaseParam = PurchaseParam(
                  productDetails: product,
                  applicationUserName: "${userDataService.userId}",
                );

                msg.add("Purchase Product ID is ${product.id} ");
                inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
              } catch (e, s) {
                msg.add("Buy Exception :: $e");
                msg.add("Buy StackTrace :: $s");
                EasyLoading.showError("连接服务器失败".translate);
              }
            },
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(height: 0, indent: 8, endIndent: 8),
      itemCount: products.length,
    );
  }

  String jsProduct(ProductDetails p) {
    return "{id:${p.id},title:${p.title},description:${p.description},"
        "price:${p.price},rawPrice:${p.rawPrice},"
        "currencyCode:${p.currencyCode},currencySymbol:${p.currencySymbol}}";
  }

  String jsPurchase(PurchaseDetails p) {
    return "{purchaseID:${p.purchaseID},productID:${p.productID},err:${p.error},"
        "pendingCompletePurchase:${p.pendingCompletePurchase}status:${p.status}}";
  }

  // Listen Purchase
  Future listenPurchase(List<PurchaseDetails> details) async {
    msg.add(">>>>>> Function listenPurchase(${details.length}) >>>>>>");

    try {
      for (final detail in details) {
        EasyLoading.dismiss();
        msg.add("Purchase Detail is ${jsPurchase(detail)} ");

        if (detail.status == PurchaseStatus.canceled) {
          await inAppPurchase.completePurchase(detail);
          continue;
        }

        if (detail.status == PurchaseStatus.pending) {
          EasyLoading.show(status: "正在处理订单，请稍后...".translate);
          continue;
        }

        if (detail.status == PurchaseStatus.error) {
          msg.add("Status ERROR ${detail.error}");
          EasyLoading.showError(
              "${detail.productID} is Error ${detail.error}.");
        } else if (detail.status == PurchaseStatus.purchased) {
          msg.add("Purchased ID is ${detail.purchaseID} Purchased 001");

          // In App Purchase
          msg.add("Purchased ID is ${detail.purchaseID} Purchased 002");
          final req = $pb.InAppPurchase()
            ..purchaseID = detail.purchaseID
            ..productID = detail.productID
            ..receipt = detail.verificationData.serverVerificationData
            ..source = detail.verificationData.source
            ..transactionDate = detail.transactionDate;

          msg.add(
              "Purchase ID ${req.purchaseID},Product ID is ${req.productID}");

          msg.add("Purchased ID is ${detail.purchaseID} Purchased 003");
          final resp = await Http().post($pb.MsgNo.Msg9009, req, timeout: 0)
              as $pb.InAppPurchaseResp;
          if (resp == null) continue;
          msg.add("Server Response ${resp.writeToJson()}");

          msg.add(
              "Purchased ID is ${detail.purchaseID} Purchased 004 ${resp.writeToJson()}");
          if (resp.isValid) {
            userDataService.score = resp.score;
            EasyLoading.showSuccess("充值成功".translate);
          }

          msg.add("Purchased ID is ${detail.purchaseID} Purchased 005");
        }

        if (detail.pendingCompletePurchase) {
          msg.add("Complete Purchase ...");
          await inAppPurchase.completePurchase(detail);
        }
      }
    } catch (e, s) {
      msg.add("Purchase Exception :: $e");
      msg.add("Purchase StackTrace :: $s");
      EasyLoading.showError("连接服务器失败".translate);
    }
  }

  // Fetch Products from Local Store
  Future<List<ProductDetails>> fetchProducts() async {
    msg.add(">>>>>> Function fetchProducts() >>>>>>");

    final available = await inAppPurchase.isAvailable();
    if (!available) {
      msg.add("In App Purchase is not Available");
      return Future.value([]);
    }

    msg.add("Query Product Details ...");
    final ProductDetailsResponse resp = await inAppPurchase
        .queryProductDetails(userDataService.products.toSet());
    msg.add("ERROR ${resp.error}");
    msg.add("NOT Found IDs ${jsonEncode(resp.notFoundIDs)}");
    msg.add("Product Details Size is ${resp.productDetails.length}");

    return resp.productDetails;
  }
}
