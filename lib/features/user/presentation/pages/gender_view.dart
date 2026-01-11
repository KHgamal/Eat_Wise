import 'package:eat_wise/core/common/styles/media.dart';
import 'package:eat_wise/core/common/widgets/snack_bar.dart';
import 'package:eat_wise/features/user/domain/entities/user_info.dart';
import 'package:eat_wise/features/user/presentation/widgets/gender_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/common/widgets/continue_button.dart';
import '../Controller/bloc/user_bloc.dart';
import '../Controller/bloc/user_event.dart';
import '../Controller/bloc/user_state.dart';
import '../Controller/cubit/on_boarding_cubit.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  final nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 22),
            const Text(
              "Enter your name",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'full name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const Spacer(flex: 2),
            const Text(
              "Choose Your Gender",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      child: GenderContainer(
                        text: "Male",
                        icon: Assets.assetsImagesMale,
                        isActive: state.gender == Gender.male,
                        onTap: () {
                          context.read<UserBloc>().add(
                            GenderSelected(Gender.male),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: GenderContainer(
                        text: "Female",
                        icon: Assets.assetsImagesFemale,
                        isActive: state.gender == Gender.female,
                        onTap: () {
                          context.read<UserBloc>().add(
                            GenderSelected(Gender.female),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
            const Spacer(flex: 2),
            ContinueButton(
              onContinue: () {
                if (_formKey.currentState!.validate()) {
                  if (context.read<UserBloc>().state.gender == null) {
                   showValidationError(context, "Please select your gender");
                    return;
                  }
                  context.read<UserBloc>().add(
                    NameSelected(nameController.text),
                  );
                  context.read<OnboardingCubit>().next();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
