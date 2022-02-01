import 'package:json_annotation/json_annotation.dart';

part 'word_of_day.g.dart';

@JsonSerializable()
class WordOfDay {
  @JsonKey(name: 'i')
  int index;
  @JsonKey(name: 'd')
  String date;

  WordOfDay({
    required this.index,
    required this.date,
  });

  factory WordOfDay.fromJson(Map<String, dynamic> json) => _$WordOfDayFromJson(json);

  Map<String, dynamic> toJson() => _$WordOfDayToJson(this);

  @override
  String toString() {
    return 'Word{index: $index, date: $date}';
  }
}
