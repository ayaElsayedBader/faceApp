import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../../../core/api.dart';
import '../../../../core/error/failure.dart';
import '../model_message/model_message.dart';

class ApiServerMessage {
  Future<Either<Failure, List<ModelMessage>>> getDataMessage() async {
    var response = await http.get(Uri.parse(ApiApp.api));
    print(response.body);
    if (response.statusCode == 200) {
      var message = jsonDecode(response.body) as List;

      final List<ModelMessage> modelList =
          message.map((e) => ModelMessage.fromJson(e)).toList();
      return right(modelList);
    } else {
      return left(ServerFailure(errorMessage: 'NOT DATA'));
    }
  }
}
