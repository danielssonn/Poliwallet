import 'package:json_annotation/json_annotation.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'os_collections.g.dart';

@JsonSerializable(explicitToJson: true)
class OS_Collections extends ChangeNotifier {
  OS_Collections({
    this.name,
    this.description,
    this.slug,
    this.created_date,
    this.discord_url,
    this.external_url,
    this.image_url,
  });

  String? name;
  String? description;
  String? slug;
  String? created_date;
  String? discord_url;
  String? external_url;
  String? image_url;

/*
  factory OS_Collections.fromJson(Map<String, dynamic> json) =>
      _$OS_CollectionsFromJson(json);
  Map<String, dynamic> toJson() => _$OS_CollectionsToJson(this);
*/

  factory OS_Collections.fromJson(Map<String, dynamic> json) => OS_Collections(
        name: json['name'],
        description: json['description'],
        slug: json['slug'],
        created_date: json['created_date'],
        discord_url: json['discord_url'],
        external_url: json['external_url'],
        image_url: json['image_url'],
      );
}
