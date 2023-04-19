import 'package:flutter/material.dart';
import 'package:proyecto_c/classes/convertir.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  final txtcController = TextEditingController();
  final txtc2Controller = TextEditingController();
  final txtkController = TextEditingController();
  final txtk2Controller = TextEditingController();
  final txtfController = TextEditingController();
  final txtf2Controller = TextEditingController();
  double d = 0;
  @override
  Widget build(BuildContext context) {
    final ScaffoldKey = GlobalKey<ScaffoldState>();

    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          key: ScaffoldKey,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: ("°C-°F"),
                ),
                Tab(
                  text: ("°C-°K"),
                ),
                Tab(
                  text: ("°F-°K"),
                ),
                Tab(
                  text: ("°F-°C"),
                ),
                Tab(
                  text: ("°K-°F"),
                ),
                Tab(
                  text: ("°K-°C"),
                ),
              ],
            ),
            title: Text('PROYECTO'),
          ),
          body: TabBarView(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("ºC"),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: txtcController,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {
                        d = double.parse(txtcController.text);
                        convertir.dato = d;
                        double x;
                        convertir.caf();
                        x = convertir.resultado;

                        final SnackBar_ =
                            SnackBar(content: Text("el resultado es $x"));

                        ScaffoldKey.currentState?.showSnackBar(SnackBar_);
                      },
                      child: Text("CONVERTIR"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("ºC"),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: txtc2Controller,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        d = double.parse(txtcController.text);
                        convertir.dato = d;
                        double x;
                        convertir.cak();
                        x = convertir.resultado;

                        final SnackBar_ =
                            SnackBar(content: Text("el resultado es $x"));

                        ScaffoldKey.currentState?.showSnackBar(SnackBar_);
                      },
                      child: Text("CONVERTIR"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("ºF"),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: txtfController,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        final SnackBar_ = SnackBar(content: Text("holaaaa"));

                        ScaffoldKey.currentState?.showSnackBar(SnackBar_);
                      },
                      child: Text("CONVERTIR"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("ºF"),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: txtf2Controller,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        final SnackBar_ = SnackBar(content: Text("holaaaa"));

                        ScaffoldKey.currentState?.showSnackBar(SnackBar_);
                      },
                      child: Text("CONVERTIR"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("ºK"),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: txtkController,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        final SnackBar_ = SnackBar(content: Text("holaaaa"));

                        ScaffoldKey.currentState?.showSnackBar(SnackBar_);
                      },
                      child: Text("CONVERTIR"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("ºK"),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: txtk2Controller,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        final SnackBar_ = SnackBar(content: Text("holaaaa"));

                        ScaffoldKey.currentState?.showSnackBar(SnackBar_);
                      },
                      child: Text("CONVERTIR"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
