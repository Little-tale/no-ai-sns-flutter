part of 'calculator_bloc.dart';

// MARK: UI EVENT 정의
sealed class CalculatorEvent {
  const CalculatorEvent();
}

final class CalculatorLeftChanged extends CalculatorEvent {
  const CalculatorLeftChanged(this.value);

  final String value;
}

final class CalculatorRightChanged extends CalculatorEvent {
  const CalculatorRightChanged(this.value);

  final String value;
}

final class CalculatorOperationChanged extends CalculatorEvent {
  const CalculatorOperationChanged(this.operation);

  final Operation operation;
}

final class CalculatorCalculatePressed extends CalculatorEvent {
  const CalculatorCalculatePressed();
}

final class CalculatorClearPressed extends CalculatorEvent {
  const CalculatorClearPressed();
}
