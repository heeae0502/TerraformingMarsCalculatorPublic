import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFields extends StatefulWidget {
  final fieldName;

  final Function() notifyParent;
  final Function(String str) updateValue;

  InputFields(this.fieldName, this.notifyParent, this.updateValue);

  @override
  State<StatefulWidget> createState() => _InputFieldsState(fieldName);
}

class _InputFieldsState extends State<InputFields> {
  TextEditingController _controller;
  final fieldName;

  _InputFieldsState(this.fieldName);

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 120,
            height: 20,
            child: Text(
              fieldName,
              textAlign: TextAlign.right,
            ),
          ),
          Flexible(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[0-9]"))
              ],
              onChanged: (String value) {
                print('value : $value');
                widget.updateValue(value);
                widget.notifyParent();
              },
            ),
          )
        ],
      ),
    );
  }
}
