class Rectangle {
  double _width = 0;
  double _height = 0;
  double _area = 0;

  set width(double value) {
    _width = value;
    _updateArea();
  }

  set height(double value) {
    _height = value;
    _updateArea();
  }

  void _updateArea() {
    _area = _width * _height;
  }

  double get area => _area;
  double get width => _width;
  double get height => _height;
}