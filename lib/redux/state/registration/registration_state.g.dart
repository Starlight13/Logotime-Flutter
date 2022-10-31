// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationState extends RegistrationState {
  @override
  final UserModel? owner;
  @override
  final OrganisationSize? organisation;
  @override
  final RulesModel? organisationRules;
  @override
  final bool isLoading;

  factory _$RegistrationState(
          [void Function(RegistrationStateBuilder)? updates]) =>
      (new RegistrationStateBuilder()..update(updates))._build();

  _$RegistrationState._(
      {this.owner,
      this.organisation,
      this.organisationRules,
      required this.isLoading})
      : super._() {
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
        organisation == other.organisation &&
        organisationRules == other.organisationRules &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, owner.hashCode), organisation.hashCode),
            organisationRules.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationState')
          ..add('owner', owner)
          ..add('organisation', organisation)
          ..add('organisationRules', organisationRules)
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

  OrganisationSize? _organisation;
  OrganisationSize? get organisation => _$this._organisation;
  set organisation(OrganisationSize? organisation) =>
      _$this._organisation = organisation;

  RulesModelBuilder? _organisationRules;
  RulesModelBuilder get organisationRules =>
      _$this._organisationRules ??= new RulesModelBuilder();
  set organisationRules(RulesModelBuilder? organisationRules) =>
      _$this._organisationRules = organisationRules;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  RegistrationStateBuilder();

  RegistrationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner?.toBuilder();
      _organisation = $v.organisation;
      _organisationRules = $v.organisationRules?.toBuilder();
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
              organisation: organisation,
              organisationRules: _organisationRules?.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'RegistrationState', 'isLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'organisationRules';
        _organisationRules?.build();
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
