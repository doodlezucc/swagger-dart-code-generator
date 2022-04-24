import 'package:json_annotation/json_annotation.dart';

part 'swagger_schema.g2.dart';

@JsonSerializable()
class SwaggerSchema {
  SwaggerSchema({
    this.type = '',
    this.originalRef = '',
    this.enumValuesObj = const [],
    this.properties = const {},
    this.items,
    this.ref = '',
    this.defaultValue,
    this.format = '',
    this.schema,
    this.oneOf = const [],
    this.anyOf = const [],
    this.allOf = const [],
    this.required = const [],
    this.description = '',
  });

  @JsonKey(name: 'type', defaultValue: '')
  String type;

  @JsonKey(name: 'format', defaultValue: '')
  String format;

  @JsonKey(name: 'default', defaultValue: null)
  Object? defaultValue;

  @JsonKey(name: 'originalRef', defaultValue: '')
  String originalRef;

  @JsonKey(name: '\$ref', defaultValue: '')
  String ref;

  @JsonKey(name: 'description', defaultValue: '')
  String description;

  @JsonKey(name: 'enum', defaultValue: [])
  List<Object?> enumValuesObj;

  List<String> get enumValues =>
      enumValuesObj.map((e) => e.toString()).toList();

  bool get isEnum => enumValuesObj.isNotEmpty;

  bool get isListEnum => type == 'array' && items != null && items!.isEnum;

  @JsonKey(name: 'required', defaultValue: [])
  List<String> required;

  @JsonKey(name: 'items')
  SwaggerSchema? items;

  @JsonKey(name: 'properties', defaultValue: {})
  Map<String, SwaggerSchema> properties;

  @JsonKey(name: 'schema')
  SwaggerSchema? schema;

  @JsonKey(name: 'oneOf', defaultValue: [])
  List<SwaggerSchema> oneOf;

  @JsonKey(name: 'anyOf', defaultValue: [])
  List<SwaggerSchema> anyOf;

  @JsonKey(name: 'allOf', defaultValue: [])
  List<SwaggerSchema> allOf;

  factory SwaggerSchema.fromJson(Map<String, dynamic> json) =>
      _$SwaggerSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$SwaggerSchemaToJson(this);
}
