library app_test_indigy_company;

import 'dart:async';

import 'package:app_test_indigy_company/model/userInfoModel.dart';



StreamController<UserInfoModel> userInfoStream = StreamController<UserInfoModel>.broadcast();