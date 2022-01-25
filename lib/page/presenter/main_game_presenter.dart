import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wordsoup/page/contract/main_game_contract.dart';
import 'package:wordsoup/page/data/main_game_data.dart';
import 'package:wordsoup/page/model/word.dart';

class MainGamePresenter extends MainGameContractPresenter {
  final MainGameContractView _view;

  final MainGameData _mainGameData;

  MainGamePresenter(this._view, this._mainGameData);

  @override
  void sum(String aaa, String bbb) {
    _view.result(aaa + bbb);
  }

  @override
  Future<void> defineNewWordOfDay() async {
    await loadAsset("cinco").then((value) => {
          _mainGameData.fiveWords = setLists(value),
        });
    await loadAsset("seis").then((value) => {
          _mainGameData.sixWords = setLists(value),
        });
    await loadAsset("sete").then((value) => {
          _mainGameData.sevenWords = setLists(value),
        });
  }

  List<Word> setLists(String raw) {
    Iterable iterable = json.decode(raw);
    return List<Word>.from(iterable.map((model) => Word.fromJson(model)));
  }

  Future<String> loadAsset(String filename) async {
    return await rootBundle.loadString('assets/$filename.json');
  }
}
