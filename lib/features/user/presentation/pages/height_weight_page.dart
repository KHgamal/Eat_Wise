import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widgets/continue_button.dart';
import '../Controller/bloc/user_bloc.dart';
import '../Controller/bloc/user_event.dart';
import '../Controller/cubit/on_boarding_cubit.dart';
import '../widgets/number_picker_card.dart';

class HeightWeightPage extends StatelessWidget {
  const HeightWeightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child:
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Height & Weight",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: NumberPickerCard(
                      label: "Height",
                      unit: "cm",
                      min: 100,
                      max: 220,
                      currentValue: 170,
                      onChanged: (v) =>
                          context.read<UserBloc>().add(HeightChanged(v)),
                    ),
                  ),

                  const SizedBox(width: 16),
                  Expanded(
                    child: NumberPickerCard(
                      label: "Weight",
                      unit: "kg",
                      min: 30,
                      max: 150,
                      currentValue: 70,
                      onChanged: (v) =>
                          context.read<UserBloc>().add(WeightChanged(v)),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              const Text(
                "When Were You Born ?",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime(2000, 1, 1),
                  maximumDate: DateTime.now(),
                  minimumYear: 1950,
                  onDateTimeChanged: (newDate) {
                    context.read<UserBloc>().add(BirthDateSelected(newDate));
                  },
                ),
              ),

              const Spacer(),

              ContinueButton(
                onContinue: () {
                  if (context.read<UserBloc>().state.birthDate == null) {
                   context.read<UserBloc>().add(BirthDateSelected( DateTime(2000, 1, 1)));
                  }
                  context.read<OnboardingCubit>().next();
                },
              ),
            ],
      ),
    );
  }
}
