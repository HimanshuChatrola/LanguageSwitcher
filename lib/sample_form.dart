import 'package:flutter/material.dart';
import 'package:languageswitcher/language_buttons.dart';

import 'generated/l10n.dart';

class SampleFormPage extends StatefulWidget {
  const SampleFormPage({super.key});

  @override
  _SampleFormPageState createState() => _SampleFormPageState();
}

class _SampleFormPageState extends State<SampleFormPage> {
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _yourNameController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LanguageButtons()));
          },
        ),
        title: Text(S.of(context).sampleFormPageText),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _surnameController,
                decoration: InputDecoration(labelText: S.of(context).surnameText),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _yourNameController,
                decoration: InputDecoration(labelText: S.of(context).yourNameText),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _fatherNameController,
                decoration: InputDecoration(labelText: S.of(context).fatherNameText),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _mobileNumberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: S.of(context).mobileNumberText),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                  _submitForm();
                },
                child: Text(S.of(context).submitText),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    // Access the entered values
    String surname = _surnameController.text;
    String yourName = _yourNameController.text;
    String fatherName = _fatherNameController.text;
    String mobileNumber = _mobileNumberController.text;

    // TODO: Add your logic to handle the form submission
    // For now, let's print the entered values
    print('Surname: $surname');
    print('Your Name: $yourName');
    print('Father\'s Name: $fatherName');
    print('Mobile Number: $mobileNumber');

    // You can add further validation or send data to a server/database.
  }
}
