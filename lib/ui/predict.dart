import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> makePredictionRequest(context,List<int> features) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/predict'),  // Replace with your backend server URL
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'features': features,
    }),
  );

  if (response.statusCode == 200) {
    return json.decode(response.body)['prediction'];
  } else {
    throw Exception('Failed to get prediction');
  }
}
