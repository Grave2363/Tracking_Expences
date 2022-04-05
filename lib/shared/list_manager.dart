import 'package:flutter/material.dart';
// ignore: camel_case_types
class list_manager{
  /// will be edited at a later date
  List name = <String>['A','B','C' ];
  List cost = <String>['5','4','7' ];
  // ignore: non_constant_identifier_names
  Future<List> getList_Name() async
  {
    return name;
  }
  // ignore: non_constant_identifier_names
  Future<List> getList_Cost() async
  {
    return cost;
  }
  // ignore: non_constant_identifier_names
  void setList_Names(names)
  {
    name = names;
  }
  // ignore: non_constant_identifier_names
  void setList_Costs(costs)
  {
    cost = costs;
  }
}