import 'package:wordsoup/widget/base/character_box_widget.dart';

abstract class MainGameContractView {
  void initializedValues(int lengthOfWoD);

  void setBoxes(List<BoxStatusEnum> status);
}

abstract class MainGameContractPresenter {
  void defineNewWordOfDay();
}
