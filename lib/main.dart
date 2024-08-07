import 'package:flutter/material.dart';
import 'pages/home/config.dart';
import 'package:get/get.dart';
import 'utils.dart';
import 'package:logger/logger.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'routes.dart';

String? tokenData;
Logger logger = Logger();

void main() async {
  // read env file
  await dotenv.load(fileName: ".env");
  // login
  WidgetsFlutterBinding.ensureInitialized();
  tokenData = await getLocalToken();
  logger.i("token: $tokenData");

  runApp(GetMaterialApp(
    title: "Application",
    initialRoute: Routes.home,
    initialBinding: GlobalBinding(),
    getPages: getPages,
    theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFFF4F2FA),
    ),
  ));
}
