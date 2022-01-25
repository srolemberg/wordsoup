import 'package:wordsoup/page/model/word.dart';

class MainGameData {
  Word? wordOfTheDay;

  String rawCinco;

  String rawSeis;

  String rawSete;

  List<Word> fiveWords;

  List<Word> sixWords;

  List<Word> sevenWords;

  MainGameData({
    this.wordOfTheDay,
    this.rawCinco = "",
    this.rawSeis = "",
    this.rawSete = "",
    this.fiveWords = const <Word>[],
    this.sixWords = const <Word>[],
    this.sevenWords = const <Word>[],
  });
}
