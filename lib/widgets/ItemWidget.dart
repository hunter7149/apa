import 'package:apa/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        tileColor: Colors.white30,
        trailing: Text(
          "\$${item.price.toString()}",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
