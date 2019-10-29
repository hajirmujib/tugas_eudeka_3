import 'package:eudeka_tugas_3/data/data_olahraga.dart';
import 'package:flutter/material.dart';
import 'package:eudeka_tugas_3/view/detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = DataOlahraga.olahraga;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red[600],
          centerTitle: true,
        title: Text("Daftar Klub Bola Liga 1"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffcfd8dc), Color(0xffe8f5e9)])),
        child: GridView.builder(
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
          ),
          itemCount: data.length,
          itemBuilder: (context, i) {
            return InkWell(
              child: Card(
                child: Column(
                  children: <Widget>[
                    // Image.network(data[i].gambar),
                    Image(
                      height: 150,
                      image: NetworkImage(data[i].gambar),
                    ),
                    Text(data[i].nama,style: TextStyle(fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return DetailPage(data[i].id, data[i].nama, data[i].detail,data[i].gambar,data[i].cover);
              }));
            
            });
          },
        ),
      ),
    );
  }
}
