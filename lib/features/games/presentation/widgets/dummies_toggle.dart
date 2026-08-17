import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/cubit/dummies_cubit.dart';

class DummiesToggle extends StatelessWidget {
  final VoidCallback onToggle;

  const DummiesToggle({
    super.key,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DummiesCubit, bool>(
      builder: (context, isDummiesMode) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Dummies'),
            Switch(
              value: isDummiesMode,
              onChanged: (value) {
                // Update the global state in the Cubit to flip the switch visually
                context.read<DummiesCubit>().toggle();
                
                // Notify the parent widget to handle side effects (e.g., refetching data)
                onToggle();
              },
            ),
          ],
        );
      },
    );
  }
}
