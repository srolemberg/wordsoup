import 'package:json_annotation/json_annotation.dart';

part 'word.g.dart';

@JsonSerializable()
class Word {
  @JsonKey(name: 'v')
  String value;

  Word({
    required this.value,
  });

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);

  Map<String, dynamic> toJson() => _$WordToJson(this);

  @override
  String toString() {
    return 'Word{value: $value}';
  }
}
