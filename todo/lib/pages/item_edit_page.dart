import 'package:flutter/material.dart';
import '../models/item.dart';
import '../utils/item_edit_form.dart';

class EditItemPage extends StatelessWidget {

  final Item item;

  EditItemPage(this.item);

  @override
  Widget build(BuildContext context) {

    final String editTitle = "Add Form Title";

    return Scaffold(
        appBar: AppBar(
            title: Text(editTitle)
        ),
        body: EditItemForm(item)
    );
  }
}