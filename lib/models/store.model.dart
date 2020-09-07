import 'package:json_annotation/json_annotation.dart';

part 'store.model.g.dart';

@JsonSerializable()
class Store {
  final int id, games_count;
  final String name, slug, domain, image_background;

  Store(this.id, this.games_count, this.name, this.slug, this.domain,
      this.image_background);

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
  Map<String, dynamic> toJson() => _$StoreToJson(this);
}
