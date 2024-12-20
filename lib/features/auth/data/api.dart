import "package:interview/providers/global_config.dart";
import './model.dart';
import 'package:logger/logger.dart';
import 'package:interview/utils/send.dart';

final logger = Logger();

Future<bool> loginEmailPwd(LoginEmailPwd loginData) async {
  String url = "$baseUrl/login/email_password";

  final send = SendRequest(url);

  final Map<String, dynamic> nativeData = loginData.toJson();
  final RequestResponse requestResponse = await send.post(nativeData);

  final rawResponse = requestResponse.rawResponse;
  final requestStatus = requestResponse.status;

  if (requestStatus && rawResponse != null) {
    logger.i("login接口 $url 创建数据[成功]! 数据:${nativeData} 原生响应:$rawResponse");
    return true;
  } else {
    logger.w("login接口 $url 创建数据[失败]! 数据:${nativeData} 原生响应:$rawResponse");
    return false;
  }
}