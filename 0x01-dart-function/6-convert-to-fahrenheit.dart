List<double> convertToF(List<double> temperaturesInC) {
  List<double> result = temperaturesInC.map((c) => c * 9 / 5 + 32).toList();
  return result.map((r) => double.parse(r.toStringAsFixed(2))).toList();
}
