import 'dart:convert';

import 'package:http/http.dart' as http;

class Utils {
  Future <List<dynamic>> consultadata() async{
  final uri = Uri.parse('https://kiarnet-api.onrender.com/crm/consulta');
  final resposta = await http.get(uri);
  return (json.decode(resposta.body));

}
}
