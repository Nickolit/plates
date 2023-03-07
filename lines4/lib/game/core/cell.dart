import 'package:linez4/game/utils/vector_2i.dart';

class Cell {
  final String imagePath;

  Vector2i get position => _position;
  bool get isSelected => _isSelected;

  Vector2i _position = Vector2i.zero();
  bool _isSelected = false;

  Cell(this.imagePath);

  void moveTo(Vector2i position) {
    _position = position;
  }

  void select(bool value) {
    _isSelected = value;
  }
}
