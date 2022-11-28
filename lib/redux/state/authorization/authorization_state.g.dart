// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizationState extends AuthorizationState {
  @override
  final String? emailError;
  @override
  final String? passwordError;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final bool isLoggedIn;
  @override
  final bool isLoading;

  factory _$AuthorizationState(
          [void Function(AuthorizationStateBuilder)? updates]) =>
      (new AuthorizationStateBuilder()..update(updates))._build();

  _$AuthorizationState._(
      {this.emailError,
      this.passwordError,
      this.email,
      this.password,
      required this.isLoggedIn,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoggedIn, r'AuthorizationState', 'isLoggedIn');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'AuthorizationState', 'isLoading');
  }

  @override
  AuthorizationState rebuild(
          void Function(AuthorizationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationStateBuilder toBuilder() =>
      new AuthorizationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizationState &&
        emailError == other.emailError &&
        passwordError == other.passwordError &&
        email == other.email &&
        password == other.password &&
        isLoggedIn == other.isLoggedIn &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, emailError.hashCode), passwordError.hashCode),
                    email.hashCode),
                password.hashCode),
            isLoggedIn.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorizationState')
          ..add('emailError', emailError)
          ..add('passwordError', passwordError)
          ..add('email', email)
          ..add('password', password)
          ..add('isLoggedIn', isLoggedIn)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AuthorizationStateBuilder
    implements Builder<AuthorizationState, AuthorizationStateBuilder> {
  _$AuthorizationState? _$v;

  String? _emailError;
  String? get emailError => _$this._emailError;
  set emailError(String? emailError) => _$this._emailError = emailError;

  String? _passwordError;
  String? get passwordError => _$this._passwordError;
  set passwordError(String? passwordError) =>
      _$this._passwordError = passwordError;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _isLoggedIn;
  bool? get isLoggedIn => _$this._isLoggedIn;
  set isLoggedIn(bool? isLoggedIn) => _$this._isLoggedIn = isLoggedIn;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  AuthorizationStateBuilder();

  AuthorizationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emailError = $v.emailError;
      _passwordError = $v.passwordError;
      _email = $v.email;
      _password = $v.password;
      _isLoggedIn = $v.isLoggedIn;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizationState;
  }

  @override
  void update(void Function(AuthorizationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizationState build() => _build();

  _$AuthorizationState _build() {
    final _$result = _$v ??
        new _$AuthorizationState._(
            emailError: emailError,
            passwordError: passwordError,
            email: email,
            password: password,
            isLoggedIn: BuiltValueNullFieldError.checkNotNull(
                isLoggedIn, r'AuthorizationState', 'isLoggedIn'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'AuthorizationState', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
