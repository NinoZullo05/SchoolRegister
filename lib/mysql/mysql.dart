import 'package:mysql1/mysql1.dart';

class Mysql {
  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
        host: "abarbati.com",
        port: 3306,
        user: "tommaso.cantoni",
        password: "i^nq@2xSUCqq8a",
        db: "registro"
    );

    return await MySqlConnection.connect(settings);
  }
}