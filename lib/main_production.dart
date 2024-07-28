import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/dependency_injection/dependency_injection.dart';
import 'doc_app.dart';

void main() async{
  setupGitIt();

await ScreenUtil.ensureScreenSize();
  runApp(const DocApp());
}
