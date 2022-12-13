import 'package:built_value/built_value.dart';

part 'authorization_view_model.g.dart';

abstract class AuthorizationViewModel
    implements Built<AuthorizationViewModel, AuthorizationViewModelBuilder> {
  String? get emailError;
  String? get passwordError;
  Function() get onBackPressed;
  Function({
    required String? email,
    required String? password,
  }) get onLogInPressed;
  bool get isLoading;

  AuthorizationViewModel._();

  factory AuthorizationViewModel(
          [void Function(AuthorizationViewModelBuilder) updates]) =
      _$AuthorizationViewModel;
}
