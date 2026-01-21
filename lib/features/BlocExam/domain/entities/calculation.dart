import 'operation.dart';

class Calculation {
  const Calculation({
    required this.left,
    required this.right,
    required this.operation,
  });

  final double left;
  final double right;
  final Operation operation;
}
