import 'package:flutter/material.dart';
import 'package:lab1/models/clothes_model.dart';

import '../widgets/clothes_grid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const List<String> imagesURL = ["https://static.e-stradivarius.net/assets/public/0c8c/7086/7b774286951e/ec5db7b21cab/05652323450-a1/05652323450-a1.jpg?ts=1730102316949",
"https://static.e-stradivarius.net/assets/public/0803/5d9c/774746739a6a/cfe39c4b6dde/05818183004-c/05818183004-c.jpg?ts=1724164505265",
"https://static.e-stradivarius.net/assets/public/556f/6c54/ea5a4c6f8cae/823f71a554b5/05818473550-c/05818473550-c.jpg?ts=1725622307810"];

class _MyHomePageState extends State<MyHomePage> {

  List<Clothes> clothes = List.generate(imagesURL.length, (index) =>
      Clothes(id: index, name: "Coat $index", img: imagesURL[index], description: "Description", price: 50 * 2 - 30)
  );

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ClothesGrid(clothes: clothes),
    );
  }
}
