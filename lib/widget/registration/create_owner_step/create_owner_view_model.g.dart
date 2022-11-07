// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_owner_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOwnerViewModel extends CreateOwnerViewModel {
  @override
  final Function(UserModel) onCreateOwnerNextStep;
  @override
  final Function() onBackButtonPress;
  @override
  final String? emailError;
  @override
  final String? passwordError;
  @override
  final String? phoneNumberError;
  @override
  final String? firstNameError;
  @override
  final String? lastNameError;

  factory _$CreateOwnerViewModel(
          [void Function(CreateOwnerViewModelBuilder)? updates]) =>
      (new CreateOwnerViewModelBuilder()..update(updates))._build();

  _$CreateOwnerViewModel._(
      {required this.onCreateOwnerNextStep,
      required this.onBackButtonPress,
      this.emailError,
      this.passwordError,
      this.phoneNumberError,
      this.firstNameError,
      this.lastNameError})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(onCreateOwnerNextStep,
        r'CreateOwnerViewModel', 'onCreateOwnerNextStep');
    BuiltValueNullFieldError.checkNotNull(
        onBackButtonPress, r'CreateOwnerViewModel', 'onBackButtonPress');
  }

  @override
  CreateOwnerViewModel rebuild(
          void Function(CreateOwnerViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOwnerViewModelBuilder toBuilder() =>
      new CreateOwnerViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is CreateOwnerViewModel &&
        onCreateOwnerNextStep == _$dynamicOther.onCreateOwnerNextStep &&
        onBackButtonPress == _$dynamicOther.onBackButtonPress &&
        emailError == other.emailError &&
        passwordError == other.passwordError &&
        phoneNumberError == other.phoneNumberError &&
        firstNameError == other.firstNameError &&
        lastNameError == other.lastNameError;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, onCreateOwnerNextStep.hashCode),
                            onBackButtonPress.hashCode),
                        emailError.hashCode),
                    passwordError.hashCode),
                phoneNumberError.hashCode),
            firstNameError.hashCode),
        lastNameError.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateOwnerViewModel')
          ..add('onCreateOwnerNextStep', onCreateOwnerNextStep)
          ..add('onBackButtonPress', onBackButtonPress)
          ..add('emailError', emailError)
          ..add('passwordError', passwordError)
          ..add('phoneNumberError', phoneNumberError)
          ..add('firstNameError', firstNameError)
          ..add('lastNameError', lastNameError))
        .toString();
  }
}

class CreateOwnerViewModelBuilder
    implements Builder<CreateOwnerViewModel, CreateOwnerViewModelBuilder> {
  _$CreateOwnerViewModel? _$v;

  Function(UserModel)? _onCreateOwnerNextStep;
  Function(UserModel)? get onCreateOwnerNextStep =>
      _$this._onCreateOwnerNextStep;
  set onCreateOwnerNextStep(Function(UserModel)? onCreateOwnerNextStep) =>
      _$this._onCreateOwnerNextStep = onCreateOwnerNextStep;

  Function()? _onBackButtonPress;
  Function()? get onBackButtonPress => _$this._onBackButtonPress;
  set onBackButtonPress(Function()? onBackButtonPress) =>
      _$this._onBackButtonPress = onBackButtonPress;

  String? _emailError;
  String? get emailError => _$this._emailError;
  set emailError(String? emailError) => _$this._emailError = emailError;

  String? _passwordError;
  String? get passwordError => _$this._passwordError;
  set passwordError(String? passwordError) =>
      _$this._passwordError = passwordError;

  String? _phoneNumberError;
  String? get phoneNumberError => _$this._phoneNumberError;
  set phoneNumberError(String? phoneNumberError) =>
      _$this._phoneNumberError = phoneNumberError;

  String? _firstNameError;
  String? get firstNameError => _$this._firstNameError;
  set firstNameError(String? firstNameError) =>
      _$this._firstNameError = firstNameError;

  String? _lastNameError;
  String? get lastNameError => _$this._lastNameError;
  set lastNameError(String? lastNameError) =>
      _$this._lastNameError = lastNameError;

  CreateOwnerViewModelBuilder();

  CreateOwnerViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onCreateOwnerNextStep = $v.onCreateOwnerNextStep;
      _onBackButtonPress = $v.onBackButtonPress;
      _emailError = $v.emailError;
      _passwordError = $v.passwordError;
      _phoneNumberError = $v.phoneNumberError;
      _firstNameError = $v.firstNameError;
      _lastNameError = $v.lastNameError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOwnerViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateOwnerViewModel;
  }

  @override
  void update(void Function(CreateOwnerViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOwnerViewModel build() => _build();

  _$CreateOwnerViewModel _build() {
    final _$result = _$v ??
        new _$CreateOwnerViewModel._(
            onCreateOwnerNextStep: BuiltValueNullFieldError.checkNotNull(
                onCreateOwnerNextStep,
                r'CreateOwnerViewModel',
                'onCreateOwnerNextStep'),
            onBackButtonPress: BuiltValueNullFieldError.checkNotNull(
                onBackButtonPress,
                r'CreateOwnerViewModel',
                'onBackButtonPress'),
            emailError: emailError,
            passwordError: passwordError,
            phoneNumberError: phoneNumberError,
            firstNameError: firstNameError,
            lastNameError: lastNameError);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
