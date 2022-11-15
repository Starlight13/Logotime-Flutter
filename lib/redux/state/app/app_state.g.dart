// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final RegistrationState registrationState;
  @override
  final AuthorizationState authorizationState;
  @override
  final HomeState homeState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {required this.registrationState,
      required this.authorizationState,
      required this.homeState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        registrationState, r'AppState', 'registrationState');
    BuiltValueNullFieldError.checkNotNull(
        authorizationState, r'AppState', 'authorizationState');
    BuiltValueNullFieldError.checkNotNull(homeState, r'AppState', 'homeState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        registrationState == other.registrationState &&
        authorizationState == other.authorizationState &&
        homeState == other.homeState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, registrationState.hashCode), authorizationState.hashCode),
        homeState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('registrationState', registrationState)
          ..add('authorizationState', authorizationState)
          ..add('homeState', homeState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  RegistrationStateBuilder? _registrationState;
  RegistrationStateBuilder get registrationState =>
      _$this._registrationState ??= new RegistrationStateBuilder();
  set registrationState(RegistrationStateBuilder? registrationState) =>
      _$this._registrationState = registrationState;

  AuthorizationStateBuilder? _authorizationState;
  AuthorizationStateBuilder get authorizationState =>
      _$this._authorizationState ??= new AuthorizationStateBuilder();
  set authorizationState(AuthorizationStateBuilder? authorizationState) =>
      _$this._authorizationState = authorizationState;

  HomeStateBuilder? _homeState;
  HomeStateBuilder get homeState =>
      _$this._homeState ??= new HomeStateBuilder();
  set homeState(HomeStateBuilder? homeState) => _$this._homeState = homeState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _registrationState = $v.registrationState.toBuilder();
      _authorizationState = $v.authorizationState.toBuilder();
      _homeState = $v.homeState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              registrationState: registrationState.build(),
              authorizationState: authorizationState.build(),
              homeState: homeState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'registrationState';
        registrationState.build();
        _$failedField = 'authorizationState';
        authorizationState.build();
        _$failedField = 'homeState';
        homeState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
