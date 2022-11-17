import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:logotime/network/model/user/user_model.dart';

abstract class ITokenService {
  String? get token;
  set token(String? token);

  UserModel? get currentUser;
  bool? get isExpired;
  bool get isLoggedIn;
}

class TokenService implements ITokenService {
  @override
  String? token;

  TokenService({this.token});

  @override
  bool? get isExpired {
    if (token != null) {
      return JwtDecoder.isExpired(token!);
    }
    return null;
  }

  @override
  bool get isLoggedIn => token != null;

  @override
  UserModel? get currentUser {
    if (token != null) {
      return UserModel.fromJson(JwtDecoder.decode(token!));
    }
    return null;
  }
}
