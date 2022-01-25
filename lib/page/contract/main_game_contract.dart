import 'package:wordsoup/widget/base/character_box_widget.dart';

abstract class MainGameContractView {
  void initializedValues(int lengthOfWoD);

  void setBoxesAndContinue(List<BoxStatusEnum> status);

  void setBoxesAndFinish(List<BoxStatusEnum> status);
}

abstract class MainGameContractPresenter {
  void defineNewWordOfDay();

  void checkStringWithWoD(String value);
}
