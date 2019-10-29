import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  int id;
  String nama;
  String detail;
  String gambar;
  String cover;
  DetailPage(this.id, this.nama, this.detail, this.gambar, this.cover);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          centerTitle: true,
          title: Text("Detail Club"),
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      image: NetworkImage(cover),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                      child: Column(
                        children: <Widget>[
                          Text(nama,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(
                            detail,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(10, 100, 0, 0),
                  width: MediaQuery.of(context).size.width * 2 / 6,
                  height: MediaQuery.of(context).size.height * 2 / 7,
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(child: Image.network(gambar)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
