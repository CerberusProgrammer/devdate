import 'package:devdate/screens/personal/personal.languages.screen.dart';
import 'package:devdate/widgets/custom.textformfield.dart';
import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Cuentanos sobre ti'),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: '',
                labelText: '',
                keyboardType: TextInputType.name,
                controller: nameController,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const PersonalLanguagesScreen(),
          ),
        ),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
