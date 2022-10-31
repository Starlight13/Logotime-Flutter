// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartViewModel extends StartViewModel {
  @override
  final Function() onLogInPressed;
  @override
  final Function() onCreateOrganisationPressed;

  factory _$StartViewModel([void Function(StartViewModelBuilder)? updates]) =>
      (new StartViewModelBuilder()..update(updates))._build();

  _$StartViewModel._(
      {required this.onLogInPressed, required this.onCreateOrganisationPressed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onLogInPressed, r'StartViewModel', 'onLogInPressed');
    BuiltValueNullFieldError.checkNotNull(onCreateOrganisationPressed,
        r'StartViewModel', 'onCreateOrganisationPressed');
  }

  @override
  StartViewModel rebuild(void Function(StartViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartViewModelBuilder toBuilder() =>
      new StartViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is StartViewModel &&
        onLogInPressed == _$dynamicOther.onLogInPressed &&
        onCreateOrganisationPressed ==
            _$dynamicOther.onCreateOrganisationPressed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, onLogInPressed.hashCode), onCreateOrganisationPressed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartViewModel')
          ..add('onLogInPressed', onLogInPressed)
          ..add('onCreateOrganisationPressed', onCreateOrganisationPressed))
        .toString();
  }
}

class StartViewModelBuilder
    implements Builder<StartViewModel, StartViewModelBuilder> {
  _$StartViewModel? _$v;

  Function()? _onLogInPressed;
  Function()? get onLogInPressed => _$this._onLogInPressed;
  set onLogInPressed(Function()? onLogInPressed) =>
      _$this._onLogInPressed = onLogInPressed;

  Function()? _onCreateOrganisationPressed;
  Function()? get onCreateOrganisationPressed =>
      _$this._onCreateOrganisationPressed;
  set onCreateOrganisationPressed(Function()? onCreateOrganisationPressed) =>
      _$this._onCreateOrganisationPressed = onCreateOrganisationPressed;

  StartViewModelBuilder();

  StartViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onLogInPressed = $v.onLogInPressed;
      _onCreateOrganisationPressed = $v.onCreateOrganisationPressed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartViewModel;
  }

  @override
  void update(void Function(StartViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartViewModel build() => _build();

  _$StartViewModel _build() {
    final _$result = _$v ??
        new _$StartViewModel._(
            onLogInPressed: BuiltValueNullFieldError.checkNotNull(
                onLogInPressed, r'StartViewModel', 'onLogInPressed'),
            onCreateOrganisationPressed: BuiltValueNullFieldError.checkNotNull(
                onCreateOrganisationPressed,
                r'StartViewModel',
                'onCreateOrganisationPressed'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
