import '../entities/calculation.dart';

abstract class CalculatorRepository {
  double calculate(Calculation calculation);
}
