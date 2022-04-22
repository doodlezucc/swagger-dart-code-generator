// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwaggerSchema _$SwaggerSchemaFromJson(Map<String, dynamic> json) =>
    SwaggerSchema(
      type: json['type'] as String? ?? '',
      originalRef: json['originalRef'] as String? ?? '',
      enumValuesObj: json['enum'] as List<dynamic>? ?? [],
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, SwaggerSchema.fromJson(e as Map<String, dynamic>)),
          ) ??
          {},
      items: json['items'] == null
          ? null
          : SwaggerSchema.fromJson(json['items'] as Map<String, dynamic>),
      ref: json[r'$ref'] as String? ?? '',
      defaultValue: json['default'],
      format: json['format'] as String? ?? '',
      isNullable: json['nullable'] as bool? ?? false,
      schema: json['schema'] == null
          ? null
          : SwaggerSchema.fromJson(json['schema'] as Map<String, dynamic>),
      oneOf: (json['oneOf'] as List<dynamic>?)
              ?.map((e) => SwaggerSchema.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      anyOf: (json['anyOf'] as List<dynamic>?)
              ?.map((e) => SwaggerSchema.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$SwaggerSchemaToJson(SwaggerSchema instance) =>
    <String, dynamic>{
      'type': instance.type,
      'format': instance.format,
      'default': instance.defaultValue,
      'originalRef': instance.originalRef,
      r'$ref': instance.ref,
      'description': instance.description,
      'enum': instance.enumValuesObj,
      'items': instance.items,
      'properties': instance.properties,
      'nullable': instance.isNullable,
      'schema': instance.schema,
      'oneOf': instance.oneOf,
      'anyOf': instance.anyOf,
    };
