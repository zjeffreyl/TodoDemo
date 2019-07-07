import 'item.dart';

class ItemsList {
  List<Item> _list;
  ItemsList(){
    _list = new List<Item>();
  }

  void addItem(Item item) {
    _list.add(item);
  }

  List getItems() {
    //return _list;
    return _list;
  }
}