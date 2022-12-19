import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:logotime/network/network_request.dart';
import 'package:logotime/network/network_result.dart';
import 'package:logotime/network/request_model.dart';
import 'package:logotime/network/user/token/token_service.dart';

/// Service for making requests with Dio.
class DioService {
  final String _baseUrl;
  late Dio _dio;
  final ITokenService _tokenService;
  late CookieJar _cookieJar;
  bool _isRefreshingToken = false;

  DioService({
    required String baseUrl,
    String? accessToken,
    required ITokenService tokenService,
  })  : _tokenService = tokenService,
        _baseUrl = baseUrl {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    _cookieJar = CookieJar();

    setToken(accessToken);

    _dio.interceptors.add(CookieManager(_cookieJar));
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (_tokenService.token != null && _requiresToken(options)) {
          options.headers['Authorization'] = tokenService.token;
        }
        return handler.next(options);
      },
      onError: (e, handler) async {
        if (e.response?.statusCode == HttpStatus.unauthorized &&
            (_tokenService.isExpired ?? false) &&
            !_isRefreshingToken) {
          await _refreshToken();
          if (!(_tokenService.isExpired ?? true)) {
            return handler.resolve(await _dio.fetch(e.requestOptions));
          }
          return handler.next(e);
        } else {
          return handler.next(e);
        }
      },
    ));
  }

  Future<void> _refreshToken() async {
    _isRefreshingToken = true;
    try {
      final response = await _dio.get('/user/refresh_token');
      setToken(response.data['token']);
    } on DioError catch (e) {
      log(e.message);
    } finally {
      _isRefreshingToken = false;
    }
  }

  /// Sets access token
  void setToken(String? accessToken) {
    _tokenService.token = accessToken;
  }

  bool _requiresToken(RequestOptions request) {
    switch (request.path) {
      case '/user/password_recovery':
      case '/user/refresh_token':
      case '/user/login':
        return false;
      case '/organization':
        if (request.method == HttpMethod.postMethod.value) {
          return false;
        }
        break;
    }
    return true;
  }

  /// Makes [NetworkRequest.methodType] request to [NetworkRequest.path].
  /// with [NetworkRequest.data].
  ///
  /// Returns [Success] if te request succeeded.
  ///
  /// Returns [Failure] if the request failed.
  Future<INetworkResult<dynamic>> makeRequest<T extends RequestModel>(
    NetworkRequest<T> request,
  ) async {
    try {
      final response = await _dio.request(
        request.path,
        options: Options(
          method: request.methodType.value,
        ),
        data: request.data?.toJson(),
      );
      return Success(response.data);
    } on DioError catch (e) {
      return _handleFailure(e);
    }
  }

  Future<INetworkResult<dynamic>> _handleFailure(DioError e) async {
    if (e.response != null && e.response!.data is Map<String, dynamic>) {
      return Failure.fromJson(e.response?.data);
    } else {
      return Failure(
        errorCode: 'setting_request_error',
        message: e.response?.statusCode == HttpStatus.unauthorized
            ? 'Log in again please'
            : e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
