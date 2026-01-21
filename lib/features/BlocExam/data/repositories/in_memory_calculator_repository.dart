import '../../domain/entities/calculation.dart';
import '../../domain/entities/operation.dart';
import '../../domain/repositories/calculator_repository.dart';

class InMemoryCalculatorRepository implements CalculatorRepository {
  @override
  double calculate(Calculation calculation) {
    switch (calculation.operation) {
      case Operation.add:
        return calculation.left + calculation.right;
      case Operation.subtract:
        return calculation.left - calculation.right;
      case Operation.multiply:
        return calculation.left * calculation.right;
      case Operation.divide:
        return calculation.right == 0 ? double.nan : calculation.left / calculation.right;
    }
  }
}
