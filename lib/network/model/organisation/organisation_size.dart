import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organisation_size.g.dart';

/// A given organisation's size.
/// Defines the maximum number of employees.
@BuiltValueEnum(wireName: 'organizationSize')
class OrganisationSize extends EnumClass {
  static Serializer<OrganisationSize> get serializer =>
      _$organisationSizeSerializer;

  /// For organisations with less than 10 employees
  @BuiltValueEnumConst(wireName: 'SMALL')
  static const OrganisationSize small = _$small;

  /// For organisations with more than 10 but less than 50 employees
  @BuiltValueEnumConst(wireName: 'MIDDLE')
  static const OrganisationSize medium = _$medium;

  /// For organisations with more than 50 employees
  @BuiltValueEnumConst(wireName: 'LARGE')
  static const OrganisationSize large = _$large;

  const OrganisationSize._(String name) : super(name);

  static BuiltSet<OrganisationSize> get values => _$values;
  static OrganisationSize valueOf(String name) => _$valueOf(name);
}
