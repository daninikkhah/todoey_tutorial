import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.bIsChecked = false,
      this.detail,
      this.onChangeFunction,
      this.onLongPress});
  final bool bIsChecked;
  final String detail;
  final Function onChangeFunction;
  final Function onLongPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: detail != null
          ? Text(
              detail,
              style: bIsChecked
                  ? TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough,
                    )
                  : TextStyle(
                      fontSize: 20,
                    ),
            )
          : Text('Error'),
      trailing: Checkbox(
        value: bIsChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: onChangeFunction,
      ),
      onLongPress: onLongPress,
      //TODO
    );
  }
}
