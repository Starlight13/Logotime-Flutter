// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationState extends RegistrationState {
  @override
  final UserModel? owner;
  @override
  final OrganisationSize? organisationSize;
  @override
  final RulesModel organisationRules;
  @override
  final String? organisationName;
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
  @override
  final String? organisationNameError;
  @override
  final String? organisationSizeError;
  @override
  final String? maxApplicationsError;
  @override
  final bool isLoading;

  factory _$RegistrationState(
          [void Function(RegistrationStateBuilder)? updates]) =>
      (new RegistrationStateBuilder()..update(updates))._build();

  _$RegistrationState._(
      {this.owner,
      this.organisationSize,
      required this.organisationRules,
      this.organisationName,
      this.emailError,
      this.passwordError,
      this.phoneNumberError,
      this.firstNameError,
      this.lastNameError,
      this.organisationNameError,
      this.organisationSizeError,
      this.maxApplicationsError,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organisationRules, r'RegistrationState', 'organisationRules');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'RegistrationState', 'isLoading');
  }

  @override
  RegistrationState rebuild(void Function(RegistrationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationStateBuilder toBuilder() =>
      new RegistrationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationState &&
        owner == other.owner &&
        organisationSize == other.organisationSize &&
        organisationRules == other.organisationRules &&
        organisationName == other.organisationName &&
        emailError == other.emailError &&
        passwordError == other.passwordError &&
        phoneNumberError == other.phoneNumberError &&
        firstNameError == other.firstNameError &&
        lastNameError == other.lastNameError &&
        organisationNameError == other.organisationNameError &&
        organisationSizeError == other.organisationSizeError &&
        maxApplicationsError == other.maxApplicationsError &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, owner.hashCode),
                                                    organisationSize.hashCode),
                                                organisationRules.hashCode),
                                            organisationName.hashCode),
                                        emailError.hashCode),
                                    passwordError.hashCode),
                                phoneNumberError.hashCode),
                            firstNameError.hashCode),
                        lastNameError.hashCode),
                    organisationNameError.hashCode),
                organisationSizeError.hashCode),
            maxApplicationsError.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationState')
          ..add('owner', owner)
          ..add('organisationSize', organisationSize)
          ..add('organisationRules', organisationRules)
          ..add('organisationName', organisationName)
          ..add('emailError', emailError)
          ..add('passwordError', passwordError)
          ..add('phoneNumberError', phoneNumberError)
          ..add('firstNameError', firstNameError)
          ..add('lastNameError', lastNameError)
          ..add('organisationNameError', organisationNameError)
          ..add('organisationSizeError', organisationSizeError)
          ..add('maxApplicationsError', maxApplicationsError)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class RegistrationStateBuilder
    implements Builder<RegistrationState, RegistrationStateBuilder> {
  _$RegistrationState? _$v;

  UserModelBuilder? _owner;
  UserModelBuilder get owner => _$this._owner ??= new UserModelBuilder();
  set owner(UserModelBuilder? owner) => _$this._owner = owner;

  OrganisationSize? _organisationSize;
  OrganisationSize? get organisationSize => _$this._organisationSize;
  set organisationSize(OrganisationSize? organisationSize) =>
      _$this._organisationSize = organisationSize;

  RulesModelBuilder? _organisationRules;
  RulesModelBuilder get organisationRules =>
      _$this._organisationRules ??= new RulesModelBuilder();
  set organisationRules(RulesModelBuilder? organisationRules) =>
      _$this._organisationRules = organisationRules;

  String? _organisationName;
  String? get organisationName => _$this._organisationName;
  set organisationName(String? organisationName) =>
      _$this._organisationName = organisationName;

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

  String? _organisationNameError;
  String? get organisationNameError => _$this._organisationNameError;
  set organisationNameError(String? organisationNameError) =>
      _$this._organisationNameError = organisationNameError;

  String? _organisationSizeError;
  String? get organisationSizeError => _$this._organisationSizeError;
  set organisationSizeError(String? organisationSizeError) =>
      _$this._organisationSizeError = organisationSizeError;

  String? _maxApplicationsError;
  String? get maxApplicationsError => _$this._maxApplicationsError;
  set maxApplicationsError(String? maxApplicationsError) =>
      _$this._maxApplicationsError = maxApplicationsError;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  RegistrationStateBuilder();

  RegistrationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner?.toBuilder();
      _organisationSize = $v.organisationSize;
      _organisationRules = $v.organisationRules.toBuilder();
      _organisationName = $v.organisationName;
      _emailError = $v.emailError;
      _passwordError = $v.passwordError;
      _phoneNumberError = $v.phoneNumberError;
      _firstNameError = $v.firstNameError;
      _lastNameError = $v.lastNameError;
      _organisationNameError = $v.organisationNameError;
      _organisationSizeError = $v.organisationSizeError;
      _maxApplicationsError = $v.maxApplicationsError;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistrationState;
  }

  @override
  void update(void Function(RegistrationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationState build() => _build();

  _$RegistrationState _build() {
    _$RegistrationState _$result;
    try {
      _$result = _$v ??
          new _$RegistrationState._(
              owner: _owner?.build(),
              organisationSize: organisationSize,
              organisationRules: organisationRules.build(),
              organisationName: organisationName,
              emailError: emailError,
              passwordError: passwordError,
              phoneNumberError: phoneNumberError,
              firstNameError: firstNameError,
              lastNameError: lastNameError,
              organisationNameError: organisationNameError,
              organisationSizeError: organisationSizeError,
              maxApplicationsError: maxApplicationsError,
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'RegistrationState', 'isLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'organisationRules';
        organisationRules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegistrationState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
