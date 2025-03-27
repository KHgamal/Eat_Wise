import 'dart:io';
import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:eat_wise/core/common/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import '../../domain/entities/meal.dart';
import '../bloc/meal_bloc.dart';
import '../bloc/meal_event.dart';

class MealForm extends StatefulWidget {
  const MealForm({super.key});

  @override
  State<MealForm> createState() => _MealFormState();
}

class _MealFormState extends State<MealForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  int? _calories;
  DateTime _time = DateTime.now();
  File? _photo;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final directory = await getApplicationDocumentsDirectory();
      final file = await File(pickedFile.path).copy(
          '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.jpg');
      setState(() => _photo = file);
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final meal = MealTrack(
        id: DateTime.now().toString(),
        name: _name!,
        calories: _calories!,
        time: _time,
        photoPath: _photo?.path,
      );
      context.read<MealTrackBloc>().add(MealTrackEvent.addMeal(meal));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.h),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter Meal information",
                style: Styles.textStyleBook18
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 22.h,
              ),
              GestureDetector(
                onTap: _pickImage,
                child: (_photo != null)
                    ? Image.file(_photo!, height: 100.h)
                    : Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.msgContainer,
                        ),
                        child: const Icon(Icons.camera_alt_outlined),
                      ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Meal Name',
                ),
                validator: (value) => value!.isEmpty ? 'Enter a name' : null,
                onSaved: (value) => _name = value,
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Calories'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Enter calories' : null,
                onSaved: (value) => _calories = int.parse(value!),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormField(
                readOnly: true,
                onTap: () async {
                  final picked = await showDateTimePicker(
                      context: context, initialDate: _time);
                  if (picked != null) {
                    setState(() => _time = picked);
                  }
                },
                decoration: const InputDecoration(
                  labelText: "Select Date & Time",
                  // hintText: "Pick a date & time",
                  suffixIcon: Icon(Icons.calendar_today),
                  // border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                controller: TextEditingController(
                  text: DateFormat('MMM dd, yyyy - hh:mm a').format(_time),
                ),
              ),
              ElevatedButton(
                onPressed: _submit, // Add delete function here
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.orange,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  side: const BorderSide(color: AppColors.orange),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: const Text("Add Meal"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<DateTime?> showDateTimePicker({
  required BuildContext context,
  required DateTime initialDate,
}) async {
  final date = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
  if (date == null) return null;

  final time = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.fromDateTime(initialDate),
  );
  if (time == null) return null;

  return DateTime(date.year, date.month, date.day, time.hour, time.minute);
}
