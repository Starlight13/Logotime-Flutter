// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_organisation_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOrganisationViewModel extends CreateOrganisationViewModel {
  @override
  final String? organisationNameError;
  @override
  final String? organisationSizeError;
  @override
  final String? maxApplicationsError;
  @override
  final RulesModel organisationRules;
  @override
  final Function({bool? isAllowed, bool? needApproval})
      onSubstituteMeRuleChanged;
  @override
  final Function({bool? isAllowed, bool? needApproval}) onSwapShiftRuleChanged;
  @override
  final Function({bool? photoRequired, bool? geoRequired}) onCheckInRuleChanged;
  @override
  final Function({required bool isAllowed}) onUnassignedShiftRuleChanged;
  @override
  final Function(
      {String? organisationName,
      OrganisationSize? organisationSize,
      String? maxApplications}) onCreateOrganisationButtonPressed;

  factory _$CreateOrganisationViewModel(
          [void Function(CreateOrganisationViewModelBuilder)? updates]) =>
      (new CreateOrganisationViewModelBuilder()..update(updates))._build();

  _$CreateOrganisationViewModel._(
      {this.organisationNameError,
      this.organisationSizeError,
      this.maxApplicationsError,
      required this.organisationRules,
      required this.onSubstituteMeRuleChanged,
      required this.onSwapShiftRuleChanged,
      required this.onCheckInRuleChanged,
      required this.onUnassignedShiftRuleChanged,
      required this.onCreateOrganisationButtonPressed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organisationRules, r'CreateOrganisationViewModel', 'organisationRules');
    BuiltValueNullFieldError.checkNotNull(onSubstituteMeRuleChanged,
        r'CreateOrganisationViewModel', 'onSubstituteMeRuleChanged');
    BuiltValueNullFieldError.checkNotNull(onSwapShiftRuleChanged,
        r'CreateOrganisationViewModel', 'onSwapShiftRuleChanged');
    BuiltValueNullFieldError.checkNotNull(onCheckInRuleChanged,
        r'CreateOrganisationViewModel', 'onCheckInRuleChanged');
    BuiltValueNullFieldError.checkNotNull(onUnassignedShiftRuleChanged,
        r'CreateOrganisationViewModel', 'onUnassignedShiftRuleChanged');
    BuiltValueNullFieldError.checkNotNull(onCreateOrganisationButtonPressed,
        r'CreateOrganisationViewModel', 'onCreateOrganisationButtonPressed');
  }

  @override
  CreateOrganisationViewModel rebuild(
          void Function(CreateOrganisationViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOrganisationViewModelBuilder toBuilder() =>
      new CreateOrganisationViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is CreateOrganisationViewModel &&
        organisationNameError == other.organisationNameError &&
        organisationSizeError == other.organisationSizeError &&
        maxApplicationsError == other.maxApplicationsError &&
        organisationRules == other.organisationRules &&
        onSubstituteMeRuleChanged == _$dynamicOther.onSubstituteMeRuleChanged &&
        onSwapShiftRuleChanged == _$dynamicOther.onSwapShiftRuleChanged &&
        onCheckInRuleChanged == _$dynamicOther.onCheckInRuleChanged &&
        onUnassignedShiftRuleChanged ==
            _$dynamicOther.onUnassignedShiftRuleChanged &&
        onCreateOrganisationButtonPressed ==
            _$dynamicOther.onCreateOrganisationButtonPressed;
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
                                $jc($jc(0, organisationNameError.hashCode),
                                    organisationSizeError.hashCode),
                                maxApplicationsError.hashCode),
                            organisationRules.hashCode),
                        onSubstituteMeRuleChanged.hashCode),
                    onSwapShiftRuleChanged.hashCode),
                onCheckInRuleChanged.hashCode),
            onUnassignedShiftRuleChanged.hashCode),
        onCreateOrganisationButtonPressed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateOrganisationViewModel')
          ..add('organisationNameError', organisationNameError)
          ..add('organisationSizeError', organisationSizeError)
          ..add('maxApplicationsError', maxApplicationsError)
          ..add('organisationRules', organisationRules)
          ..add('onSubstituteMeRuleChanged', onSubstituteMeRuleChanged)
          ..add('onSwapShiftRuleChanged', onSwapShiftRuleChanged)
          ..add('onCheckInRuleChanged', onCheckInRuleChanged)
          ..add('onUnassignedShiftRuleChanged', onUnassignedShiftRuleChanged)
          ..add('onCreateOrganisationButtonPressed',
              onCreateOrganisationButtonPressed))
        .toString();
  }
}

