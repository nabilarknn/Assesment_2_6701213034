import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool s1 = false, s2 = true, s3 = false, s4 = false;
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  final thirdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Wireframe Layar Pertama"),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 5, left: 30, right: 30),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "Masukkan Nama Barang..",
                  labelText: "Nama barang",
                  border: OutlineInputBorder(),
                ),
                controller: firstController,
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
              child: TextFormField(
                maxLines: 4,
                // textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "Masukkan Deskripsi..",
                  labelText: "Deskripsi",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "Masukkan Harga..",
                  labelText: "Harga",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 5, left: 30, right: 30),
                child: Text(
                  "Kondisi Barang",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              alignment: Alignment.topLeft,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SwitchListTile(
                        value: s1,
                        onChanged: (bool value) {
                          setState(() {
                            s1 = value;
                          });
                        },
                        title: Text("Bekas")),
                    SwitchListTile(
                        value: s2,
                        onChanged: (bool value) {
                          setState(() {
                            s2 = value;
                          });
                        },
                        title: Text("Baru")),
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              alignment: Alignment.topLeft,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SwitchListTile(
                        value: s3,
                        onChanged: (bool value) {
                          setState(() {
                            s3 = value;
                          });
                        },
                        title: Text("Pengiriman dalam kota saja")),
                    SwitchListTile(
                        value: s4,
                        onChanged: (bool value) {
                          setState(() {
                            s4 = value;
                          });
                        },
                        title: Text("Menerima retur")),
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child:
                  ElevatedButton(onPressed: () {}, child: Text("PUBLIKASIKAN")),
            )
          ],
        ),
      ),
    );
  }
}
