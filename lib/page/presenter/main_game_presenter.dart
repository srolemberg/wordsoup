import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:archive/archive_io.dart';
import 'package:diacritic/diacritic.dart';
import 'package:flutter/services.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wordsoup/page/contract/main_game_contract.dart';
import 'package:wordsoup/page/data/main_game_data.dart';
import 'package:wordsoup/page/model/word.dart';
import 'package:wordsoup/page/model/word_of_day.dart';
import 'package:wordsoup/page/model/world_time_api.dart';
import 'package:wordsoup/widget/base/character_box_widget.dart';

import '../repository.dart';

class MainGamePresenter extends MainGameContractPresenter {
  final MainGameContractView _view;

  final MainGameData _mainGameData;

  Future<SharedPreferences>? sharedPreferences;

  HtmlUnescape htmlUnescape;

  ZipDecoder zipDecoder;

  RepositoryContract repository;

  MainGamePresenter(
    this._view,
    this._mainGameData,
    this.sharedPreferences,
    this.htmlUnescape,
    this.zipDecoder,
    this.repository,
  );

  @override
  Future<void> initialize() async {
    getTimeFromApi();
  }

  @override
  void getTimeFromApi() {
    repository.fetchTime().then(
          (response) async => {
            if (response.statusCode == HttpStatus.ok)
              {
                _mainGameData.now = WorldTimeApi.fromJson(
                  jsonDecode(
                    response.body,
                  ),
                ),
                await _initializeListsFromAssets(),
                _generateNewWord(_mainGameData.getAll()),
                _mainGameData.wordOfTheDayNoAccentDiacriticUpperCase =
                    removeDiacritics(_mainGameData.wordOfTheDayUnescaped)
                        .toUpperCase(),
                print("NOW: ${_mainGameData.now?.datetime}"),
                print(
                    "WORD OF THE DAY: " + _mainGameData.wordOfTheDayUnescaped),
                print(
                    "WORD OF THE DAY size list: ${_mainGameData.wordsOfDays.length}"),
                _view.initializedValues(
                  _mainGameData.wordOfTheDayUnescaped.length,
                ),
              }
            else
              {
                throw Exception(
                  'Failed to load WorldTimeApi',
                )
              }
          },
        );
  }

  Future<void> _initializeListsFromAssets() async {
    await _loadByteDataZip("assets").then((_) => {});
  }

  void _generateNewWord(List<Word> all) {
    final randomNum = Random.secure().nextInt(all.length);
    _mainGameData.wordOfTheDayUnescaped =
        htmlUnescape.convert(all[randomNum].value);
  }

  List<Word> _setListWords(String raw) {
    Iterable iterable = json.decode(raw);
    return List<Word>.from(iterable.map((model) => Word.fromJson(model)));
  }

  List<WordOfDay> _setListWordOfDays(String raw) {
    Iterable iterable = json.decode(raw);
    return List<WordOfDay>.from(
        iterable.map((model) => WordOfDay.fromJson(model)));
  }

  Future _loadByteDataZip(String filename) async {
    var bytedata = await rootBundle.load('$filename.zip');
    final buffer = bytedata.buffer;

    var decoded = zipDecoder.decodeBytes(buffer.asInt8List());

    for (final file in decoded) {
      if (file.isFile) {
        final data = file.content as List<int>;
        final String json = utf8.decode(data);

        if (file.name == "cinco.json") {
          _mainGameData.fiveWords = _setListWords(json);
        } else if (file.name == "seis.json") {
          _mainGameData.fiveWords = _setListWords(json);
        } else if (file.name == "sete.json") {
          _mainGameData.fiveWords = _setListWords(json);
        } else if (file.name == "wods.json") {
          _mainGameData.wordsOfDays = _setListWordOfDays(json);
        }
      }
    }
  }

  @override
  void checkStringWithWoD(String value) {
    if (value.isNotEmpty &&
        value.length == _mainGameData.wordOfTheDayUnescaped.length) {
      var splitOfUserWord = removeDiacritics(value).toUpperCase().split("");
      var splitOfStoredWord =
          _mainGameData.wordOfTheDayNoAccentDiacriticUpperCase.split("");

      Map<String, int> ocurrencesOfStoredWord =
          _listOfCharsWithOcurrences(splitOfStoredWord);

      List<BoxStatusEnum> statusList = [];

      for (int i = 0; i < splitOfUserWord.length; i++) {
        if (splitOfStoredWord.contains(splitOfUserWord[i])) {
          if (ocurrencesOfStoredWord[splitOfUserWord[i]]! > 0) {
            if (splitOfStoredWord[i] == splitOfUserWord[i]) {
              statusList.add(BoxStatusEnum.success);
            } else {
              statusList.add(BoxStatusEnum.warning);
            }

            ocurrencesOfStoredWord.update(
                splitOfUserWord[i], (value) => value - 1);
          } else {
            statusList.add(BoxStatusEnum.empty);
          }
        } else {
          statusList.add(BoxStatusEnum.empty);
        }
      }

      if (_mainGameData.isFinish(statusList)) {
        _view.setBoxesAndFinish(statusList);
      } else {
        _view.setBoxesAndContinue(statusList);
      }
    }
  }

  Map<String, int> _listOfCharsWithOcurrences(
      List<String> listOfStoredDiacrit) {
    Map<String, int> ocurrences = {};
    for (var element in listOfStoredDiacrit) {
      if (ocurrences.containsKey(element)) {
        ocurrences.update(element, (value) => value + 1);
      } else {
        ocurrences[element] = 1;
      }
    }
    return ocurrences;
  }
}
