// import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:ppkd_d_3/tugas_11/user.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'penguhini.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE penghuni(id INTEGER PRIMARY KEY, name TEXT, phone TEXT, room TEXT, city TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> registerPenghuni(Penghuni penghuni) async {
    final db = await databaseHelper();
    await db.insert(
      'penghuni',
      penghuni.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // static Future<Penghuni?> loginPenghuni(String email, String password) async {
  //   final db = await databaseHelper();
  //   final List<Map<String, dynamic>> results = await db.query(
  //     'penghuni',
  //     where: 'email = ? AND password = ?',
  //     whereArgs: [email, password],
  //   );

  //   if (results.isNotEmpty) {
  //     return Penghuni.fromMap(results.first);
  //   }
  //   return null;
  // }

  static Future<List<Penghuni>> getAllPenghuni() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('penghuni');
    return results.map((e) => Penghuni.fromMap(e)).toList();
  }
}
