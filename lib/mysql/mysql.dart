import 'package:mysql1/mysql1.dart';

class Mysql {
  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
        host: "10.0.97.243",
        port: 2500,
        user: "nino",
        password: "1234",
        db: "registro"
    );

    return await MySqlConnection.connect(settings);
  }
}