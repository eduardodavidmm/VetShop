import 'package:flutter/material.dart';
import 'package:vetshop/src/api/environment.dart';
import 'package:vetshop/src/models/response_api.dart';
import 'package:vetshop/src/models/user.dart';


class UsersProvider {
  String _url = Environment.API_DELIVERY;
  String _api = '/api/users';

  BuildContext context;

  Future init (BuildContext context) {
    this.context = context;
  }

  Future<ResponseApi> create(User user) {
    Uri uri = Uri.http(_url, '$_api/create');
  }

  
}