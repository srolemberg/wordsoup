import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:wordsoup/page/contract/main_game_contract.dart';
import 'package:wordsoup/page/data/main_game_data.dart';
import 'package:wordsoup/page/model/word.dart';

class MainGamePresenter extends MainGameContractPresenter {
  final MainGameContractView _view;

  final MainGameData _mainGameData;

  MainGamePresenter(this._view, this._mainGameData);

  @override
  Future<void> defineNewWordOfDay() async {
    await _loadAsset("cinco").then((value) => {
          _mainGameData.fiveWords = _setLists(value),
        });
    await _loadAsset("seis").then((value) => {
          _mainGameData.sixWords = _setLists(value),
        });
    await _loadAsset("sete").then((value) => {
          _mainGameData.sevenWords = _setLists(value),
        });

    final all = _mainGameData.fiveWords +
        _mainGameData.sixWords +
        _mainGameData.sevenWords;
    final randomNum = Random.secure().nextInt(all.length);
    _mainGameData.wordOfTheDayClean =
        HtmlUnescape().convert(all[randomNum].value);
    print("W+++O+++D: ${_mainGameData.wordOfTheDayClean}");

    _view.initializedValues(_mainGameData.wordOfTheDayClean.length);
  }

  List<Word> _setLists(String raw) {
    Iterable iterable = json.decode(raw);
    return List<Word>.from(iterable.map((model) => Word.fromJson(model)));
  }

  Future<String> _loadAsset(String filename) async {
    return await rootBundle.loadString('assets/$filename.json');
  }
}
