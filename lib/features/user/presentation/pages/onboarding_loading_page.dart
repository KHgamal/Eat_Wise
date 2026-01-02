import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/user_bloc.dart';
import '../bloc/user_state.dart';

class OnboardingLoadingPage extends StatelessWidget {
  const OnboardingLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state.isSaving) {
              return const Column(mainAxisSize: MainAxisSize.min, children: const [
                CircularProgressIndicator(),
                SizedBox(height: 12),
                Text('Calculating your plan...'),
              ]);
            } else if (state.user != null) {
              return const Column(mainAxisSize: MainAxisSize.min, children: const [
                Icon(Icons.check_circle, size: 96, color: Colors.green),
                SizedBox(height: 12),
                Text('All set!'),
              ]);
            } else if (state.error != null) {
              return Column(mainAxisSize: MainAxisSize.min, children: [
                const Icon(Icons.error, size: 64, color: Colors.red),
                const SizedBox(height: 12),
                Text(state.error!),
              ]);
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
