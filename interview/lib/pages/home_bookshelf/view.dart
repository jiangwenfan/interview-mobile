import 'package:flutter/material.dart';

class HomeBookshelfView extends StatefulWidget {
  const HomeBookshelfView({super.key});

  @override
  HomeBookshelfViewState createState() => HomeBookshelfViewState();
}

class HomeBookshelfViewState extends State<HomeBookshelfView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
          itemCount: 20,
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              // 主轴元素个数和空间
              crossAxisCount: 3,
              crossAxisSpacing: 22,
              // 垂直元素之间的距离
              mainAxisSpacing: 30,
              // 宽高比,
              childAspectRatio: 0.58),
          itemBuilder: (contenxt, index) {
            return Container(
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                // padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(children: [
                  // 图片必须满足这个宽高比.132*185 0.71
                  Image.network(
                    "https://s21.ax1x.com/2024/06/18/pk0crgU.jpg",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Book Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]));
          }),
    );
  }
}
