import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context,int index){
          return Card(
            child: ListTile(
              onTap: (){

              },
              leading: Icon(Icons.person),
              trailing: Icon(Icons.call),
              title: Text("Your delivery is in the way"),
              subtitle: Text("Important"),
            ),
          );
        }),
    );
  }
}
