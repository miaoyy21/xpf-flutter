import 'dart:io';
import 'dart:typed_data';
import 'package:bs58/bs58.dart';

import 'package:fixnum/fixnum.dart' as $fix;
import 'package:path_provider/path_provider.dart';

import '../index.dart';

class cached {
  final String id;
  final int accessed;

  cached(this.id, this.accessed);
}

class Cached {
  static final Cached _instance = Cached._internal();

  factory Cached() => _instance;

  final int capacity = 100;
  List<cached> caches = [];
  Set<String> snaps = Set<String>();

  Cached._internal();

  Future<Directory> getDirectory(Uint8List umd5) async {
    final temp = await getTemporaryDirectory();

    final directory = Directory("${temp.path}/${base58.encode(umd5)}");
    final exists = await directory.exists();
    if (!exists) {
      return directory.create(recursive: true);
    }

    return directory;
  }

  // Load User's Temporary Directory Files
  Future<void> load(Uint8List umd5) async {
    caches.clear();
    snaps.clear();

    final directory = await getDirectory(umd5);
    final files = await directory.list().toList();

    files.forEach((src) {
      final id = src.absolute.path.split("/").last;
      final accessed = src.statSync().accessed.millisecondsSinceEpoch;

      caches.add(cached(id, accessed));
      snaps.add(id);
    });

    caches.sort((a, b) => b.accessed.compareTo(a.accessed));
    debugPrint("Load Cached Files ${caches.length}");
  }

  // Cache a File
  Future<void> cache(Uint8List umd5, $fix.Int64 id, Uint8List bytes) async {
    final directory = await getDirectory(umd5);
    final path = "${directory.path}/${id}";

    // Exists
    final exists = await File(path).exists();
    if (exists) return;

    // Cached Privacy
    if (caches.length >= capacity) {
      final removed = caches.removeLast();
      File("${directory.path}/${removed.id}").delete();
      snaps.remove(removed.id);
    }

    final file = await File(path).create();
    await file.writeAsBytes(bytes, flush: true);
    await file.setLastAccessed(DateTime.now());

    caches.insert(0, cached("$id", DateTime.now().millisecondsSinceEpoch));
    snaps.add("$id");
  }

  // Exists
  bool exists($fix.Int64 id) => snaps.contains("$id");

  // Fetch from Cached
  Future<Uint8List> fetch(Uint8List umd5, $fix.Int64 id) async {
    final directory = await getDirectory(umd5);
    return File("${directory.path}/${id}").readAsBytes();
  }
}
