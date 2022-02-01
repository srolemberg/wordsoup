import 'package:wordsoup/page/model/word.dart';
import 'package:wordsoup/page/model/word_of_day.dart';
import 'package:wordsoup/widget/base/character_box_widget.dart';

class MainGameData {
  String wordOfTheDayUnescaped;

  String wordOfTheDayNoAccentDiacriticUpperCase;

  List<Word> fiveWords;

  List<Word> sixWords;

  List<Word> sevenWords;

  List<WordOfDay> wordsOfDays;

  MainGameData({
    this.wordOfTheDayUnescaped = "",
    this.wordOfTheDayNoAccentDiacriticUpperCase = "",
    this.fiveWords = const <Word>[],
    this.sixWords = const <Word>[],
    this.sevenWords = const <Word>[],
    this.wordsOfDays = const <WordOfDay>[],
  });

  List<BoxStatusEnum> empty = const <BoxStatusEnum>[
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];

  List<BoxStatusEnum> success = const <BoxStatusEnum>[
    BoxStatusEnum.success,
    BoxStatusEnum.success,
    BoxStatusEnum.success,
    BoxStatusEnum.success,
    BoxStatusEnum.success,
    BoxStatusEnum.success,
    BoxStatusEnum.success,
    BoxStatusEnum.success,
    BoxStatusEnum.success,
  ];

  List<Word> getAll() {
    return fiveWords + sixWords + sevenWords;
  }

  bool isFinish(List<BoxStatusEnum> list) {
    for (var element in list) {
      if (element != BoxStatusEnum.success) {
        return false;
      }
    }

    return true;
  }
}
