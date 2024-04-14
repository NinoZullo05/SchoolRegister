  import 'package:mysql1/mysql1.dart';

  class Mysql {
    Mysql();

    Future<MySqlConnection> getConnection() async {
      var settings = ConnectionSettings(
          host: "sql7.freesqldatabase.com",
          port: 3306,
          user: "sql7627209",
          password: "kXWJaEy9G5",
          db: "sql7627209"
          );

      return await MySqlConnection.connect(settings);
    }
  }