import 'package:flutter/material.dart';

class Riwayat extends StatelessWidget {
  List<int> indexx = [0, 1, 2, 3];
  List<String> listImage = ['riky.png', 'riky.png', 'riky.png', 'riky.png'];
  List<String> list = ['satu', 'dua', 'tiga', 'empat'];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.grey[500],
      ),
      child: Expanded(
        child: GridView.count(
          padding: EdgeInsets.all(20),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: .85,
          crossAxisCount: 2,
          primary: false,
          children: <Widget>[
            for (var i in indexx)
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      // margin: EdgeInsets.only(top: 15.0),
                      child: Image.asset(
                        'assets/images/${listImage[i]}',
                        height: 140,
                        width: 140,
                      ),
                    ),
                    Text(list[i]),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
