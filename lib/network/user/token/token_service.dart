import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:logotime/network/model/user/user_model.dart';

/// Service for working with access token
abstract class ITokenService {
  /// An access token contained by this service
  String? get token;
  set token(String? token);

  /// Returns current user by decoding the [token]
  UserModel? get currentUser;

  /// Returns `true` if the [token] has expired
  bool? get isExpired;

  /// Return `true` if [token] is not null
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
