// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizationViewModel extends AuthorizationViewModel {
  @override
  final String? emailError;
  @override
  final String? passwordError;
  @override
  final Function() onBackPressed;
  @override
  final Function({required String? email, required String? password})
      onLogInPressed;
  @override
  final bool isLoading;

  factory _$AuthorizationViewModel(
          [void Function(AuthorizationViewModelBuilder)? updates]) =>
      (new AuthorizationViewModelBuilder()..update(updates))._build();

  _$AuthorizationViewModel._(
      {this.emailError,
      this.passwordError,
      required this.onBackPressed,
      required this.onLogInPressed,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onBackPressed, r'AuthorizationViewModel', 'onBackPressed');
    BuiltValueNullFieldError.checkNotNull(
        onLogInPressed, r'AuthorizationViewModel', 'onLogInPressed');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'AuthorizationViewModel', 'isLoading');
  }

  @override
  AuthorizationViewModel rebuild(
          void Function(AuthorizationViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationViewModelBuilder toBuilder() =>
      new AuthorizationViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is AuthorizationViewModel &&
        emailError == other.emailError &&
        passwordError == other.passwordError &&
        onBackPressed == _$dynamicOther.onBackPressed &&
        onLogInPressed == _$dynamicOther.onLogInPressed &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, emailError.hashCode), passwordError.hashCode),
                onBackPressed.hashCode),
            onLogInPressed.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorizationViewModel')
          ..add('emailError', emailError)
          ..add('passwordError', passwordError)
          ..add('onBackPressed', onBackPressed)
          ..add('onLogInPressed', onLogInPressed)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AuthorizationViewModelBuilder
    implements Builder<AuthorizationViewModel, AuthorizationViewModelBuilder> {
  _$AuthorizationViewModel? _$v;

  String? _emailError;
  String? get emailError => _$this._emailError;
  set emailError(String? emailError) => _$this._emailError = emailError;

  String? _passwordError;
  String? get passwordError => _$this._passwordError;
  set passwordError(String? passwordError) =>
      _$this._passwordError = passwordError;

  Function()? _onBackPressed;
  Function()? get onBackPressed => _$this._onBackPressed;
  set onBackPressed(Function()? onBackPressed) =>
      _$this._onBackPressed = onBackPressed;

  Function({required String? email, required String? password})?
      _onLogInPressed;
  Function({required String? email, required String? password})?
      get onLogInPressed => _$this._onLogInPressed;
  set onLogInPressed(
          Function({required String? email, required String? password})?
              onLogInPressed) =>
      _$this._onLogInPressed = onLogInPressed;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  AuthorizationViewModelBuilder();

  AuthorizationViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emailError = $v.emailError;
      _passwordError = $v.passwordError;
      _onBackPressed = $v.onBackPressed;
      _onLogInPressed = $v.onLogInPressed;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizationViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizationViewModel;
  }

  @override
  void update(void Function(AuthorizationViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizationViewModel build() => _build();

  _$AuthorizationViewModel _build() {
    final _$result = _$v ??
        new _$AuthorizationViewModel._(
            emailError: emailError,
            passwordError: passwordError,
            onBackPressed: BuiltValueNullFieldError.checkNotNull(
                onBackPressed, r'AuthorizationViewModel', 'onBackPressed'),
            onLogInPressed: BuiltValueNullFieldError.checkNotNull(
                onLogInPressed, r'AuthorizationViewModel', 'onLogInPressed'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'AuthorizationViewModel', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
