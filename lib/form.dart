import 'package:flutter/material.dart';
import 'package:reg_page2/Modals/entryModals.dart';

String? teamName;
int? teamSize;
int? groupASize;
int? groupBSize;

class RegForm extends StatefulWidget {
  const RegForm({super.key});

  @override
  State<RegForm> createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  Technival technival = Technival(team: null);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(), // for teamName,
                TextFormField(), // for teamSize
                TextFormField(), // groupA size
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
