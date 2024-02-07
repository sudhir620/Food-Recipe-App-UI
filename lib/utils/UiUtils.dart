import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

updateStatusBar(
    {Color statusBg = Colors.white, Brightness statusIcon = Brightness.dark}) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: statusBg, statusBarIconBrightness: statusIcon));
}
