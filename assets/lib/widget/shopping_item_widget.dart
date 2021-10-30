import 'package:pro/model/shopping_item.dart';
import 'package:flutter/material.dart';

bool value = false;

class ShoppingItemWidget extends StatelessWidget {
  final ShoppingItem item;
  const ShoppingItemWidget({
    @required this.item,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          //leading: Text(item.urlImage),
          /*CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(item.urlImage),
            ),*/
          title: Text(item.title, style: TextStyle(fontSize: 20)),
          trailing: Checkbox(
            value: value,
            onChanged: (value) {
              value = value;
            },

            /*IconButton(
              icon: Icon(Icons.check_circle, color: Colors.green, size: 32),
              
              onPressed: onClicked,
               */
          ),
        ),
      );
}
