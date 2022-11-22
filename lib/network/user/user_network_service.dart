import 'package:logotime/network/network_request.dart';
import 'package:logotime/network/network_result.dart';
import 'package:logotime/network/network_service.dart';
import 'package:logotime/network/request_model.dart';
import 'package:logotime/network/user/request_model/log_in/log_in_request_model.dart';
import 'package:logotime/network/user/token/token_service.dart';

abstract class IUserNetworkService {
  Future<INetworkResult<dynamic>> logIn({
    required String? email,
    required String? password,
  });

  Future<INetworkResult> getUserInfo(String id);

  Future<INetworkResult>? getCurrentUserInfo();
}

class UserNetworkService implements IUserNetworkService {
  static const String route = '/user';

  final DioService _dio;
  final ITokenService _tokenService;

  UserNetworkService({
    required DioService dio,
    required ITokenService tokenService,
  })  : _dio = dio,
        _tokenService = tokenService;

  @override
  Future<INetworkResult> logIn({
    required String? email,
    required String? password,
  }) async {
    final response = await _dio.makeRequest(
      NetworkRequest<LogInRequestModel>(
        path: '$route/login',
        methodType: HttpMethod.postMethod,
        data: LogInRequestModel(
          ((model) => model
            ..email = email
            ..password = password),
        ),
      ),
    );
    if (response is Success) {
      _tokenService.token = response.data['token'];
    }
    return response;
  }

  @override
  Future<INetworkResult>? getCurrentUserInfo() {
    final currentUser = _tokenService.currentUser;
    if (currentUser != null) {
      return getUserInfo(currentUser.id!);
    }
    return null;
  }

  @override
  Future<INetworkResult> getUserInfo(String id) {
    return _dio.makeRequest(
      NetworkRequest<EmptyRequestModel>(
          path: '$route/$id', methodType: HttpMethod.getMethod),
    );
  }
}
