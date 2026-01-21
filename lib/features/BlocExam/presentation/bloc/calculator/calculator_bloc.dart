import 'package:bloc/bloc.dart';
import 'package:no_ai_sns/features/BlocExam/presentation/bloc/calculator/calculator_state.gen.dart';

import '../../../domain/entities/calculation.dart';
import '../../../domain/entities/operation.dart';
import '../../../domain/usecases/calculate_result.dart';

part 'calculator_event.dart';

// MARK: View Model
class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc({required CalculateResult calculateResult})
    : _calculateResult = calculateResult,
      super(
        const CalculatorState(
          leftInput: '',
          rightInput: '',
          operation: Operation.add,
          result: null,
          errorMessage: null,
        ),
      ) {
    on<CalculatorLeftChanged>(_onLeftChanged);
    on<CalculatorRightChanged>(_onRightChanged);
    on<CalculatorOperationChanged>(_onOperationChanged);
    on<CalculatorCalculatePressed>(_onCalculatePressed);
    on<CalculatorClearPressed>(_onClearPressed);
  }

  final CalculateResult _calculateResult;

  void _onLeftChanged(
    CalculatorLeftChanged event,
    Emitter<CalculatorState> emit,
  ) {
    emit(state.copyWith(leftInput: event.value, errorMessage: null));
  }

  void _onRightChanged(
    CalculatorRightChanged event,
    Emitter<CalculatorState> emit,
  ) {
    emit(state.copyWith(rightInput: event.value, errorMessage: null));
  }

  void _onOperationChanged(
    CalculatorOperationChanged event,
    Emitter<CalculatorState> emit,
  ) {
    emit(state.copyWith(operation: event.operation));
  }

  void _onCalculatePressed(
    CalculatorCalculatePressed event,
    Emitter<CalculatorState> emit,
  ) {
    final double? left = double.tryParse(state.leftInput);
    final double? right = double.tryParse(state.rightInput);
    if (left == null || right == null) {
      emit(state.copyWith(result: null, errorMessage: 'Enter valid numbers.'));
      return;
    }

    final Calculation calculation = Calculation(
      left: left,
      right: right,
      operation: state.operation,
    );
    final double result = _calculateResult(calculation);
    if (result.isNaN) {
      emit(
        state.copyWith(result: null, errorMessage: 'Cannot divide by zero.'),
      );
      return;
    }

    emit(state.copyWith(result: result, errorMessage: null));
  }

  void _onClearPressed(
    CalculatorClearPressed event,
    Emitter<CalculatorState> emit,
  ) {
    emit(
      const CalculatorState(
        leftInput: '',
        rightInput: '',
        operation: Operation.add,
        result: null,
        errorMessage: null,
      ),
    );
  }
}
