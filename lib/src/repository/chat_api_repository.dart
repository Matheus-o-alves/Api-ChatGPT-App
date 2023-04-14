import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiRepository {
  Future<String> generateResponse(String prompt) async {
    var url = Uri.https("api.openai.com", "/v1/completions");

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          "Authorization": "Bearer 'Adicione sua API Key'"
        },
        body: json.encode({
          "model": "text-davinci-003",
          "prompt": prompt,
          'temperature': 0,
          'max_tokens': 2000,
          'top_p': 1,
          'frequency_penalty': 0.0,
          'presence_penalty': 0.0,
        }),
      );

      Map<String, dynamic> newresponse = jsonDecode(response.body);
      var convertMenssage = newresponse['choices'][0]['text'];
      convertMenssage = utf8.decode(convertMenssage.runes.toList());

      return convertMenssage;
    } catch (e) {
      return 'Ocorreu um erro';
    }
  }
}
