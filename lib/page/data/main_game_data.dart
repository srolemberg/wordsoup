import 'package:wordsoup/page/model/word.dart';
import 'package:wordsoup/widget/base/character_box_widget.dart';

class MainGameData {
  String wordOfTheDayClean;

  List<Word> fiveWords;

  List<Word> sixWords;

  List<Word> sevenWords;

  MainGameData({
    this.wordOfTheDayClean = "",
    this.fiveWords = const <Word>[],
    this.sixWords = const <Word>[],
    this.sevenWords = const <Word>[],
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
}
