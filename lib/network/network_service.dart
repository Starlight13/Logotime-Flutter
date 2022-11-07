import 'package:dio/dio.dart';
import 'package:logotime/network/network_request.dart';
import 'package:logotime/network/network_result.dart';
import 'package:logotime/network/request_model.dart';

class DioService {
  final String _baseUrl;
  late Dio _dio;
  DioService({required String baseUrl, String? accessToken})
      : _baseUrl = baseUrl {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    if (accessToken != null) _addAuth(accessToken);
  }

  _addAuth(String accessToken) {
    _dio.options.headers['Authorization'] = 'Bearer $accessToken';
  }

  Future<INetworkResult<dynamic>>
      makeRequest<T extends RequestModel, R extends RequestModel>(
    NetworkRequest<R> request,
  ) async {
    try {
      final response = await _dio.request(
        request.path,
        options: Options(method: request.methodType.name.toUpperCase()),
        data: request.data?.toJson(),
      );
      return Success(response.data);
    } on DioError catch (e) {
      if (e.response != null) {
        return Failure.fromJson(e.response?.data);
      } else {
        return Failure(errorCode: 'setting_request_error', message: e.message);
      }
    }
  }
}
