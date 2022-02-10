// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'os_collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OS_Collections _$OS_CollectionsFromJson(Map<String, dynamic> json) {
  return OS_Collections(
    name: json['name'] as String?,
    description: json['description'] as String?,
    slug: json['slug'] as String?,
    created_date: json['created_date'] as String?,
    discord_url: json['discord_url'] as String?,
    external_url: json['external_url'] as String?,
    image_url: json['image_url'] as String?,
  );
}

Map<String, dynamic> _$OS_CollectionsToJson(OS_Collections instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'slug': instance.slug,
      'created_date': instance.created_date,
      'discord_url': instance.discord_url,
      'external_url': instance.external_url,
      'image_url': instance.image_url,
    };
