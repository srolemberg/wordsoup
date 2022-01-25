import 'package:wordsoup/page/model/word.dart';

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
}
