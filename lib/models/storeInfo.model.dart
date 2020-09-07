import 'package:games_end/models/store.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'storeInfo.model.g.dart';

@JsonSerializable()
class StoreInfo {
  final int id;
  final String url_en, url_ru;
  final Store store;

  StoreInfo(this.id, this.url_en, this.url_ru, this.store);

  factory StoreInfo.fromJson(Map<String, dynamic> json) =>
      _$StoreInfoFromJson(json);
  Map<String, dynamic> toJson() => _$StoreInfoToJson(this);
}
