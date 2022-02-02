import 'package:wordsoup/widget/base/character_box_widget.dart';

abstract class MainGameContractView {
  void initializedValues(int lengthOfWoD);

  void setBoxesAndContinue(List<BoxStatusEnum> status);

  void setBoxesAndFinish(List<BoxStatusEnum> status);

  void onGetTimeSuccess();

  void onTimeGameStateChecked();

  void startFirstGameEver();

  void startNewGameOfDay();
}

abstract class MainGameContractPresenter {
  void initialize();

  void checkStringWithWoD(String value);

  void getTimeFromApi();

  void checkTimeGameState();

  void checkStringGameState();
}
