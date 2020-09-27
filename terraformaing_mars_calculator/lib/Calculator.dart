import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'InputFields.dart';

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String terraforming = '0';
  String awards = '0';
  String milestones = '0';
  String greeneries = '0';
  String specialResources = '0';
  String eventCards = '0';
  String jupiterCards = '0';
  String cities = '0';
  String normalCards = '0';

  var _totalScore = 0;
  updateScore() {
    setState(() {
      try {
        print('before update : $_totalScore');
        _totalScore = int.parse(terraforming) +
            int.parse(awards) +
            int.parse(milestones) +
            int.parse(greeneries) +
            int.parse(specialResources) +
            int.parse(eventCards) +
            int.parse(jupiterCards) +
            int.parse(cities);
        print('after update : $_totalScore');
      } catch (e) {
        print('계산오류 : ${e.message}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              InputFields(
                'terraformingScore'.tr(),
                updateScore,
                (String str) => terraforming = str,
              ),
              InputFields(
                'awardsScore'.tr(),
                updateScore,
                (String str) => awards = str,
              ),
              InputFields(
                'milestonesScore'.tr(),
                updateScore,
                (String str) => milestones = str,
              ),
              InputFields(
                'greeneriesScore'.tr(),
                updateScore,
                (String str) => greeneries = str,
              ),
              InputFields(
                'specialResourcesScore'.tr(),
                updateScore,
                (String str) => specialResources = str,
              ),
              InputFields(
                'eventCardsScore'.tr(),
                updateScore,
                (String str) => eventCards = str,
              ),
              InputFields(
                'jupiterCardsScore'.tr(),
                updateScore,
                (String str) => jupiterCards = str,
              ),
              InputFields(
                'citiesScore'.tr(),
                updateScore,
                (String str) => cities = str,
              ),
              InputFields(
                'normalCardsScore'.tr(),
                updateScore,
                (String str) => normalCards = str,
              ),
              Container(
                margin: const EdgeInsets.all(50),
                child: Center(
                  child: Text('Score: $_totalScore'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