class CreateOrganisationViewModelBuilder
    implements
        Builder<CreateOrganisationViewModel,
            CreateOrganisationViewModelBuilder> {
  _$CreateOrganisationViewModel? _$v;

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

  RulesModelBuilder? _organisationRules;
  RulesModelBuilder get organisationRules =>
      _$this._organisationRules ??= new RulesModelBuilder();
  set organisationRules(RulesModelBuilder? organisationRules) =>
      _$this._organisationRules = organisationRules;

  Function({bool? isAllowed, bool? needApproval})? _onSubstituteMeRuleChanged;
  Function({bool? isAllowed, bool? needApproval})?
      get onSubstituteMeRuleChanged => _$this._onSubstituteMeRuleChanged;
  set onSubstituteMeRuleChanged(
          Function({bool? isAllowed, bool? needApproval})?
              onSubstituteMeRuleChanged) =>
      _$this._onSubstituteMeRuleChanged = onSubstituteMeRuleChanged;

  Function({bool? isAllowed, bool? needApproval})? _onSwapShiftRuleChanged;
  Function({bool? isAllowed, bool? needApproval})? get onSwapShiftRuleChanged =>
      _$this._onSwapShiftRuleChanged;
  set onSwapShiftRuleChanged(
          Function({bool? isAllowed, bool? needApproval})?
              onSwapShiftRuleChanged) =>
      _$this._onSwapShiftRuleChanged = onSwapShiftRuleChanged;

  Function({bool? photoRequired, bool? geoRequired})? _onCheckInRuleChanged;
  Function({bool? photoRequired, bool? geoRequired})?
      get onCheckInRuleChanged => _$this._onCheckInRuleChanged;
  set onCheckInRuleChanged(
          Function({bool? photoRequired, bool? geoRequired})?
              onCheckInRuleChanged) =>
      _$this._onCheckInRuleChanged = onCheckInRuleChanged;

  Function({required bool isAllowed})? _onUnassignedShiftRuleChanged;
  Function({required bool isAllowed})? get onUnassignedShiftRuleChanged =>
      _$this._onUnassignedShiftRuleChanged;
  set onUnassignedShiftRuleChanged(
          Function({required bool isAllowed})? onUnassignedShiftRuleChanged) =>
      _$this._onUnassignedShiftRuleChanged = onUnassignedShiftRuleChanged;

  Function(
      {String? organisationName,
      OrganisationSize? organisationSize,
      String? maxApplications})? _onCreateOrganisationButtonPressed;
  Function(
          {String? organisationName,
          OrganisationSize? organisationSize,
          String? maxApplications})?
      get onCreateOrganisationButtonPressed =>
          _$this._onCreateOrganisationButtonPressed;
  set onCreateOrganisationButtonPressed(
          Function(
                  {String? organisationName,
                  OrganisationSize? organisationSize,
                  String? maxApplications})?
              onCreateOrganisationButtonPressed) =>
      _$this._onCreateOrganisationButtonPressed =
          onCreateOrganisationButtonPressed;

  CreateOrganisationViewModelBuilder();

  CreateOrganisationViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organisationNameError = $v.organisationNameError;
      _organisationSizeError = $v.organisationSizeError;
      _maxApplicationsError = $v.maxApplicationsError;
      _organisationRules = $v.organisationRules.toBuilder();
      _onSubstituteMeRuleChanged = $v.onSubstituteMeRuleChanged;
      _onSwapShiftRuleChanged = $v.onSwapShiftRuleChanged;
      _onCheckInRuleChanged = $v.onCheckInRuleChanged;
      _onUnassignedShiftRuleChanged = $v.onUnassignedShiftRuleChanged;
      _onCreateOrganisationButtonPressed = $v.onCreateOrganisationButtonPressed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOrganisationViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateOrganisationViewModel;
  }

  @override
  void update(void Function(CreateOrganisationViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOrganisationViewModel build() => _build();

  _$CreateOrganisationViewModel _build() {
    _$CreateOrganisationViewModel _$result;
    try {
      _$result = _$v ??
          new _$CreateOrganisationViewModel._(
              organisationNameError: organisationNameError,
              organisationSizeError: organisationSizeError,
              maxApplicationsError: maxApplicationsError,
              organisationRules: organisationRules.build(),
              onSubstituteMeRuleChanged: BuiltValueNullFieldError.checkNotNull(
                  onSubstituteMeRuleChanged,
                  r'CreateOrganisationViewModel',
                  'onSubstituteMeRuleChanged'),
              onSwapShiftRuleChanged: BuiltValueNullFieldError.checkNotNull(
                  onSwapShiftRuleChanged, r'CreateOrganisationViewModel', 'onSwapShiftRuleChanged'),
              onCheckInRuleChanged: BuiltValueNullFieldError.checkNotNull(
                  onCheckInRuleChanged, r'CreateOrganisationViewModel', 'onCheckInRuleChanged'),
              onUnassignedShiftRuleChanged: BuiltValueNullFieldError.checkNotNull(
                  onUnassignedShiftRuleChanged,
                  r'CreateOrganisationViewModel',
                  'onUnassignedShiftRuleChanged'),
              onCreateOrganisationButtonPressed:
                  BuiltValueNullFieldError.checkNotNull(
                      onCreateOrganisationButtonPressed,
                      r'CreateOrganisationViewModel',
                      'onCreateOrganisationButtonPressed'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organisationRules';
        organisationRules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateOrganisationViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
