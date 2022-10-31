// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserModel> _$userModelSerializer = new _$UserModelSerializer();

class _$UserModelSerializer implements StructuredSerializer<UserModel> {
  @override
  final Iterable<Type> types = const [UserModel, _$UserModel];
  @override
  final String wireName = 'user';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organizationId;
    if (value != null) {
      result
        ..add('organizationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creationDate;
    if (value != null) {
      result
        ..add('creationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userRole;
    if (value != null) {
      result
        ..add('userRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserRole)));
    }
    return result;
  }

  @override
  UserModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organizationId':
          result.organizationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'userRole':
          result.userRole = serializers.deserialize(value,
              specifiedType: const FullType(UserRole)) as UserRole?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserModel extends UserModel {
  @override
  final String? id;
  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? organizationId;
  @override
  final DateTime? creationDate;
  @override
  final bool? isActive;
  @override
  final UserRole? userRole;

  factory _$UserModel([void Function(UserModelBuilder)? updates]) =>
      (new UserModelBuilder()..update(updates))._build();

  _$UserModel._(
      {this.id,
      this.lastName,
      this.firstName,
      this.email,
      this.phoneNumber,
      this.organizationId,
      this.creationDate,
      this.isActive,
      this.userRole})
      : super._();

  @override
  UserModel rebuild(void Function(UserModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserModelBuilder toBuilder() => new UserModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserModel &&
        id == other.id &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        organizationId == other.organizationId &&
        creationDate == other.creationDate &&
        isActive == other.isActive &&
        userRole == other.userRole;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), lastName.hashCode),
                                firstName.hashCode),
                            email.hashCode),
                        phoneNumber.hashCode),
                    organizationId.hashCode),
                creationDate.hashCode),
            isActive.hashCode),
        userRole.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserModel')
          ..add('id', id)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('organizationId', organizationId)
          ..add('creationDate', creationDate)
          ..add('isActive', isActive)
          ..add('userRole', userRole))
        .toString();
  }
}

class UserModelBuilder implements Builder<UserModel, UserModelBuilder> {
  _$UserModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _organizationId;
  String? get organizationId => _$this._organizationId;
  set organizationId(String? organizationId) =>
      _$this._organizationId = organizationId;

  DateTime? _creationDate;
  DateTime? get creationDate => _$this._creationDate;
  set creationDate(DateTime? creationDate) =>
      _$this._creationDate = creationDate;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  UserRole? _userRole;
  UserRole? get userRole => _$this._userRole;
  set userRole(UserRole? userRole) => _$this._userRole = userRole;

  UserModelBuilder();

  UserModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _organizationId = $v.organizationId;
      _creationDate = $v.creationDate;
      _isActive = $v.isActive;
      _userRole = $v.userRole;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserModel;
  }

  @override
  void update(void Function(UserModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserModel build() => _build();

  _$UserModel _build() {
    final _$result = _$v ??
        new _$UserModel._(
            id: id,
            lastName: lastName,
            firstName: firstName,
            email: email,
            phoneNumber: phoneNumber,
            organizationId: organizationId,
            creationDate: creationDate,
            isActive: isActive,
            userRole: userRole);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
