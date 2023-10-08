///
//  Generated code. Do not modify.
//  source: psw.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'psw.pbenum.dart';

export 'psw.pbenum.dart';

class AccountField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountField', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.Q3)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', entryClassName: 'AccountField.NameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..a<$core.bool>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPrimary', $pb.PbFieldType.QB, protoName: 'isPrimary')
    ..e<FieldType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: FieldType.FieldText, valueOf: FieldType.valueOf, enumValues: FieldType.values)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.QY)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minLines', $pb.PbFieldType.Q3, protoName: 'minLines')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxLines', $pb.PbFieldType.Q3, protoName: 'maxLines')
  ;

  AccountField._() : super();
  factory AccountField({
    $core.int? index,
    $core.Map<$core.String, $core.String>? name,
    $core.bool? isPrimary,
    FieldType? type,
    $core.List<$core.int>? bytes,
    $core.int? minLines,
    $core.int? maxLines,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (name != null) {
      _result.name.addAll(name);
    }
    if (isPrimary != null) {
      _result.isPrimary = isPrimary;
    }
    if (type != null) {
      _result.type = type;
    }
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (minLines != null) {
      _result.minLines = minLines;
    }
    if (maxLines != null) {
      _result.maxLines = maxLines;
    }
    return _result;
  }
  factory AccountField.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountField.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountField clone() => AccountField()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountField copyWith(void Function(AccountField) updates) => super.copyWith((message) => updates(message as AccountField)) as AccountField; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountField create() => AccountField._();
  AccountField createEmptyInstance() => create();
  static $pb.PbList<AccountField> createRepeated() => $pb.PbList<AccountField>();
  @$core.pragma('dart2js:noInline')
  static AccountField getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountField>(create);
  static AccountField? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get name => $_getMap(1);

  @$pb.TagNumber(3)
  $core.bool get isPrimary => $_getBF(2);
  @$pb.TagNumber(3)
  set isPrimary($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsPrimary() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsPrimary() => clearField(3);

  @$pb.TagNumber(4)
  FieldType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(FieldType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get bytes => $_getN(4);
  @$pb.TagNumber(5)
  set bytes($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBytes() => $_has(4);
  @$pb.TagNumber(5)
  void clearBytes() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get minLines => $_getIZ(5);
  @$pb.TagNumber(6)
  set minLines($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMinLines() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinLines() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get maxLines => $_getIZ(6);
  @$pb.TagNumber(7)
  set maxLines($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMaxLines() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxLines() => clearField(7);
}

class ApplicationAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplicationAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', protoName: 'accountId')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', $pb.PbFieldType.Q6, protoName: 'categoryId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId', protoName: 'appId')
    ..m<$core.String, $core.String>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName', protoName: 'appName', entryClassName: 'ApplicationAccount.AppNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAt', $pb.PbFieldType.Q3, protoName: 'createAt')
    ..pc<AccountField>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fields', $pb.PbFieldType.PM, subBuilder: AccountField.create)
  ;

  ApplicationAccount._() : super();
  factory ApplicationAccount({
    $fixnum.Int64? id,
    $core.String? accountId,
    $fixnum.Int64? categoryId,
    $core.String? appId,
    $core.Map<$core.String, $core.String>? appName,
    $core.int? createAt,
    $core.Iterable<AccountField>? fields,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (categoryId != null) {
      _result.categoryId = categoryId;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    if (appName != null) {
      _result.appName.addAll(appName);
    }
    if (createAt != null) {
      _result.createAt = createAt;
    }
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    return _result;
  }
  factory ApplicationAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationAccount clone() => ApplicationAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationAccount copyWith(void Function(ApplicationAccount) updates) => super.copyWith((message) => updates(message as ApplicationAccount)) as ApplicationAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplicationAccount create() => ApplicationAccount._();
  ApplicationAccount createEmptyInstance() => create();
  static $pb.PbList<ApplicationAccount> createRepeated() => $pb.PbList<ApplicationAccount>();
  @$core.pragma('dart2js:noInline')
  static ApplicationAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationAccount>(create);
  static ApplicationAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get categoryId => $_getI64(2);
  @$pb.TagNumber(3)
  set categoryId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategoryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategoryId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appId => $_getSZ(3);
  @$pb.TagNumber(4)
  set appId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppId() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get appName => $_getMap(4);

  @$pb.TagNumber(6)
  $core.int get createAt => $_getIZ(5);
  @$pb.TagNumber(6)
  set createAt($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateAt() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<AccountField> get fields => $_getList(6);
}

class AccountSnapshot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountSnapshot', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', $pb.PbFieldType.Q6, protoName: 'categoryId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId', protoName: 'appId')
    ..m<$core.String, $core.String>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName', protoName: 'appName', entryClassName: 'AccountSnapshot.AppNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..aQS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', protoName: 'accountId')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAt', $pb.PbFieldType.Q3, protoName: 'createAt')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.Q3)
  ;

  AccountSnapshot._() : super();
  factory AccountSnapshot({
    $fixnum.Int64? id,
    $fixnum.Int64? categoryId,
    $core.String? appId,
    $core.Map<$core.String, $core.String>? appName,
    $core.String? accountId,
    $core.int? createAt,
    $core.int? size,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (categoryId != null) {
      _result.categoryId = categoryId;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    if (appName != null) {
      _result.appName.addAll(appName);
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (createAt != null) {
      _result.createAt = createAt;
    }
    if (size != null) {
      _result.size = size;
    }
    return _result;
  }
  factory AccountSnapshot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSnapshot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountSnapshot clone() => AccountSnapshot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountSnapshot copyWith(void Function(AccountSnapshot) updates) => super.copyWith((message) => updates(message as AccountSnapshot)) as AccountSnapshot; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSnapshot create() => AccountSnapshot._();
  AccountSnapshot createEmptyInstance() => create();
  static $pb.PbList<AccountSnapshot> createRepeated() => $pb.PbList<AccountSnapshot>();
  @$core.pragma('dart2js:noInline')
  static AccountSnapshot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSnapshot>(create);
  static AccountSnapshot? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get categoryId => $_getI64(1);
  @$pb.TagNumber(2)
  set categoryId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategoryId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategoryId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get appName => $_getMap(3);

  @$pb.TagNumber(5)
  $core.String get accountId => $_getSZ(4);
  @$pb.TagNumber(5)
  set accountId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccountId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get createAt => $_getIZ(5);
  @$pb.TagNumber(6)
  set createAt($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateAt() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get size => $_getIZ(6);
  @$pb.TagNumber(7)
  set size($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearSize() => clearField(7);
}

class ApplicationCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplicationCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protoId', $pb.PbFieldType.Q3, protoName: 'protoId')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', entryClassName: 'ApplicationCategory.NameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
  ;

  ApplicationCategory._() : super();
  factory ApplicationCategory({
    $fixnum.Int64? id,
    $core.int? protoId,
    $core.Map<$core.String, $core.String>? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (protoId != null) {
      _result.protoId = protoId;
    }
    if (name != null) {
      _result.name.addAll(name);
    }
    return _result;
  }
  factory ApplicationCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationCategory clone() => ApplicationCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationCategory copyWith(void Function(ApplicationCategory) updates) => super.copyWith((message) => updates(message as ApplicationCategory)) as ApplicationCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplicationCategory create() => ApplicationCategory._();
  ApplicationCategory createEmptyInstance() => create();
  static $pb.PbList<ApplicationCategory> createRepeated() => $pb.PbList<ApplicationCategory>();
  @$core.pragma('dart2js:noInline')
  static ApplicationCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationCategory>(create);
  static ApplicationCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get protoId => $_getIZ(1);
  @$pb.TagNumber(2)
  set protoId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtoId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtoId() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get name => $_getMap(2);
}

class Application extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Application', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId', protoName: 'appId')
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName', protoName: 'appName', entryClassName: 'Application.AppNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
  ;

  Application._() : super();
  factory Application({
    $core.String? appId,
    $core.Map<$core.String, $core.String>? appName,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (appName != null) {
      _result.appName.addAll(appName);
    }
    return _result;
  }
  factory Application.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Application.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Application clone() => Application()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Application copyWith(void Function(Application) updates) => super.copyWith((message) => updates(message as Application)) as Application; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Application create() => Application._();
  Application createEmptyInstance() => create();
  static $pb.PbList<Application> createRepeated() => $pb.PbList<Application>();
  @$core.pragma('dart2js:noInline')
  static Application getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Application>(create);
  static Application? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get appName => $_getMap(1);
}

class File extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'File', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime')
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ext')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.Q3)
    ..a<$core.bool>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasThumbnail', $pb.PbFieldType.QB, protoName: 'hasThumbnail')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadAt', $pb.PbFieldType.Q3, protoName: 'uploadAt')
    ..a<$core.bool>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isShared', $pb.PbFieldType.QB, protoName: 'isShared')
  ;

  File._() : super();
  factory File({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? mime,
    $core.String? ext,
    $core.int? size,
    $core.bool? hasThumbnail,
    $core.int? uploadAt,
    $core.bool? isShared,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (mime != null) {
      _result.mime = mime;
    }
    if (ext != null) {
      _result.ext = ext;
    }
    if (size != null) {
      _result.size = size;
    }
    if (hasThumbnail != null) {
      _result.hasThumbnail = hasThumbnail;
    }
    if (uploadAt != null) {
      _result.uploadAt = uploadAt;
    }
    if (isShared != null) {
      _result.isShared = isShared;
    }
    return _result;
  }
  factory File.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory File.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  File clone() => File()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  File copyWith(void Function(File) updates) => super.copyWith((message) => updates(message as File)) as File; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static File create() => File._();
  File createEmptyInstance() => create();
  static $pb.PbList<File> createRepeated() => $pb.PbList<File>();
  @$core.pragma('dart2js:noInline')
  static File getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<File>(create);
  static File? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mime => $_getSZ(2);
  @$pb.TagNumber(3)
  set mime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMime() => $_has(2);
  @$pb.TagNumber(3)
  void clearMime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ext => $_getSZ(3);
  @$pb.TagNumber(4)
  set ext($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExt() => $_has(3);
  @$pb.TagNumber(4)
  void clearExt() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get size => $_getIZ(4);
  @$pb.TagNumber(5)
  set size($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearSize() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hasThumbnail => $_getBF(5);
  @$pb.TagNumber(6)
  set hasThumbnail($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHasThumbnail() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasThumbnail() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get uploadAt => $_getIZ(6);
  @$pb.TagNumber(7)
  set uploadAt($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUploadAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUploadAt() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isShared => $_getBF(7);
  @$pb.TagNumber(8)
  set isShared($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsShared() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsShared() => clearField(8);
}

class Trash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Trash', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<AccountSnapshot>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snapshot', subBuilder: AccountSnapshot.create)
    ..aOM<File>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', subBuilder: File.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', $pb.PbFieldType.Q3, protoName: 'deleteAt')
  ;

  Trash._() : super();
  factory Trash({
    AccountSnapshot? snapshot,
    File? file,
    $core.int? deleteAt,
  }) {
    final _result = create();
    if (snapshot != null) {
      _result.snapshot = snapshot;
    }
    if (file != null) {
      _result.file = file;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory Trash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Trash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Trash clone() => Trash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Trash copyWith(void Function(Trash) updates) => super.copyWith((message) => updates(message as Trash)) as Trash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Trash create() => Trash._();
  Trash createEmptyInstance() => create();
  static $pb.PbList<Trash> createRepeated() => $pb.PbList<Trash>();
  @$core.pragma('dart2js:noInline')
  static Trash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Trash>(create);
  static Trash? _defaultInstance;

  @$pb.TagNumber(1)
  AccountSnapshot get snapshot => $_getN(0);
  @$pb.TagNumber(1)
  set snapshot(AccountSnapshot v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnapshot() => clearField(1);
  @$pb.TagNumber(1)
  AccountSnapshot ensureSnapshot() => $_ensure(0);

  @$pb.TagNumber(2)
  File get file => $_getN(1);
  @$pb.TagNumber(2)
  set file(File v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearFile() => clearField(2);
  @$pb.TagNumber(2)
  File ensureFile() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get deleteAt => $_getIZ(2);
  @$pb.TagNumber(3)
  set deleteAt($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeleteAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleteAt() => clearField(3);
}

class Operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Operate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<MsgNo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgNo', $pb.PbFieldType.QE, protoName: 'msgNo', defaultOrMaker: MsgNo.Msg1201, valueOf: MsgNo.valueOf, enumValues: MsgNo.values)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ip')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'at', $pb.PbFieldType.Q3)
  ;

  Operate._() : super();
  factory Operate({
    MsgNo? msgNo,
    $core.Iterable<$core.String>? msg,
    $core.int? rt,
    $core.String? ip,
    $core.int? at,
  }) {
    final _result = create();
    if (msgNo != null) {
      _result.msgNo = msgNo;
    }
    if (msg != null) {
      _result.msg.addAll(msg);
    }
    if (rt != null) {
      _result.rt = rt;
    }
    if (ip != null) {
      _result.ip = ip;
    }
    if (at != null) {
      _result.at = at;
    }
    return _result;
  }
  factory Operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Operate clone() => Operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Operate copyWith(void Function(Operate) updates) => super.copyWith((message) => updates(message as Operate)) as Operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operate create() => Operate._();
  Operate createEmptyInstance() => create();
  static $pb.PbList<Operate> createRepeated() => $pb.PbList<Operate>();
  @$core.pragma('dart2js:noInline')
  static Operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Operate>(create);
  static Operate? _defaultInstance;

  @$pb.TagNumber(1)
  MsgNo get msgNo => $_getN(0);
  @$pb.TagNumber(1)
  set msgNo(MsgNo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get msg => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get rt => $_getIZ(2);
  @$pb.TagNumber(3)
  set rt($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRt() => $_has(2);
  @$pb.TagNumber(3)
  void clearRt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ip => $_getSZ(3);
  @$pb.TagNumber(4)
  set ip($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIp() => $_has(3);
  @$pb.TagNumber(4)
  void clearIp() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get at => $_getIZ(4);
  @$pb.TagNumber(5)
  set at($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearAt() => clearField(5);
}

class Score extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Score', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.Q3)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cost', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'at', $pb.PbFieldType.Q3)
  ;

  Score._() : super();
  factory Score({
    $core.int? action,
    $fixnum.Int64? cost,
    $fixnum.Int64? score,
    $core.int? at,
  }) {
    final _result = create();
    if (action != null) {
      _result.action = action;
    }
    if (cost != null) {
      _result.cost = cost;
    }
    if (score != null) {
      _result.score = score;
    }
    if (at != null) {
      _result.at = at;
    }
    return _result;
  }
  factory Score.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Score.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Score clone() => Score()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Score copyWith(void Function(Score) updates) => super.copyWith((message) => updates(message as Score)) as Score; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Score create() => Score._();
  Score createEmptyInstance() => create();
  static $pb.PbList<Score> createRepeated() => $pb.PbList<Score>();
  @$core.pragma('dart2js:noInline')
  static Score getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Score>(create);
  static Score? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get action => $_getIZ(0);
  @$pb.TagNumber(1)
  set action($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get cost => $_getI64(1);
  @$pb.TagNumber(2)
  set cost($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCost() => $_has(1);
  @$pb.TagNumber(2)
  void clearCost() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get score => $_getI64(2);
  @$pb.TagNumber(3)
  set score($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearScore() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get at => $_getIZ(3);
  @$pb.TagNumber(4)
  set at($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAt() => clearField(4);
}

class UserData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetsVersion', protoName: 'assetsVersion')
    ..a<$core.bool>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isGesture', $pb.PbFieldType.QB, protoName: 'isGesture')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gesture', $pb.PbFieldType.QY)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validityGesture', $pb.PbFieldType.Q3, protoName: 'validityGesture')
    ..pc<ApplicationCategory>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: ApplicationCategory.create)
    ..pc<AccountSnapshot>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snapshots', $pb.PbFieldType.PM, subBuilder: AccountSnapshot.create)
    ..pc<File>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files', $pb.PbFieldType.PM, subBuilder: File.create)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'products')
    ..aQS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qrCode', protoName: 'qrCode')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxFileSizeM', $pb.PbFieldType.Q3, protoName: 'maxFileSizeM')
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageCompressSizeM', $pb.PbFieldType.Q3, protoName: 'imageCompressSizeM')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'videoCompressSizeM', $pb.PbFieldType.Q3, protoName: 'videoCompressSizeM')
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'costAccountScore', $pb.PbFieldType.Q3, protoName: 'costAccountScore')
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'costFile10MScore', $pb.PbFieldType.Q3, protoName: 'costFile10MScore')
    ..a<$core.bool>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowCompression', $pb.PbFieldType.QB, protoName: 'allowCompression')
    ..a<$core.int>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageCompressPercentage', $pb.PbFieldType.Q3, protoName: 'imageCompressPercentage')
    ..a<$core.int>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageCompressQuality', $pb.PbFieldType.Q3, protoName: 'imageCompressQuality')
    ..e<VideoQuality>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'videoCompressQuality', $pb.PbFieldType.QE, protoName: 'videoCompressQuality', defaultOrMaker: VideoQuality.DefaultQuality, valueOf: VideoQuality.valueOf, enumValues: VideoQuality.values)
  ;

  UserData._() : super();
  factory UserData({
    $core.String? version,
    $core.String? assetsVersion,
    $core.bool? isGesture,
    $core.List<$core.int>? gesture,
    $core.int? validityGesture,
    $core.Iterable<ApplicationCategory>? categories,
    $core.Iterable<AccountSnapshot>? snapshots,
    $core.Iterable<File>? files,
    $fixnum.Int64? score,
    $core.Iterable<$core.String>? products,
    $core.String? qrCode,
    $core.int? maxFileSizeM,
    $core.int? imageCompressSizeM,
    $core.int? videoCompressSizeM,
    $core.int? costAccountScore,
    $core.int? costFile10MScore,
    $core.bool? allowCompression,
    $core.int? imageCompressPercentage,
    $core.int? imageCompressQuality,
    VideoQuality? videoCompressQuality,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (assetsVersion != null) {
      _result.assetsVersion = assetsVersion;
    }
    if (isGesture != null) {
      _result.isGesture = isGesture;
    }
    if (gesture != null) {
      _result.gesture = gesture;
    }
    if (validityGesture != null) {
      _result.validityGesture = validityGesture;
    }
    if (categories != null) {
      _result.categories.addAll(categories);
    }
    if (snapshots != null) {
      _result.snapshots.addAll(snapshots);
    }
    if (files != null) {
      _result.files.addAll(files);
    }
    if (score != null) {
      _result.score = score;
    }
    if (products != null) {
      _result.products.addAll(products);
    }
    if (qrCode != null) {
      _result.qrCode = qrCode;
    }
    if (maxFileSizeM != null) {
      _result.maxFileSizeM = maxFileSizeM;
    }
    if (imageCompressSizeM != null) {
      _result.imageCompressSizeM = imageCompressSizeM;
    }
    if (videoCompressSizeM != null) {
      _result.videoCompressSizeM = videoCompressSizeM;
    }
    if (costAccountScore != null) {
      _result.costAccountScore = costAccountScore;
    }
    if (costFile10MScore != null) {
      _result.costFile10MScore = costFile10MScore;
    }
    if (allowCompression != null) {
      _result.allowCompression = allowCompression;
    }
    if (imageCompressPercentage != null) {
      _result.imageCompressPercentage = imageCompressPercentage;
    }
    if (imageCompressQuality != null) {
      _result.imageCompressQuality = imageCompressQuality;
    }
    if (videoCompressQuality != null) {
      _result.videoCompressQuality = videoCompressQuality;
    }
    return _result;
  }
  factory UserData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserData clone() => UserData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserData copyWith(void Function(UserData) updates) => super.copyWith((message) => updates(message as UserData)) as UserData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserData create() => UserData._();
  UserData createEmptyInstance() => create();
  static $pb.PbList<UserData> createRepeated() => $pb.PbList<UserData>();
  @$core.pragma('dart2js:noInline')
  static UserData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserData>(create);
  static UserData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetsVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetsVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetsVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetsVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isGesture => $_getBF(2);
  @$pb.TagNumber(3)
  set isGesture($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsGesture() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsGesture() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get gesture => $_getN(3);
  @$pb.TagNumber(4)
  set gesture($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGesture() => $_has(3);
  @$pb.TagNumber(4)
  void clearGesture() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get validityGesture => $_getIZ(4);
  @$pb.TagNumber(5)
  set validityGesture($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValidityGesture() => $_has(4);
  @$pb.TagNumber(5)
  void clearValidityGesture() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<ApplicationCategory> get categories => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<AccountSnapshot> get snapshots => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<File> get files => $_getList(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get score => $_getI64(8);
  @$pb.TagNumber(9)
  set score($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasScore() => $_has(8);
  @$pb.TagNumber(9)
  void clearScore() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get products => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get qrCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set qrCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasQrCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearQrCode() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get maxFileSizeM => $_getIZ(11);
  @$pb.TagNumber(12)
  set maxFileSizeM($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMaxFileSizeM() => $_has(11);
  @$pb.TagNumber(12)
  void clearMaxFileSizeM() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get imageCompressSizeM => $_getIZ(12);
  @$pb.TagNumber(13)
  set imageCompressSizeM($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasImageCompressSizeM() => $_has(12);
  @$pb.TagNumber(13)
  void clearImageCompressSizeM() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get videoCompressSizeM => $_getIZ(13);
  @$pb.TagNumber(14)
  set videoCompressSizeM($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasVideoCompressSizeM() => $_has(13);
  @$pb.TagNumber(14)
  void clearVideoCompressSizeM() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get costAccountScore => $_getIZ(14);
  @$pb.TagNumber(15)
  set costAccountScore($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCostAccountScore() => $_has(14);
  @$pb.TagNumber(15)
  void clearCostAccountScore() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get costFile10MScore => $_getIZ(15);
  @$pb.TagNumber(16)
  set costFile10MScore($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCostFile10MScore() => $_has(15);
  @$pb.TagNumber(16)
  void clearCostFile10MScore() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get allowCompression => $_getBF(16);
  @$pb.TagNumber(17)
  set allowCompression($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasAllowCompression() => $_has(16);
  @$pb.TagNumber(17)
  void clearAllowCompression() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get imageCompressPercentage => $_getIZ(17);
  @$pb.TagNumber(18)
  set imageCompressPercentage($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasImageCompressPercentage() => $_has(17);
  @$pb.TagNumber(18)
  void clearImageCompressPercentage() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get imageCompressQuality => $_getIZ(18);
  @$pb.TagNumber(19)
  set imageCompressQuality($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasImageCompressQuality() => $_has(18);
  @$pb.TagNumber(19)
  void clearImageCompressQuality() => clearField(19);

  @$pb.TagNumber(20)
  VideoQuality get videoCompressQuality => $_getN(19);
  @$pb.TagNumber(20)
  set videoCompressQuality(VideoQuality v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasVideoCompressQuality() => $_has(19);
  @$pb.TagNumber(20)
  void clearVideoCompressQuality() => clearField(20);
}

class CreateApplicationCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateApplicationCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryName', protoName: 'categoryName', entryClassName: 'CreateApplicationCategory.CategoryNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  CreateApplicationCategory._() : super();
  factory CreateApplicationCategory({
    $core.Map<$core.String, $core.String>? categoryName,
  }) {
    final _result = create();
    if (categoryName != null) {
      _result.categoryName.addAll(categoryName);
    }
    return _result;
  }
  factory CreateApplicationCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateApplicationCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateApplicationCategory clone() => CreateApplicationCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateApplicationCategory copyWith(void Function(CreateApplicationCategory) updates) => super.copyWith((message) => updates(message as CreateApplicationCategory)) as CreateApplicationCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateApplicationCategory create() => CreateApplicationCategory._();
  CreateApplicationCategory createEmptyInstance() => create();
  static $pb.PbList<CreateApplicationCategory> createRepeated() => $pb.PbList<CreateApplicationCategory>();
  @$core.pragma('dart2js:noInline')
  static CreateApplicationCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateApplicationCategory>(create);
  static CreateApplicationCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get categoryName => $_getMap(0);
}

class CreateApplicationCategoryResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateApplicationCategoryResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aOM<ApplicationCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', subBuilder: ApplicationCategory.create)
  ;

  CreateApplicationCategoryResp._() : super();
  factory CreateApplicationCategoryResp({
    $core.int? rt,
    ApplicationCategory? category,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (category != null) {
      _result.category = category;
    }
    return _result;
  }
  factory CreateApplicationCategoryResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateApplicationCategoryResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateApplicationCategoryResp clone() => CreateApplicationCategoryResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateApplicationCategoryResp copyWith(void Function(CreateApplicationCategoryResp) updates) => super.copyWith((message) => updates(message as CreateApplicationCategoryResp)) as CreateApplicationCategoryResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateApplicationCategoryResp create() => CreateApplicationCategoryResp._();
  CreateApplicationCategoryResp createEmptyInstance() => create();
  static $pb.PbList<CreateApplicationCategoryResp> createRepeated() => $pb.PbList<CreateApplicationCategoryResp>();
  @$core.pragma('dart2js:noInline')
  static CreateApplicationCategoryResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateApplicationCategoryResp>(create);
  static CreateApplicationCategoryResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  ApplicationCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(ApplicationCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);
  @$pb.TagNumber(2)
  ApplicationCategory ensureCategory() => $_ensure(1);
}

class DeleteApplicationCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteApplicationCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', $pb.PbFieldType.Q6, protoName: 'categoryId', defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  DeleteApplicationCategory._() : super();
  factory DeleteApplicationCategory({
    $fixnum.Int64? categoryId,
  }) {
    final _result = create();
    if (categoryId != null) {
      _result.categoryId = categoryId;
    }
    return _result;
  }
  factory DeleteApplicationCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteApplicationCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteApplicationCategory clone() => DeleteApplicationCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteApplicationCategory copyWith(void Function(DeleteApplicationCategory) updates) => super.copyWith((message) => updates(message as DeleteApplicationCategory)) as DeleteApplicationCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationCategory create() => DeleteApplicationCategory._();
  DeleteApplicationCategory createEmptyInstance() => create();
  static $pb.PbList<DeleteApplicationCategory> createRepeated() => $pb.PbList<DeleteApplicationCategory>();
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteApplicationCategory>(create);
  static DeleteApplicationCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get categoryId => $_getI64(0);
  @$pb.TagNumber(1)
  set categoryId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryId() => clearField(1);
}

class DeleteApplicationCategoryResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteApplicationCategoryResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
  ;

  DeleteApplicationCategoryResp._() : super();
  factory DeleteApplicationCategoryResp({
    $core.int? rt,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    return _result;
  }
  factory DeleteApplicationCategoryResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteApplicationCategoryResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteApplicationCategoryResp clone() => DeleteApplicationCategoryResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteApplicationCategoryResp copyWith(void Function(DeleteApplicationCategoryResp) updates) => super.copyWith((message) => updates(message as DeleteApplicationCategoryResp)) as DeleteApplicationCategoryResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationCategoryResp create() => DeleteApplicationCategoryResp._();
  DeleteApplicationCategoryResp createEmptyInstance() => create();
  static $pb.PbList<DeleteApplicationCategoryResp> createRepeated() => $pb.PbList<DeleteApplicationCategoryResp>();
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationCategoryResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteApplicationCategoryResp>(create);
  static DeleteApplicationCategoryResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);
}

class SaveApplicationCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveApplicationCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', $pb.PbFieldType.Q6, protoName: 'categoryId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryName', protoName: 'categoryName', entryClassName: 'SaveApplicationCategory.CategoryNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
  ;

  SaveApplicationCategory._() : super();
  factory SaveApplicationCategory({
    $fixnum.Int64? categoryId,
    $core.Map<$core.String, $core.String>? categoryName,
  }) {
    final _result = create();
    if (categoryId != null) {
      _result.categoryId = categoryId;
    }
    if (categoryName != null) {
      _result.categoryName.addAll(categoryName);
    }
    return _result;
  }
  factory SaveApplicationCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveApplicationCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveApplicationCategory clone() => SaveApplicationCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveApplicationCategory copyWith(void Function(SaveApplicationCategory) updates) => super.copyWith((message) => updates(message as SaveApplicationCategory)) as SaveApplicationCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveApplicationCategory create() => SaveApplicationCategory._();
  SaveApplicationCategory createEmptyInstance() => create();
  static $pb.PbList<SaveApplicationCategory> createRepeated() => $pb.PbList<SaveApplicationCategory>();
  @$core.pragma('dart2js:noInline')
  static SaveApplicationCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveApplicationCategory>(create);
  static SaveApplicationCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get categoryId => $_getI64(0);
  @$pb.TagNumber(1)
  set categoryId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get categoryName => $_getMap(1);
}

class SaveApplicationCategoryResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveApplicationCategoryResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
  ;

  SaveApplicationCategoryResp._() : super();
  factory SaveApplicationCategoryResp({
    $core.int? rt,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    return _result;
  }
  factory SaveApplicationCategoryResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveApplicationCategoryResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveApplicationCategoryResp clone() => SaveApplicationCategoryResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveApplicationCategoryResp copyWith(void Function(SaveApplicationCategoryResp) updates) => super.copyWith((message) => updates(message as SaveApplicationCategoryResp)) as SaveApplicationCategoryResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveApplicationCategoryResp create() => SaveApplicationCategoryResp._();
  SaveApplicationCategoryResp createEmptyInstance() => create();
  static $pb.PbList<SaveApplicationCategoryResp> createRepeated() => $pb.PbList<SaveApplicationCategoryResp>();
  @$core.pragma('dart2js:noInline')
  static SaveApplicationCategoryResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveApplicationCategoryResp>(create);
  static SaveApplicationCategoryResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);
}

class SaveApplicationCategoriesSeq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveApplicationCategoriesSeq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seqs', $pb.PbFieldType.P6)
    ..hasRequiredFields = false
  ;

  SaveApplicationCategoriesSeq._() : super();
  factory SaveApplicationCategoriesSeq({
    $core.Iterable<$fixnum.Int64>? seqs,
  }) {
    final _result = create();
    if (seqs != null) {
      _result.seqs.addAll(seqs);
    }
    return _result;
  }
  factory SaveApplicationCategoriesSeq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveApplicationCategoriesSeq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveApplicationCategoriesSeq clone() => SaveApplicationCategoriesSeq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveApplicationCategoriesSeq copyWith(void Function(SaveApplicationCategoriesSeq) updates) => super.copyWith((message) => updates(message as SaveApplicationCategoriesSeq)) as SaveApplicationCategoriesSeq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveApplicationCategoriesSeq create() => SaveApplicationCategoriesSeq._();
  SaveApplicationCategoriesSeq createEmptyInstance() => create();
  static $pb.PbList<SaveApplicationCategoriesSeq> createRepeated() => $pb.PbList<SaveApplicationCategoriesSeq>();
  @$core.pragma('dart2js:noInline')
  static SaveApplicationCategoriesSeq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveApplicationCategoriesSeq>(create);
  static SaveApplicationCategoriesSeq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get seqs => $_getList(0);
}

class SaveApplicationCategoriesSeqResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveApplicationCategoriesSeqResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
  ;

  SaveApplicationCategoriesSeqResp._() : super();
  factory SaveApplicationCategoriesSeqResp({
    $core.int? rt,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    return _result;
  }
  factory SaveApplicationCategoriesSeqResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveApplicationCategoriesSeqResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveApplicationCategoriesSeqResp clone() => SaveApplicationCategoriesSeqResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveApplicationCategoriesSeqResp copyWith(void Function(SaveApplicationCategoriesSeqResp) updates) => super.copyWith((message) => updates(message as SaveApplicationCategoriesSeqResp)) as SaveApplicationCategoriesSeqResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveApplicationCategoriesSeqResp create() => SaveApplicationCategoriesSeqResp._();
  SaveApplicationCategoriesSeqResp createEmptyInstance() => create();
  static $pb.PbList<SaveApplicationCategoriesSeqResp> createRepeated() => $pb.PbList<SaveApplicationCategoriesSeqResp>();
  @$core.pragma('dart2js:noInline')
  static SaveApplicationCategoriesSeqResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveApplicationCategoriesSeqResp>(create);
  static SaveApplicationCategoriesSeqResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);
}

class GetApplicationAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetApplicationAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  GetApplicationAccount._() : super();
  factory GetApplicationAccount({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetApplicationAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetApplicationAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetApplicationAccount clone() => GetApplicationAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetApplicationAccount copyWith(void Function(GetApplicationAccount) updates) => super.copyWith((message) => updates(message as GetApplicationAccount)) as GetApplicationAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetApplicationAccount create() => GetApplicationAccount._();
  GetApplicationAccount createEmptyInstance() => create();
  static $pb.PbList<GetApplicationAccount> createRepeated() => $pb.PbList<GetApplicationAccount>();
  @$core.pragma('dart2js:noInline')
  static GetApplicationAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetApplicationAccount>(create);
  static GetApplicationAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetApplicationAccountResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetApplicationAccountResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aOM<ApplicationAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: ApplicationAccount.create)
  ;

  GetApplicationAccountResp._() : super();
  factory GetApplicationAccountResp({
    $core.int? rt,
    ApplicationAccount? account,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory GetApplicationAccountResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetApplicationAccountResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetApplicationAccountResp clone() => GetApplicationAccountResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetApplicationAccountResp copyWith(void Function(GetApplicationAccountResp) updates) => super.copyWith((message) => updates(message as GetApplicationAccountResp)) as GetApplicationAccountResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetApplicationAccountResp create() => GetApplicationAccountResp._();
  GetApplicationAccountResp createEmptyInstance() => create();
  static $pb.PbList<GetApplicationAccountResp> createRepeated() => $pb.PbList<GetApplicationAccountResp>();
  @$core.pragma('dart2js:noInline')
  static GetApplicationAccountResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetApplicationAccountResp>(create);
  static GetApplicationAccountResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  ApplicationAccount get account => $_getN(1);
  @$pb.TagNumber(2)
  set account(ApplicationAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);
  @$pb.TagNumber(2)
  ApplicationAccount ensureAccount() => $_ensure(1);
}

class CreateApplicationAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateApplicationAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId', protoName: 'appId')
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName', protoName: 'appName', entryClassName: 'CreateApplicationAccount.AppNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  CreateApplicationAccount._() : super();
  factory CreateApplicationAccount({
    $core.String? appId,
    $core.Map<$core.String, $core.String>? appName,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (appName != null) {
      _result.appName.addAll(appName);
    }
    return _result;
  }
  factory CreateApplicationAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateApplicationAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateApplicationAccount clone() => CreateApplicationAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateApplicationAccount copyWith(void Function(CreateApplicationAccount) updates) => super.copyWith((message) => updates(message as CreateApplicationAccount)) as CreateApplicationAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateApplicationAccount create() => CreateApplicationAccount._();
  CreateApplicationAccount createEmptyInstance() => create();
  static $pb.PbList<CreateApplicationAccount> createRepeated() => $pb.PbList<CreateApplicationAccount>();
  @$core.pragma('dart2js:noInline')
  static CreateApplicationAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateApplicationAccount>(create);
  static CreateApplicationAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get appName => $_getMap(1);
}

class CreateApplicationAccountResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateApplicationAccountResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aOM<ApplicationAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: ApplicationAccount.create)
  ;

  CreateApplicationAccountResp._() : super();
  factory CreateApplicationAccountResp({
    $core.int? rt,
    ApplicationAccount? account,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory CreateApplicationAccountResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateApplicationAccountResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateApplicationAccountResp clone() => CreateApplicationAccountResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateApplicationAccountResp copyWith(void Function(CreateApplicationAccountResp) updates) => super.copyWith((message) => updates(message as CreateApplicationAccountResp)) as CreateApplicationAccountResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateApplicationAccountResp create() => CreateApplicationAccountResp._();
  CreateApplicationAccountResp createEmptyInstance() => create();
  static $pb.PbList<CreateApplicationAccountResp> createRepeated() => $pb.PbList<CreateApplicationAccountResp>();
  @$core.pragma('dart2js:noInline')
  static CreateApplicationAccountResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateApplicationAccountResp>(create);
  static CreateApplicationAccountResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  ApplicationAccount get account => $_getN(1);
  @$pb.TagNumber(2)
  set account(ApplicationAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);
  @$pb.TagNumber(2)
  ApplicationAccount ensureAccount() => $_ensure(1);
}

class DeleteApplicationAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteApplicationAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  DeleteApplicationAccount._() : super();
  factory DeleteApplicationAccount({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteApplicationAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteApplicationAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteApplicationAccount clone() => DeleteApplicationAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteApplicationAccount copyWith(void Function(DeleteApplicationAccount) updates) => super.copyWith((message) => updates(message as DeleteApplicationAccount)) as DeleteApplicationAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationAccount create() => DeleteApplicationAccount._();
  DeleteApplicationAccount createEmptyInstance() => create();
  static $pb.PbList<DeleteApplicationAccount> createRepeated() => $pb.PbList<DeleteApplicationAccount>();
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteApplicationAccount>(create);
  static DeleteApplicationAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteApplicationAccountResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteApplicationAccountResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
  ;

  DeleteApplicationAccountResp._() : super();
  factory DeleteApplicationAccountResp({
    $core.int? rt,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteApplicationAccountResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteApplicationAccountResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteApplicationAccountResp clone() => DeleteApplicationAccountResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteApplicationAccountResp copyWith(void Function(DeleteApplicationAccountResp) updates) => super.copyWith((message) => updates(message as DeleteApplicationAccountResp)) as DeleteApplicationAccountResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationAccountResp create() => DeleteApplicationAccountResp._();
  DeleteApplicationAccountResp createEmptyInstance() => create();
  static $pb.PbList<DeleteApplicationAccountResp> createRepeated() => $pb.PbList<DeleteApplicationAccountResp>();
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationAccountResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteApplicationAccountResp>(create);
  static DeleteApplicationAccountResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class SaveApplicationAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveApplicationAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', protoName: 'accountId')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryId', $pb.PbFieldType.Q6, protoName: 'categoryId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId', protoName: 'appId')
    ..m<$core.String, $core.String>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName', protoName: 'appName', entryClassName: 'SaveApplicationAccount.AppNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..pc<AccountField>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fields', $pb.PbFieldType.PM, subBuilder: AccountField.create)
    ..p<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileIds', $pb.PbFieldType.P6, protoName: 'fileIds')
  ;

  SaveApplicationAccount._() : super();
  factory SaveApplicationAccount({
    $fixnum.Int64? id,
    $core.String? accountId,
    $fixnum.Int64? categoryId,
    $core.String? appId,
    $core.Map<$core.String, $core.String>? appName,
    $core.Iterable<AccountField>? fields,
    $core.Iterable<$fixnum.Int64>? fileIds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (categoryId != null) {
      _result.categoryId = categoryId;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    if (appName != null) {
      _result.appName.addAll(appName);
    }
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    if (fileIds != null) {
      _result.fileIds.addAll(fileIds);
    }
    return _result;
  }
  factory SaveApplicationAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveApplicationAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveApplicationAccount clone() => SaveApplicationAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveApplicationAccount copyWith(void Function(SaveApplicationAccount) updates) => super.copyWith((message) => updates(message as SaveApplicationAccount)) as SaveApplicationAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveApplicationAccount create() => SaveApplicationAccount._();
  SaveApplicationAccount createEmptyInstance() => create();
  static $pb.PbList<SaveApplicationAccount> createRepeated() => $pb.PbList<SaveApplicationAccount>();
  @$core.pragma('dart2js:noInline')
  static SaveApplicationAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveApplicationAccount>(create);
  static SaveApplicationAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get categoryId => $_getI64(2);
  @$pb.TagNumber(3)
  set categoryId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategoryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategoryId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appId => $_getSZ(3);
  @$pb.TagNumber(4)
  set appId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppId() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get appName => $_getMap(4);

  @$pb.TagNumber(6)
  $core.List<AccountField> get fields => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$fixnum.Int64> get fileIds => $_getList(6);
}

class SaveApplicationAccountResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveApplicationAccountResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aOM<AccountSnapshot>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snapshot', subBuilder: AccountSnapshot.create)
  ;

  SaveApplicationAccountResp._() : super();
  factory SaveApplicationAccountResp({
    $core.int? rt,
    AccountSnapshot? snapshot,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (snapshot != null) {
      _result.snapshot = snapshot;
    }
    return _result;
  }
  factory SaveApplicationAccountResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveApplicationAccountResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveApplicationAccountResp clone() => SaveApplicationAccountResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveApplicationAccountResp copyWith(void Function(SaveApplicationAccountResp) updates) => super.copyWith((message) => updates(message as SaveApplicationAccountResp)) as SaveApplicationAccountResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveApplicationAccountResp create() => SaveApplicationAccountResp._();
  SaveApplicationAccountResp createEmptyInstance() => create();
  static $pb.PbList<SaveApplicationAccountResp> createRepeated() => $pb.PbList<SaveApplicationAccountResp>();
  @$core.pragma('dart2js:noInline')
  static SaveApplicationAccountResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveApplicationAccountResp>(create);
  static SaveApplicationAccountResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  AccountSnapshot get snapshot => $_getN(1);
  @$pb.TagNumber(2)
  set snapshot(AccountSnapshot v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSnapshot() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnapshot() => clearField(2);
  @$pb.TagNumber(2)
  AccountSnapshot ensureSnapshot() => $_ensure(1);
}

class ShareFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ShareFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isShared', protoName: 'isShared')
  ;

  ShareFile._() : super();
  factory ShareFile({
    $fixnum.Int64? id,
    $core.bool? isShared,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (isShared != null) {
      _result.isShared = isShared;
    }
    return _result;
  }
  factory ShareFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareFile clone() => ShareFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareFile copyWith(void Function(ShareFile) updates) => super.copyWith((message) => updates(message as ShareFile)) as ShareFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShareFile create() => ShareFile._();
  ShareFile createEmptyInstance() => create();
  static $pb.PbList<ShareFile> createRepeated() => $pb.PbList<ShareFile>();
  @$core.pragma('dart2js:noInline')
  static ShareFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareFile>(create);
  static ShareFile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isShared => $_getBF(1);
  @$pb.TagNumber(2)
  set isShared($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsShared() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsShared() => clearField(2);
}

class ShareFileResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ShareFileResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
  ;

  ShareFileResp._() : super();
  factory ShareFileResp({
    $core.int? rt,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    return _result;
  }
  factory ShareFileResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareFileResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareFileResp clone() => ShareFileResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareFileResp copyWith(void Function(ShareFileResp) updates) => super.copyWith((message) => updates(message as ShareFileResp)) as ShareFileResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShareFileResp create() => ShareFileResp._();
  ShareFileResp createEmptyInstance() => create();
  static $pb.PbList<ShareFileResp> createRepeated() => $pb.PbList<ShareFileResp>();
  @$core.pragma('dart2js:noInline')
  static ShareFileResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareFileResp>(create);
  static ShareFileResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);
}

class UploadFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<FileType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: FileType.FileImage, valueOf: FileType.valueOf, enumValues: FileType.values)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', $pb.PbFieldType.Q6, protoName: 'accountId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime')
    ..aQS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ext')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thumbnail', $pb.PbFieldType.OY)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.Q3)
  ;

  UploadFile._() : super();
  factory UploadFile({
    FileType? type,
    $fixnum.Int64? accountId,
    $core.String? name,
    $core.String? mime,
    $core.String? ext,
    $core.List<$core.int>? bytes,
    $core.List<$core.int>? thumbnail,
    $core.int? size,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (mime != null) {
      _result.mime = mime;
    }
    if (ext != null) {
      _result.ext = ext;
    }
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (thumbnail != null) {
      _result.thumbnail = thumbnail;
    }
    if (size != null) {
      _result.size = size;
    }
    return _result;
  }
  factory UploadFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFile clone() => UploadFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFile copyWith(void Function(UploadFile) updates) => super.copyWith((message) => updates(message as UploadFile)) as UploadFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadFile create() => UploadFile._();
  UploadFile createEmptyInstance() => create();
  static $pb.PbList<UploadFile> createRepeated() => $pb.PbList<UploadFile>();
  @$core.pragma('dart2js:noInline')
  static UploadFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFile>(create);
  static UploadFile? _defaultInstance;

  @$pb.TagNumber(1)
  FileType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(FileType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get accountId => $_getI64(1);
  @$pb.TagNumber(2)
  set accountId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mime => $_getSZ(3);
  @$pb.TagNumber(4)
  set mime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMime() => $_has(3);
  @$pb.TagNumber(4)
  void clearMime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get ext => $_getSZ(4);
  @$pb.TagNumber(5)
  set ext($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExt() => $_has(4);
  @$pb.TagNumber(5)
  void clearExt() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get bytes => $_getN(5);
  @$pb.TagNumber(6)
  set bytes($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBytes() => $_has(5);
  @$pb.TagNumber(6)
  void clearBytes() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get thumbnail => $_getN(6);
  @$pb.TagNumber(7)
  set thumbnail($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasThumbnail() => $_has(6);
  @$pb.TagNumber(7)
  void clearThumbnail() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get size => $_getIZ(7);
  @$pb.TagNumber(8)
  set size($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSize() => $_has(7);
  @$pb.TagNumber(8)
  void clearSize() => clearField(8);
}

class UploadFileResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadFileResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadAt', $pb.PbFieldType.O3, protoName: 'uploadAt')
  ;

  UploadFileResp._() : super();
  factory UploadFileResp({
    $core.int? rt,
    $fixnum.Int64? id,
    $core.int? uploadAt,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (id != null) {
      _result.id = id;
    }
    if (uploadAt != null) {
      _result.uploadAt = uploadAt;
    }
    return _result;
  }
  factory UploadFileResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFileResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFileResp clone() => UploadFileResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFileResp copyWith(void Function(UploadFileResp) updates) => super.copyWith((message) => updates(message as UploadFileResp)) as UploadFileResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadFileResp create() => UploadFileResp._();
  UploadFileResp createEmptyInstance() => create();
  static $pb.PbList<UploadFileResp> createRepeated() => $pb.PbList<UploadFileResp>();
  @$core.pragma('dart2js:noInline')
  static UploadFileResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFileResp>(create);
  static UploadFileResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get uploadAt => $_getIZ(2);
  @$pb.TagNumber(3)
  set uploadAt($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUploadAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUploadAt() => clearField(3);
}

class RenameFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RenameFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
  ;

  RenameFile._() : super();
  factory RenameFile({
    $fixnum.Int64? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory RenameFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RenameFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RenameFile clone() => RenameFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RenameFile copyWith(void Function(RenameFile) updates) => super.copyWith((message) => updates(message as RenameFile)) as RenameFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RenameFile create() => RenameFile._();
  RenameFile createEmptyInstance() => create();
  static $pb.PbList<RenameFile> createRepeated() => $pb.PbList<RenameFile>();
  @$core.pragma('dart2js:noInline')
  static RenameFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RenameFile>(create);
  static RenameFile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class RenameFileResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RenameFileResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
  ;

  RenameFileResp._() : super();
  factory RenameFileResp({
    $core.int? rt,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    return _result;
  }
  factory RenameFileResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RenameFileResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RenameFileResp clone() => RenameFileResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RenameFileResp copyWith(void Function(RenameFileResp) updates) => super.copyWith((message) => updates(message as RenameFileResp)) as RenameFileResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RenameFileResp create() => RenameFileResp._();
  RenameFileResp createEmptyInstance() => create();
  static $pb.PbList<RenameFileResp> createRepeated() => $pb.PbList<RenameFileResp>();
  @$core.pragma('dart2js:noInline')
  static RenameFileResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RenameFileResp>(create);
  static RenameFileResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);
}

class DeleteFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  DeleteFile._() : super();
  factory DeleteFile({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteFile clone() => DeleteFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteFile copyWith(void Function(DeleteFile) updates) => super.copyWith((message) => updates(message as DeleteFile)) as DeleteFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteFile create() => DeleteFile._();
  DeleteFile createEmptyInstance() => create();
  static $pb.PbList<DeleteFile> createRepeated() => $pb.PbList<DeleteFile>();
  @$core.pragma('dart2js:noInline')
  static DeleteFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFile>(create);
  static DeleteFile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteFileResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteFileResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
  ;

  DeleteFileResp._() : super();
  factory DeleteFileResp({
    $core.int? rt,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteFileResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFileResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteFileResp clone() => DeleteFileResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteFileResp copyWith(void Function(DeleteFileResp) updates) => super.copyWith((message) => updates(message as DeleteFileResp)) as DeleteFileResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteFileResp create() => DeleteFileResp._();
  DeleteFileResp createEmptyInstance() => create();
  static $pb.PbList<DeleteFileResp> createRepeated() => $pb.PbList<DeleteFileResp>();
  @$core.pragma('dart2js:noInline')
  static DeleteFileResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFileResp>(create);
  static DeleteFileResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class SaveGesture extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveGesture', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.bool>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isGesture', $pb.PbFieldType.QB, protoName: 'isGesture')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gesture', $pb.PbFieldType.QY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validityGesture', $pb.PbFieldType.Q3, protoName: 'validityGesture')
  ;

  SaveGesture._() : super();
  factory SaveGesture({
    $core.bool? isGesture,
    $core.List<$core.int>? gesture,
    $core.int? validityGesture,
  }) {
    final _result = create();
    if (isGesture != null) {
      _result.isGesture = isGesture;
    }
    if (gesture != null) {
      _result.gesture = gesture;
    }
    if (validityGesture != null) {
      _result.validityGesture = validityGesture;
    }
    return _result;
  }
  factory SaveGesture.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveGesture.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveGesture clone() => SaveGesture()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveGesture copyWith(void Function(SaveGesture) updates) => super.copyWith((message) => updates(message as SaveGesture)) as SaveGesture; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveGesture create() => SaveGesture._();
  SaveGesture createEmptyInstance() => create();
  static $pb.PbList<SaveGesture> createRepeated() => $pb.PbList<SaveGesture>();
  @$core.pragma('dart2js:noInline')
  static SaveGesture getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveGesture>(create);
  static SaveGesture? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isGesture => $_getBF(0);
  @$pb.TagNumber(1)
  set isGesture($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsGesture() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsGesture() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get gesture => $_getN(1);
  @$pb.TagNumber(2)
  set gesture($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGesture() => $_has(1);
  @$pb.TagNumber(2)
  void clearGesture() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get validityGesture => $_getIZ(2);
  @$pb.TagNumber(3)
  set validityGesture($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidityGesture() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidityGesture() => clearField(3);
}

class SaveGestureResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveGestureResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isGesture', protoName: 'isGesture')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gesture', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validityGesture', $pb.PbFieldType.O3, protoName: 'validityGesture')
  ;

  SaveGestureResp._() : super();
  factory SaveGestureResp({
    $core.int? rt,
    $core.bool? isGesture,
    $core.List<$core.int>? gesture,
    $core.int? validityGesture,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (isGesture != null) {
      _result.isGesture = isGesture;
    }
    if (gesture != null) {
      _result.gesture = gesture;
    }
    if (validityGesture != null) {
      _result.validityGesture = validityGesture;
    }
    return _result;
  }
  factory SaveGestureResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveGestureResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveGestureResp clone() => SaveGestureResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveGestureResp copyWith(void Function(SaveGestureResp) updates) => super.copyWith((message) => updates(message as SaveGestureResp)) as SaveGestureResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveGestureResp create() => SaveGestureResp._();
  SaveGestureResp createEmptyInstance() => create();
  static $pb.PbList<SaveGestureResp> createRepeated() => $pb.PbList<SaveGestureResp>();
  @$core.pragma('dart2js:noInline')
  static SaveGestureResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveGestureResp>(create);
  static SaveGestureResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isGesture => $_getBF(1);
  @$pb.TagNumber(2)
  set isGesture($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsGesture() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsGesture() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get gesture => $_getN(2);
  @$pb.TagNumber(3)
  set gesture($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGesture() => $_has(2);
  @$pb.TagNumber(3)
  void clearGesture() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get validityGesture => $_getIZ(3);
  @$pb.TagNumber(4)
  set validityGesture($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidityGesture() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidityGesture() => clearField(4);
}

class GetScores extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetScores', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.Q3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.Q3)
  ;

  GetScores._() : super();
  factory GetScores({
    $core.int? limit,
    $core.int? offset,
  }) {
    final _result = create();
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory GetScores.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScores.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScores clone() => GetScores()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScores copyWith(void Function(GetScores) updates) => super.copyWith((message) => updates(message as GetScores)) as GetScores; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetScores create() => GetScores._();
  GetScores createEmptyInstance() => create();
  static $pb.PbList<GetScores> createRepeated() => $pb.PbList<GetScores>();
  @$core.pragma('dart2js:noInline')
  static GetScores getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScores>(create);
  static GetScores? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);
}

class GetScoresResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetScoresResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..pc<Score>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scores', $pb.PbFieldType.PM, subBuilder: Score.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
  ;

  GetScoresResp._() : super();
  factory GetScoresResp({
    $core.int? rt,
    $core.Iterable<Score>? scores,
    $fixnum.Int64? score,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (scores != null) {
      _result.scores.addAll(scores);
    }
    if (score != null) {
      _result.score = score;
    }
    return _result;
  }
  factory GetScoresResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScoresResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScoresResp clone() => GetScoresResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScoresResp copyWith(void Function(GetScoresResp) updates) => super.copyWith((message) => updates(message as GetScoresResp)) as GetScoresResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetScoresResp create() => GetScoresResp._();
  GetScoresResp createEmptyInstance() => create();
  static $pb.PbList<GetScoresResp> createRepeated() => $pb.PbList<GetScoresResp>();
  @$core.pragma('dart2js:noInline')
  static GetScoresResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScoresResp>(create);
  static GetScoresResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Score> get scores => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get score => $_getI64(2);
  @$pb.TagNumber(3)
  set score($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearScore() => clearField(3);
}

class GetOperates extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOperates', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.Q3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.Q3)
  ;

  GetOperates._() : super();
  factory GetOperates({
    $core.int? limit,
    $core.int? offset,
  }) {
    final _result = create();
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory GetOperates.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOperates.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOperates clone() => GetOperates()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOperates copyWith(void Function(GetOperates) updates) => super.copyWith((message) => updates(message as GetOperates)) as GetOperates; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOperates create() => GetOperates._();
  GetOperates createEmptyInstance() => create();
  static $pb.PbList<GetOperates> createRepeated() => $pb.PbList<GetOperates>();
  @$core.pragma('dart2js:noInline')
  static GetOperates getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOperates>(create);
  static GetOperates? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);
}

class GetOperatesResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOperatesResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..pc<Operate>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operates', $pb.PbFieldType.PM, subBuilder: Operate.create)
  ;

  GetOperatesResp._() : super();
  factory GetOperatesResp({
    $core.int? rt,
    $core.Iterable<Operate>? operates,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (operates != null) {
      _result.operates.addAll(operates);
    }
    return _result;
  }
  factory GetOperatesResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOperatesResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOperatesResp clone() => GetOperatesResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOperatesResp copyWith(void Function(GetOperatesResp) updates) => super.copyWith((message) => updates(message as GetOperatesResp)) as GetOperatesResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOperatesResp create() => GetOperatesResp._();
  GetOperatesResp createEmptyInstance() => create();
  static $pb.PbList<GetOperatesResp> createRepeated() => $pb.PbList<GetOperatesResp>();
  @$core.pragma('dart2js:noInline')
  static GetOperatesResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOperatesResp>(create);
  static GetOperatesResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Operate> get operates => $_getList(1);
}

class GetTrash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTrash', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetTrash._() : super();
  factory GetTrash() => create();
  factory GetTrash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTrash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTrash clone() => GetTrash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTrash copyWith(void Function(GetTrash) updates) => super.copyWith((message) => updates(message as GetTrash)) as GetTrash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTrash create() => GetTrash._();
  GetTrash createEmptyInstance() => create();
  static $pb.PbList<GetTrash> createRepeated() => $pb.PbList<GetTrash>();
  @$core.pragma('dart2js:noInline')
  static GetTrash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTrash>(create);
  static GetTrash? _defaultInstance;
}

class GetTrashResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTrashResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..pc<Trash>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trashes', $pb.PbFieldType.PM, subBuilder: Trash.create)
  ;

  GetTrashResp._() : super();
  factory GetTrashResp({
    $core.int? rt,
    $core.Iterable<Trash>? trashes,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (trashes != null) {
      _result.trashes.addAll(trashes);
    }
    return _result;
  }
  factory GetTrashResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTrashResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTrashResp clone() => GetTrashResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTrashResp copyWith(void Function(GetTrashResp) updates) => super.copyWith((message) => updates(message as GetTrashResp)) as GetTrashResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTrashResp create() => GetTrashResp._();
  GetTrashResp createEmptyInstance() => create();
  static $pb.PbList<GetTrashResp> createRepeated() => $pb.PbList<GetTrashResp>();
  @$core.pragma('dart2js:noInline')
  static GetTrashResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTrashResp>(create);
  static GetTrashResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Trash> get trashes => $_getList(1);
}

class RestoreTrash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RestoreTrash', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', protoName: 'accountId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileId', protoName: 'fileId')
    ..hasRequiredFields = false
  ;

  RestoreTrash._() : super();
  factory RestoreTrash({
    $fixnum.Int64? accountId,
    $fixnum.Int64? fileId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (fileId != null) {
      _result.fileId = fileId;
    }
    return _result;
  }
  factory RestoreTrash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestoreTrash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestoreTrash clone() => RestoreTrash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestoreTrash copyWith(void Function(RestoreTrash) updates) => super.copyWith((message) => updates(message as RestoreTrash)) as RestoreTrash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RestoreTrash create() => RestoreTrash._();
  RestoreTrash createEmptyInstance() => create();
  static $pb.PbList<RestoreTrash> createRepeated() => $pb.PbList<RestoreTrash>();
  @$core.pragma('dart2js:noInline')
  static RestoreTrash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestoreTrash>(create);
  static RestoreTrash? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get accountId => $_getI64(0);
  @$pb.TagNumber(1)
  set accountId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fileId => $_getI64(1);
  @$pb.TagNumber(2)
  set fileId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileId() => clearField(2);
}

class RestoreTrashResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RestoreTrashResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aOM<AccountSnapshot>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snapshot', subBuilder: AccountSnapshot.create)
    ..aOM<File>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', subBuilder: File.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score')
  ;

  RestoreTrashResp._() : super();
  factory RestoreTrashResp({
    $core.int? rt,
    AccountSnapshot? snapshot,
    File? file,
    $fixnum.Int64? score,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (snapshot != null) {
      _result.snapshot = snapshot;
    }
    if (file != null) {
      _result.file = file;
    }
    if (score != null) {
      _result.score = score;
    }
    return _result;
  }
  factory RestoreTrashResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestoreTrashResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestoreTrashResp clone() => RestoreTrashResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestoreTrashResp copyWith(void Function(RestoreTrashResp) updates) => super.copyWith((message) => updates(message as RestoreTrashResp)) as RestoreTrashResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RestoreTrashResp create() => RestoreTrashResp._();
  RestoreTrashResp createEmptyInstance() => create();
  static $pb.PbList<RestoreTrashResp> createRepeated() => $pb.PbList<RestoreTrashResp>();
  @$core.pragma('dart2js:noInline')
  static RestoreTrashResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestoreTrashResp>(create);
  static RestoreTrashResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  AccountSnapshot get snapshot => $_getN(1);
  @$pb.TagNumber(2)
  set snapshot(AccountSnapshot v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSnapshot() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnapshot() => clearField(2);
  @$pb.TagNumber(2)
  AccountSnapshot ensureSnapshot() => $_ensure(1);

  @$pb.TagNumber(3)
  File get file => $_getN(2);
  @$pb.TagNumber(3)
  set file(File v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearFile() => clearField(3);
  @$pb.TagNumber(3)
  File ensureFile() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get score => $_getI64(3);
  @$pb.TagNumber(4)
  set score($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearScore() => clearField(4);
}

class Register extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Register', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Register._() : super();
  factory Register() => create();
  factory Register.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Register.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Register clone() => Register()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Register copyWith(void Function(Register) updates) => super.copyWith((message) => updates(message as Register)) as Register; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Register create() => Register._();
  Register createEmptyInstance() => create();
  static $pb.PbList<Register> createRepeated() => $pb.PbList<Register>();
  @$core.pragma('dart2js:noInline')
  static Register getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Register>(create);
  static Register? _defaultInstance;
}

class RegisterResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..aOM<UserData>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userData', protoName: 'userData', subBuilder: UserData.create)
  ;

  RegisterResp._() : super();
  factory RegisterResp({
    $core.int? rt,
    $fixnum.Int64? userId,
    $core.List<$core.int>? bytes,
    UserData? userData,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (userData != null) {
      _result.userData = userData;
    }
    return _result;
  }
  factory RegisterResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResp clone() => RegisterResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResp copyWith(void Function(RegisterResp) updates) => super.copyWith((message) => updates(message as RegisterResp)) as RegisterResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterResp create() => RegisterResp._();
  RegisterResp createEmptyInstance() => create();
  static $pb.PbList<RegisterResp> createRepeated() => $pb.PbList<RegisterResp>();
  @$core.pragma('dart2js:noInline')
  static RegisterResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResp>(create);
  static RegisterResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get bytes => $_getN(2);
  @$pb.TagNumber(3)
  set bytes($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBytes() => $_has(2);
  @$pb.TagNumber(3)
  void clearBytes() => clearField(3);

  @$pb.TagNumber(4)
  UserData get userData => $_getN(3);
  @$pb.TagNumber(4)
  set userData(UserData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserData() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserData() => clearField(4);
  @$pb.TagNumber(4)
  UserData ensureUserData() => $_ensure(3);
}

class GetUserData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetUserData._() : super();
  factory GetUserData() => create();
  factory GetUserData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserData clone() => GetUserData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserData copyWith(void Function(GetUserData) updates) => super.copyWith((message) => updates(message as GetUserData)) as GetUserData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserData create() => GetUserData._();
  GetUserData createEmptyInstance() => create();
  static $pb.PbList<GetUserData> createRepeated() => $pb.PbList<GetUserData>();
  @$core.pragma('dart2js:noInline')
  static GetUserData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserData>(create);
  static GetUserData? _defaultInstance;
}

class GetUserDataResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserDataResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aOM<UserData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userData', protoName: 'userData', subBuilder: UserData.create)
  ;

  GetUserDataResp._() : super();
  factory GetUserDataResp({
    $core.int? rt,
    UserData? userData,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (userData != null) {
      _result.userData = userData;
    }
    return _result;
  }
  factory GetUserDataResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserDataResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserDataResp clone() => GetUserDataResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserDataResp copyWith(void Function(GetUserDataResp) updates) => super.copyWith((message) => updates(message as GetUserDataResp)) as GetUserDataResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserDataResp create() => GetUserDataResp._();
  GetUserDataResp createEmptyInstance() => create();
  static $pb.PbList<GetUserDataResp> createRepeated() => $pb.PbList<GetUserDataResp>();
  @$core.pragma('dart2js:noInline')
  static GetUserDataResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserDataResp>(create);
  static GetUserDataResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  UserData get userData => $_getN(1);
  @$pb.TagNumber(2)
  set userData(UserData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserData() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserData() => clearField(2);
  @$pb.TagNumber(2)
  UserData ensureUserData() => $_ensure(1);
}

class LoadAssets extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadAssets', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LoadAssets._() : super();
  factory LoadAssets() => create();
  factory LoadAssets.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadAssets.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadAssets clone() => LoadAssets()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadAssets copyWith(void Function(LoadAssets) updates) => super.copyWith((message) => updates(message as LoadAssets)) as LoadAssets; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadAssets create() => LoadAssets._();
  LoadAssets createEmptyInstance() => create();
  static $pb.PbList<LoadAssets> createRepeated() => $pb.PbList<LoadAssets>();
  @$core.pragma('dart2js:noInline')
  static LoadAssets getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadAssets>(create);
  static LoadAssets? _defaultInstance;
}

class LoadAssetsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadAssetsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..pc<Application>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applications', $pb.PbFieldType.PM, subBuilder: Application.create)
  ;

  LoadAssetsResp._() : super();
  factory LoadAssetsResp({
    $core.int? rt,
    $core.Iterable<Application>? applications,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (applications != null) {
      _result.applications.addAll(applications);
    }
    return _result;
  }
  factory LoadAssetsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadAssetsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadAssetsResp clone() => LoadAssetsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadAssetsResp copyWith(void Function(LoadAssetsResp) updates) => super.copyWith((message) => updates(message as LoadAssetsResp)) as LoadAssetsResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadAssetsResp create() => LoadAssetsResp._();
  LoadAssetsResp createEmptyInstance() => create();
  static $pb.PbList<LoadAssetsResp> createRepeated() => $pb.PbList<LoadAssetsResp>();
  @$core.pragma('dart2js:noInline')
  static LoadAssetsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadAssetsResp>(create);
  static LoadAssetsResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Application> get applications => $_getList(1);
}

class InAppPurchase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InAppPurchase', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'purchaseID', protoName: 'purchaseID')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'productID', protoName: 'productID')
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receipt')
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..aQS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionDate', protoName: 'transactionDate')
  ;

  InAppPurchase._() : super();
  factory InAppPurchase({
    $core.String? purchaseID,
    $core.String? productID,
    $core.String? receipt,
    $core.String? source,
    $core.String? transactionDate,
  }) {
    final _result = create();
    if (purchaseID != null) {
      _result.purchaseID = purchaseID;
    }
    if (productID != null) {
      _result.productID = productID;
    }
    if (receipt != null) {
      _result.receipt = receipt;
    }
    if (source != null) {
      _result.source = source;
    }
    if (transactionDate != null) {
      _result.transactionDate = transactionDate;
    }
    return _result;
  }
  factory InAppPurchase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InAppPurchase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InAppPurchase clone() => InAppPurchase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InAppPurchase copyWith(void Function(InAppPurchase) updates) => super.copyWith((message) => updates(message as InAppPurchase)) as InAppPurchase; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InAppPurchase create() => InAppPurchase._();
  InAppPurchase createEmptyInstance() => create();
  static $pb.PbList<InAppPurchase> createRepeated() => $pb.PbList<InAppPurchase>();
  @$core.pragma('dart2js:noInline')
  static InAppPurchase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InAppPurchase>(create);
  static InAppPurchase? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get purchaseID => $_getSZ(0);
  @$pb.TagNumber(1)
  set purchaseID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPurchaseID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPurchaseID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get productID => $_getSZ(1);
  @$pb.TagNumber(2)
  set productID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProductID() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get receipt => $_getSZ(2);
  @$pb.TagNumber(3)
  set receipt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceipt() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceipt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get source => $_getSZ(3);
  @$pb.TagNumber(4)
  set source($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get transactionDate => $_getSZ(4);
  @$pb.TagNumber(5)
  set transactionDate($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTransactionDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearTransactionDate() => clearField(5);
}

class InAppPurchaseResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InAppPurchaseResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rt', $pb.PbFieldType.Q3)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isValid', protoName: 'isValid')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score')
  ;

  InAppPurchaseResp._() : super();
  factory InAppPurchaseResp({
    $core.int? rt,
    $core.bool? isValid,
    $fixnum.Int64? score,
  }) {
    final _result = create();
    if (rt != null) {
      _result.rt = rt;
    }
    if (isValid != null) {
      _result.isValid = isValid;
    }
    if (score != null) {
      _result.score = score;
    }
    return _result;
  }
  factory InAppPurchaseResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InAppPurchaseResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InAppPurchaseResp clone() => InAppPurchaseResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InAppPurchaseResp copyWith(void Function(InAppPurchaseResp) updates) => super.copyWith((message) => updates(message as InAppPurchaseResp)) as InAppPurchaseResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InAppPurchaseResp create() => InAppPurchaseResp._();
  InAppPurchaseResp createEmptyInstance() => create();
  static $pb.PbList<InAppPurchaseResp> createRepeated() => $pb.PbList<InAppPurchaseResp>();
  @$core.pragma('dart2js:noInline')
  static InAppPurchaseResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InAppPurchaseResp>(create);
  static InAppPurchaseResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rt => $_getIZ(0);
  @$pb.TagNumber(1)
  set rt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRt() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isValid => $_getBF(1);
  @$pb.TagNumber(2)
  set isValid($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsValid() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsValid() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get score => $_getI64(2);
  @$pb.TagNumber(3)
  set score($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearScore() => clearField(3);
}

class Playload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Playload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aQS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
  ;

  Playload._() : super();
  factory Playload({
    $core.String? msg,
  }) {
    final _result = create();
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory Playload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Playload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Playload clone() => Playload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Playload copyWith(void Function(Playload) updates) => super.copyWith((message) => updates(message as Playload)) as Playload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Playload create() => Playload._();
  Playload createEmptyInstance() => create();
  static $pb.PbList<Playload> createRepeated() => $pb.PbList<Playload>();
  @$core.pragma('dart2js:noInline')
  static Playload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Playload>(create);
  static Playload? _defaultInstance;

  @$pb.TagNumber(9)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(9)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(9)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(9)
  void clearMsg() => clearField(9);
}

class SharedData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SharedData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.Q6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iv', $pb.PbFieldType.QY)
  ;

  SharedData._() : super();
  factory SharedData({
    $fixnum.Int64? id,
    $core.String? name,
    $core.List<$core.int>? key,
    $core.List<$core.int>? iv,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (key != null) {
      _result.key = key;
    }
    if (iv != null) {
      _result.iv = iv;
    }
    return _result;
  }
  factory SharedData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SharedData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SharedData clone() => SharedData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SharedData copyWith(void Function(SharedData) updates) => super.copyWith((message) => updates(message as SharedData)) as SharedData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SharedData create() => SharedData._();
  SharedData createEmptyInstance() => create();
  static $pb.PbList<SharedData> createRepeated() => $pb.PbList<SharedData>();
  @$core.pragma('dart2js:noInline')
  static SharedData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SharedData>(create);
  static SharedData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get key => $_getN(2);
  @$pb.TagNumber(3)
  set key($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get iv => $_getN(3);
  @$pb.TagNumber(4)
  set iv($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIv() => $_has(3);
  @$pb.TagNumber(4)
  void clearIv() => clearField(4);
}

