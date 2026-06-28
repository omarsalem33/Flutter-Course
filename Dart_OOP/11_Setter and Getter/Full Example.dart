class Calculator {
  double _lastResult = 0;

  // Private helper method
  double _validateNumber(double num) {
    if (num.isNaN || num.isInfinite) {
      print("Warning: Invalid number, using 0");
      return 0;
    }
    return num;
  }

  void add(double a, double b) {
    a = _validateNumber(a);
    b = _validateNumber(b);
    _lastResult = a + b;
    print("Result: $_lastResult");
  }

  void showLastResult() {
    print("Last result was: $_lastResult");
  }
}