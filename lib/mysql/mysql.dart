import 'package:mysql1/mysql1.dart';

class Mysql {
  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
        host: "roberto.galileo.local",
        port: 3306,
        user: "nino",
        password: "1234",
        db: "registro"
    );

    return await MySqlConnection.connect(settings);
  }
}