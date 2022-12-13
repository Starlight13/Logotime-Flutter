// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final UserModel? user;
  @override
  final bool isLoading;

  factory _$HomeState([void Function(HomeStateBuilder)? updates]) =>
      (new HomeStateBuilder()..update(updates))._build();

  _$HomeState._({this.user, required this.isLoading}) : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, r'HomeState', 'isLoading');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        user == other.user &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeState')
          ..add('user', user)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState? _$v;

  UserModelBuilder? _user;
  UserModelBuilder get user => _$this._user ??= new UserModelBuilder();
  set user(UserModelBuilder? user) => _$this._user = user;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeState build() => _build();

  _$HomeState _build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              user: _user?.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'HomeState', 'isLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
