import 'package:registro/mysql/mysql.dart';

List<String> Voti() {
  return List<String>.empty();
}
void Stampavoti() {
  List<String> voti = Voti();
  print(voti);
}



Future<bool> _login(String username, String password) async {
  var db = Mysql();
  final conn = await db.getConnection();
  String query = "SELECT * FROM accounts WHERE nome_utente = '$username' AND pass = '$password'";
  var results = await conn.query(query);
  if (results.isEmpty) {
    return false;
  } else {
    return true;
  }
}