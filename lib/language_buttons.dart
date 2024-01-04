import 'package:flutter/material.dart';
import 'package:languageswitcher/LanguageChangeProvider.dart';
import 'package:languageswitcher/sample_form.dart';
import 'generated/l10n.dart';
import 'package:provider/provider.dart';

class LanguageButtons extends StatefulWidget {
  const LanguageButtons({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LanguageButtonsState createState() => _LanguageButtonsState();
}

class _LanguageButtonsState extends State<LanguageButtons> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).languageButtonText),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                S.of(context).helloWorldText,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                    context.read<LanguageChangeProvider>().changeLocale("en");
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SampleFormPage()));
                },
                child: Text(S.of(context).englishText),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<LanguageChangeProvider>().changeLocale("gu");
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SampleFormPage()));
                },
                child: Text(S.of(context).gujaratiText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
