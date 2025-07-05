import 'package:eat_wise/features/water_track/presentation/provider/water_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showWaterIntakeDialog({required context, required onPressed}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // const Icon(Icons.water_drop, color: Colors.blueAccent, size: 50),
              // const SizedBox(height: 8),
              const Text(
                "Enter the amount :",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextField(
                      controller:
                          Provider.of<WaterProvider>(context).controller,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    'ML',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    onPressed();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
