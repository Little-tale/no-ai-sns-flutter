import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no_ai_sns/features/BlocExam/presentation/bloc/calculator/calculator_state.gen.dart';

import '../../data/repositories/in_memory_calculator_repository.dart';
import '../../domain/entities/operation.dart';
import '../../domain/usecases/calculate_result.dart';
import '../bloc/calculator/calculator_bloc.dart';

class BlocExamPage extends StatelessWidget {
  const BlocExamPage({super.key});

  static const String routeName = '/bloc-exam';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalculatorBloc(
        calculateResult: CalculateResult(InMemoryCalculatorRepository()),
      ),
      child: const _BlocExamView(),
    );
  }
}

class _BlocExamView extends StatefulWidget {
  const _BlocExamView();

  @override
  State<_BlocExamView> createState() => _BlocExamViewState();
}

class _BlocExamViewState extends State<_BlocExamView> {
  final TextEditingController _leftController = TextEditingController();
  final TextEditingController _rightController = TextEditingController();

  static const _operationLabels = {
    Operation.add: '+',
    Operation.subtract: '-',
    Operation.multiply: 'x',
    Operation.divide: '/',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Calculator')),
      body: BlocConsumer<CalculatorBloc, CalculatorState>(
        listener: (context, state) {
          if (_leftController.text != state.leftInput) {
            _leftController.text = state.leftInput;
          }
          if (_rightController.text != state.rightInput) {
            _rightController.text = state.rightInput;
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _leftController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Left value'),
                  onChanged: (value) {
                    context.read<CalculatorBloc>().add(
                      CalculatorLeftChanged(value),
                    );
                  },
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<Operation>(
                  key: ValueKey(state.operation),
                  initialValue: state.operation,
                  decoration: const InputDecoration(labelText: 'Operation'),
                  items: Operation.values
                      .map(
                        (operation) => DropdownMenuItem(
                          value: operation,
                          child: Text(_operationLabels[operation]!),
                        ),
                      )
                      .toList(),
                  onChanged: (operation) {
                    if (operation == null) {
                      return;
                    }
                    context.read<CalculatorBloc>().add(
                      CalculatorOperationChanged(operation),
                    );
                  },
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _rightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Right value'),
                  onChanged: (value) {
                    context.read<CalculatorBloc>().add(
                      CalculatorRightChanged(value),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<CalculatorBloc>().add(
                            const CalculatorCalculatePressed(),
                          );
                        },
                        child: const Text('Calculate'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    OutlinedButton(
                      onPressed: () {
                        context.read<CalculatorBloc>().add(
                          const CalculatorClearPressed(),
                        );
                      },
                      child: const Text('Clear'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Result: ${state.result?.toString() ?? '-'}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                if (state.errorMessage != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    state.errorMessage!,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _leftController.dispose();
    _rightController.dispose();
    super.dispose();
  }
}
