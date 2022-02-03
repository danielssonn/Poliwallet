import 'package:json_annotation/json_annotation.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'os_collections.g.dart';

@JsonSerializable(explicitToJson: true)
class OS_Collections extends ChangeNotifier {
  OS_Collections({
    required this.name,
    this.description,
    required this.slug,
    required this.created_date,
    this.discord_url,
    this.external_url,
    this.image_url,
  });

  String name;
  String? description;
  String? slug;
  String? created_date;
  String? discord_url;
  String? external_url;
  String? image_url;

  factory OS_Collections.fromJson(Map<String, dynamic> json) =>
      _$OS_CollectionsFromJson(json);
  Map<String, dynamic> toJson() => _$OS_CollectionsToJson(this);
}
