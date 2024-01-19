import 'package:flutter/material.dart';

class SetParameterScreen extends StatelessWidget {
  const SetParameterScreen({super.key, required this.params});
  final Map<String, dynamic> params;

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    );

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              params['study_type'].toString().toUpperCase(),
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            const Text(
              'Set Parameters',
              style: TextStyle(color: Colors.white),
            ),
            Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              color: Colors.white,
              child: Row(
                children: [
                  const Text(
                    'Period',
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                      child: TextFormField(
                    initialValue: params['default_value'].toString(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      constraints: const BoxConstraints(maxWidth: 20),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
