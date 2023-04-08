import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedra, Papel e Tesoura"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(
              "Escolha do  App:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Image.asset(
              "images/padrao.png",
              alignment: Alignment.center, height: 100, width: 100,
            ),
            SizedBox(height: 48),
            Text(
              "Selecione abaixo",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/padrao.png",
                  alignment: Alignment.center, height: 100, width: 100,
                ),
                Image.asset(
                  "images/padrao.png",
                  alignment: Alignment.center, height: 100, width: 100,
                ),
                Image.asset(
                  "images/padrao.png",
                  alignment: Alignment.center, height: 100, width: 100,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
