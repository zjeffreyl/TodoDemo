import 'package:flutter/material.dart';
import '../utils/card.dart';
import '../models/items_list.dart';
import '../pages/item_add_page.dart';

class ItemsPage extends StatefulWidget {
  final String title;

  ItemsPage(this.title);

  @override
  _ItemsPageState createState() => new _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {

  ItemsList itemsList;
  List items;

  @override
  void initState() {
    super.initState();
    itemsList = new ItemsList();
    items = itemsList.getItems();
  }

  @override
  void didUpdateWidget(ItemsPage oldWidget)
  {
    super.didUpdateWidget(oldWidget);
    items = itemsList.getItems();
  }

  @override
  Widget build(BuildContext context) {
    final topBar = AppBar(
      elevation: 0.1,
      backgroundColor: Colors.indigo,
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: (){},
        )
      ],
    );

    final itemBody = Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                elevation: 8,
                margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                    decoration: BoxDecoration(color: Color.fromRGBO(64, 75,96,.9)),
                    child: new CardBox(items[index], itemsList)
                )
            );
      }
      ),
    );

    final bottomBar = Container(
      height: 75,
      child: BottomAppBar(
        color: Colors.blueGrey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemPage(itemsList)));},
            )
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: itemBody,
      appBar: topBar,
      bottomNavigationBar: bottomBar,
    );
  }
}
