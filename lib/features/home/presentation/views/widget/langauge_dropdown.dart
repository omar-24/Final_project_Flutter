import 'package:flutter/material.dart';

class LangaugeDropdown extends StatefulWidget {
  const LangaugeDropdown({Key? key}) : super(key: key);

  @override
  State<LangaugeDropdown> createState() => _LangaugeDropdownState();
}

class _LangaugeDropdownState extends State<LangaugeDropdown> {
  List<String> Items = ['Arabic', 'English', 'French', 'Chinese'];
  String? SelectedItem = 'English';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: SelectedItem,
        items: Items.map((e) => DropdownMenuItem(
                value: e,
                child: Text(
              e,
              style: TextStyle(fontSize: 20),
            ))).toList(),
        onChanged: (e) => setState(()=> SelectedItem =e),
      underline: Container(),
      focusColor: Colors.transparent,
      dropdownColor: Colors.white,
      borderRadius:BorderRadius.all(Radius.circular(10)),
      iconEnabledColor: Colors.red,


    );
  }
}
