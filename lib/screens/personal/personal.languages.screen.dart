import 'package:devdate/screens/personal/data/persona_constants.dart';
import 'package:flutter/material.dart';

class PersonalLanguagesScreen extends StatefulWidget {
  const PersonalLanguagesScreen({super.key});

  @override
  State<PersonalLanguagesScreen> createState() =>
      _PersonalLanguagesScreenState();
}

class _PersonalLanguagesScreenState extends State<PersonalLanguagesScreen> {
  List<String> selectedItems = [];

  Icon getIcon(String area) {
    return Icon(areas[area] ?? Icons.code);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hablanos de que tipo de programador eres'),
            const SizedBox(height: 8),
            DropdownMenu<String>(
              onSelected: (value) {
                setState(() {
                  if (!selectedItems.contains(value)) {
                    selectedItems.add(value!);
                  }
                });
              },
              dropdownMenuEntries: areas.keys
                  .map((area) => DropdownMenuEntry(
                        value: area,
                        label: area,
                      ))
                  .toList(),
            ),
            DropdownMenu<String>(
              onSelected: (value) {
                setState(() {
                  if (!selectedItems.contains(value)) {
                    selectedItems.add(value!);
                  }
                });
              },
              dropdownMenuEntries: List.generate(
                languages.length,
                (index) => DropdownMenuEntry(
                  value: languages[index],
                  label: languages[index],
                ),
              ),
            ),
            DropdownMenu<String>(
              onSelected: (value) {
                setState(() {
                  if (!selectedItems.contains(value)) {
                    selectedItems.add(value!);
                  }
                });
              },
              dropdownMenuEntries: List.generate(
                tools.length,
                (index) => DropdownMenuEntry(
                  value: tools[index],
                  label: tools[index],
                ),
              ),
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: selectedItems
                  .map((item) => Chip(
                        avatar: areas.containsKey(item) ? getIcon(item) : null,
                        label: Text(item),
                        deleteIcon: const Icon(Icons.close),
                        onDeleted: () {
                          setState(() {
                            selectedItems.removeWhere((entry) => entry == item);
                          });
                        },
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
