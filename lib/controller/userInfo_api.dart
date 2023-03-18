import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/userInfoModel.dart';
import '../global.dart' as global;


class GetUserInfo{

  getUserInfoAPI() async{
    String url = 'https://randomuser.me/api/?results';
    int limit = 100;
    var response = await http.get(Uri.parse('$url=$limit'));
    if(response.statusCode == 200){
     UserInfoModel userInfoModel =  UserInfoModel.fromJson(jsonDecode(response.body));
     global.userInfoStream.add(userInfoModel);
    }

  }


}