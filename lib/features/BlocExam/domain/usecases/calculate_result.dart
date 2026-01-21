import '../entities/calculation.dart';
import '../repositories/calculator_repository.dart';

class CalculateResult {
  CalculateResult(this._repository);

  final CalculatorRepository _repository;

  double call(Calculation calculation) {
    return _repository.calculate(calculation);
  }
}
