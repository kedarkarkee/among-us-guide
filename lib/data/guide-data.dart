import '../model/guide.dart';
import './guides.dart';

class GuideData {
  GuideData._internal();
  static GuideData _guideData = GuideData._internal();
  factory GuideData() {
    return _guideData;
  }
  final List<Guide> _guides = [guide1, guide2, guide3, guide4, guide5];
  List<Guide> get guides => _guides;
  // Guide get controlGuide => guide1;
  // Guide get tipsGuide => guide2;
  // Guide get detectiveGuide => guide3;
  // Guide get imposterGuide => guide4;
  // Guide get crewGuide => guide5;
  Guide getGuide(int index) {
    return _guides[index];
  }
}
