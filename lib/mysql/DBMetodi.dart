import 'package:mysql1/src/single_connection.dart';
import 'Mysql.dart';
import 'Utente.dart';

Future<bool> login(String username, String password) async {
  var db = Mysql();
  final conn = await db.getConnection();
  var results = await conn.query("SELECT * FROM accounts WHERE nome_utente = '$username' AND pass = '$password'");
  if (results.isEmpty) {
    await conn.close();
    return false;
  } else {
    var list = results.toList();
    idAccount_ = list[0][0];
    userName_ = list[0][1];
    password_ = list[0][2];
    results = await conn.query(
        "SELECT * "
            "FROM studenti "
            "INNER JOIN classi ON studenti.id_classe = classi.id_classe "
            "WHERE id_account = '$idAccount_'");
    if(results.isNotEmpty){
      list = results.toList();
      isStudente_ = true;
      idUtente_ = list[0][0];
      nome_ = list[0][1];
      cognome_ = list[0][2];
      dataDiNascita_ = list[0][3];
      idClasse_ = list[0][5];
      classe_ = list[0][8];
    } else {
      results = await conn.query("SELECT * FROM docenti WHERE id_account = '$idAccount_'");
      if(results.isNotEmpty){
        isStudente_ = false;
        idUtente_ = results.toList()[0][0];
        nome_ = list[0][1];
        cognome_ = list[0][2];
        dataDiNascita_ = null;
        classe_ = null;
      } else {
        await conn.close();
        return false;
      }
    }
    await conn.close();
    return true;
  }
}

/*
!ancora da terminare ma già funzionante!
formato:
- int voto, String ("P", "O", "S") tipo
- String descrizione
- (non so che tipo sia, forse String) data (yyyy-mm-gg hh-mm-ss)
- String nome
- String cognome
- String materia
 */
Future<List?> getVoti() async {
  var db = Mysql();
  final conn = await db.getConnection();
  var results = await conn.query(
      "SELECT voto, tipo, descrizione, data_inserimento, nome, cognome, nome_materia "
          "FROM voti "
          "INNER JOIN assegnazioni ON voti.id_assegnazione = assegnazioni.id_assegnazione "
          "INNER JOIN docenti ON assegnazioni.id_docente = docenti.id_docente "
          "INNER JOIN materie ON assegnazioni.id_materia = materie.id_materia "
          "WHERE voti.id_studente = '$idUtente_'");
  return results.toList();
}

void addVoto(int voto, String tipo, DateTime data_inserimento, int id_studente,) async {
  var db = Mysql();
  final conn = await db.getConnection();
  var id_assegnazione = await conn.query(
      "INSERT INTO voti(voto, tipo, descrizione, data_inserimento, id_studente, id_assegnazione)"
          "VALUE ();"
  );
  await conn.query(
      "INSERT INTO voti(voto, tipo, descrizione, data_inserimento, id_studente, id_assegnazione)"
          "VALUE ();"
  );
}

Future<List?> getEventi() async {
  var db = Mysql();
  final conn = await db.getConnection();
  var results = await conn.query(
      "SELECT nome_evento, descrizione, data_inizio, data_fine, nome_classe "
          "FROM eventi "
          "INNER JOIN classi ON eventi.id_classe = classi.id_classe "
          "WHERE nome_classe = '$classe_'");
  return results.toList();
}

Future<List?> getAnnotazioni() async {
  var db = Mysql();
  final conn = await db.getConnection();
  var results = await conn.query(
      "SELECT tipo, descrizione, data_inserimento, nome, cognome, nome_materia "
          "FROM annotazioni "
          "INNER JOIN assegnazioni ON annotazioni.id_assegnazione = assegnazioni.id_assegnazione "
          "INNER JOIN docenti ON assegnazioni.id_docente = docenti.id_docente "
          "INNER JOIN materie ON assegnazioni.id_materia = materie.id_materia "
          "WHERE annotazioni.id_studente = '$idUtente_'");
  return results.toList();
}

Future<List?> getAssenze() async {
  var db = Mysql();
  final conn = await db.getConnection();
  var results = await conn.query(
      "SELECT giustificata, data_inizio, data_fine "
          "FROM assenze "
          "WHERE assenze.id_studente = '$idUtente_'");
  return results.toList();
}

Future<List?> getCompiti() async {
  var db = Mysql();
  final conn = await db.getConnection();
  var results = await conn.query(
      "SELECT scadenza, descrizione, nome, cognome, nome_materia "
          "FROM compiti "
          "INNER JOIN assegnazioni ON compiti.id_assegnazione = assegnazioni.id_assegnazione "
          "INNER JOIN classi ON assegnazioni.id_classe = classi.id_classe "
          "INNER JOIN docenti ON assegnazioni.id_docente = docenti.id_docente "
          "INNER JOIN materie ON assegnazioni.id_materia = materie.id_materia "
          "WHERE assegnazioni.id_classe = '$idClasse_'");
  return results.toList();
}

Future<List?> getStudenti() async {
  var db = Mysql();
  final conn = await db.getConnection();
  var results = await conn.query(
      "SELECT id_studente, nome, cognome "
          "FROM studenti "
          "WHERE .id_classe = '$idClasse_'");
  return results.toList();
}