import 'package:flutter/material.dart';
import 'pages/items_page.dart';
void main()
{
  runApp(new MaterialApp(
    title: 'List Template',
    theme: new ThemeData(primaryColor: Color.fromRGBO(58,66,86,1.0)),
    home: new ItemsPage('Jeffrey\'s Items')
  ));
}
