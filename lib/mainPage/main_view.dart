import 'package:flutter/material.dart';
import 'package:pooyesh_api/Models/example_list.dart';
import 'package:pooyesh_api/Models/example_list2.dart';
import 'package:pooyesh_api/mainPage/item_view.dart';
import 'package:pooyesh_api/network_functional.dart';

class MainView extends StatefulWidget {
  final String name;

  const MainView({Key? key, required this.name}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Best products"),
      ),
      body: FutureBuilder<List<Example_list>>(
        future: ApiNetwork().getList(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  print("hiii");
                  return ItemView(show: snapshot.data![index].show,
                    title: snapshot.data![index].title,
                    price: snapshot.data![index].omdePrice,);
                });
          }
        },
      ),
    );
  }
}
