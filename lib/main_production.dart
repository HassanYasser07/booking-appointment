import 'package:booking_appointment/core/helper/constants.dart';
import 'package:booking_appointment/core/helper/extention.dart';
import 'package:booking_appointment/core/helper/shared_pref_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/dependency_injection/dependency_injection.dart';
import 'doc_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupGitIt();

await ScreenUtil.ensureScreenSize();
await cheekIfLoggedInUser();

  runApp(const DocApp());
}
cheekIfLoggedInUser()async{
  String userToken= await SharedPrefHelper.getSecuredString(SharedPrefKey.userToken);
  if(!userToken.isNullOrEmpty()){
    return isLoggedInUser =true;

  }else{
    isLoggedInUser =false;
  }
}