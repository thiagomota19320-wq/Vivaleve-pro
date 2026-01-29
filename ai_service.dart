import 'package:firebase_functions/firebase_functions.dart';

class AIService {
  final _functions = FirebaseFunctions.instance;

  Future<String> sendMessage(String message) async {
    final callable = _functions.httpsCallable('chatCoach');
    final result = await callable.call({'message': message});
    return result.data['reply'];
  }
}
