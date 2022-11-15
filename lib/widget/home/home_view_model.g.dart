// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeViewModel extends HomeViewModel {
  @override
  final UserModel? user;
  @override
  final Function() onLogOutPressed;
  @override
  final Function() onUpdatePressed;

  factory _$HomeViewModel([void Function(HomeViewModelBuilder)? updates]) =>
      (new HomeViewModelBuilder()..update(updates))._build();

  _$HomeViewModel._(
      {this.user, required this.onLogOutPressed, required this.onUpdatePressed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onLogOutPressed, r'HomeViewModel', 'onLogOutPressed');
    BuiltValueNullFieldError.checkNotNull(
        onUpdatePressed, r'HomeViewModel', 'onUpdatePressed');
  }

  @override
  HomeViewModel rebuild(void Function(HomeViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeViewModelBuilder toBuilder() => new HomeViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is HomeViewModel &&
        user == other.user &&
        onLogOutPressed == _$dynamicOther.onLogOutPressed &&
        onUpdatePressed == _$dynamicOther.onUpdatePressed;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, user.hashCode), onLogOutPressed.hashCode),
        onUpdatePressed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeViewModel')
          ..add('user', user)
          ..add('onLogOutPressed', onLogOutPressed)
          ..add('onUpdatePressed', onUpdatePressed))
        .toString();
  }
}

class HomeViewModelBuilder
    implements Builder<HomeViewModel, HomeViewModelBuilder> {
  _$HomeViewModel? _$v;

  UserModelBuilder? _user;
  UserModelBuilder get user => _$this._user ??= new UserModelBuilder();
  set user(UserModelBuilder? user) => _$this._user = user;

  Function()? _onLogOutPressed;
  Function()? get onLogOutPressed => _$this._onLogOutPressed;
  set onLogOutPressed(Function()? onLogOutPressed) =>
      _$this._onLogOutPressed = onLogOutPressed;

  Function()? _onUpdatePressed;
  Function()? get onUpdatePressed => _$this._onUpdatePressed;
  set onUpdatePressed(Function()? onUpdatePressed) =>
      _$this._onUpdatePressed = onUpdatePressed;

  HomeViewModelBuilder();

  HomeViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _onLogOutPressed = $v.onLogOutPressed;
      _onUpdatePressed = $v.onUpdatePressed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeViewModel;
  }

  @override
  void update(void Function(HomeViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeViewModel build() => _build();

  _$HomeViewModel _build() {
    _$HomeViewModel _$result;
    try {
      _$result = _$v ??
          new _$HomeViewModel._(
              user: _user?.build(),
              onLogOutPressed: BuiltValueNullFieldError.checkNotNull(
                  onLogOutPressed, r'HomeViewModel', 'onLogOutPressed'),
              onUpdatePressed: BuiltValueNullFieldError.checkNotNull(
                  onUpdatePressed, r'HomeViewModel', 'onUpdatePressed'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HomeViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
