import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

void showInSnackBar(BuildContext context, String value) {
  final snackBar = SnackBar(content: Text(value), duration: Duration(milliseconds: 200),);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListBuilde()
    );
  }
}


class ListBuilde extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("list"),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return Card(
                color: Colors.limeAccent,
                elevation: 10,
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    'Номер ${index + 1}',
                    style: const TextStyle(),
                  ),
                  onTap: () {
                    showInSnackBar(context, "Номер списка ${index + 1}");
                  },
                ),
              );
            }),
      ),
    );
  }
}
