import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/operation.dart';

part 'calculator_state.gen.freezed.dart';

@freezed
sealed class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    required String leftInput,
    required String rightInput,
    required Operation operation,
    double? result,
    String? errorMessage,
  }) = _CalculatorState;
}
