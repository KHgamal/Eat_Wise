import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key, required this.onContinue});
   final VoidCallback? onContinue;

  @override
  Widget build(BuildContext context) {
        return ElevatedButton(
      onPressed: onContinue,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
      ),
      child: const Text("Continue"),
    );
  }
}