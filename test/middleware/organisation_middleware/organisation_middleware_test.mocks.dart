// Mocks generated by Mockito 5.3.2 from annotations
// in logotime/test/middleware/organisation_middleware/organisation_middleware_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:logotime/network/network_result.dart' as _i3;
import 'package:logotime/network/organisation/organisation_network_service.dart'
    as _i6;
import 'package:logotime/network/organisation/request_model/create_organisation_request_model.dart'
    as _i7;
import 'package:logotime/redux/state/app/app_state.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:redux/src/store.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAppState_0 extends _i1.SmartFake implements _i2.AppState {
  _FakeAppState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeINetworkResult_1<T> extends _i1.SmartFake
    implements _i3.INetworkResult<T> {
  _FakeINetworkResult_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Store].
///
/// See the documentation for Mockito's code generation for more information.
class MockStore extends _i1.Mock implements _i4.Store<_i2.AppState> {
  @override
  _i4.Reducer<_i2.AppState> get reducer => (super.noSuchMethod(
        Invocation.getter(#reducer),
        returnValue: (
          _i2.AppState state,
          dynamic action,
        ) =>
            _FakeAppState_0(
          this,
          Invocation.getter(#reducer),
        ),
        returnValueForMissingStub: (
          _i2.AppState state,
          dynamic action,
        ) =>
            _FakeAppState_0(
          this,
          Invocation.getter(#reducer),
        ),
      ) as _i4.Reducer<_i2.AppState>);
  @override
  set reducer(_i4.Reducer<_i2.AppState>? _reducer) => super.noSuchMethod(
        Invocation.setter(
          #reducer,
          _reducer,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.AppState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeAppState_0(
          this,
          Invocation.getter(#state),
        ),
        returnValueForMissingStub: _FakeAppState_0(
          this,
          Invocation.getter(#state),
        ),
      ) as _i2.AppState);
  @override
  _i5.Stream<_i2.AppState> get onChange => (super.noSuchMethod(
        Invocation.getter(#onChange),
        returnValue: _i5.Stream<_i2.AppState>.empty(),
        returnValueForMissingStub: _i5.Stream<_i2.AppState>.empty(),
      ) as _i5.Stream<_i2.AppState>);
  @override
  _i5.Future<dynamic> teardown() => (super.noSuchMethod(
        Invocation.method(
          #teardown,
          [],
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
}

/// A class which mocks [IOrganisationNetworkService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIOrganisationNetworkService extends _i1.Mock
    implements _i6.IOrganisationNetworkService {
  @override
  _i5.Future<_i3.INetworkResult<dynamic>> createOrganisation(
          _i7.CreateOrganisationRequestModel? createOrganisationRequestModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #createOrganisation,
          [createOrganisationRequestModel],
        ),
        returnValue: _i5.Future<_i3.INetworkResult<dynamic>>.value(
            _FakeINetworkResult_1<dynamic>(
          this,
          Invocation.method(
            #createOrganisation,
            [createOrganisationRequestModel],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.INetworkResult<dynamic>>.value(
                _FakeINetworkResult_1<dynamic>(
          this,
          Invocation.method(
            #createOrganisation,
            [createOrganisationRequestModel],
          ),
        )),
      ) as _i5.Future<_i3.INetworkResult<dynamic>>);
}