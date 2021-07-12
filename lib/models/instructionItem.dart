import 'package:flutter/cupertino.dart';

class InstructionItem {
  InstructionItem({this.isExpanded: false, this.title, this.body});

  bool isExpanded;
  final Widget title;
  final Column body;

}
