// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/share/http/interceptor/dio_connectivity_request_retrier.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  final DioConnectivityRequestRetrier requestRetrier;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (_shouldRetry(err)) {
      try {
        requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
        debugPrint('RetryOnConnectionChangeInterceptor onError ---->>> ');
      }
    }
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.connectTimeout &&
        err.error != null &&
        err.error is SocketException;
  }
}
