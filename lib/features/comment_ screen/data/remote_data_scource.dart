import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import 'model.dart';

class ApiServer {
  String baseUrl =
      'https://jsonplaceholder.typicode.com/posts';

  Future<Either<Failure, List<TodoModel>>> getData() async {
    var response = await http.get(Uri.parse(baseUrl));
    if (kDebugMode) {
      print(response.body);
    }

    if (response.statusCode == 200) {
      var todoDecode = jsonDecode(response.body) as List;

      List<TodoModel> todoList =
          todoDecode.map<TodoModel>((e) => TodoModel.fromJson(e)).toList();
      if (kDebugMode) {
        print(response.body);
      }

      return right(todoList);
    } else {
      return left(
          const ServerFailure(errorMessage: ' no inter net please try again'));
    }
  }
}
