import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController textEditingController = TextEditingController();

class _HomePageState extends State<HomePage> {

  String textoSalvo = 'Nada Salvo';

  Salvar() async {

    String valorDigitado = textEditingController.text;
    final pres = await SharedPreferences.getInstance();
    await pres.setString("nome", valorDigitado);

  }

  Recuperar()async {

    final pres = await SharedPreferences.getInstance();
    setState((){
      textoSalvo = pres.getString("nome") ?? 'Sem Valor';
    });

  }

  Remover() async{
    final pres = await SharedPreferences.getInstance();
    pres.remove("nome");
    textEditingController.clear();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textoSalvo, style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 30),
              Padding(padding: EdgeInsets.symmetric(
               horizontal: 20
              ),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: 'Digite algo'
                ),
              ),),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(125, 50)
                    ),
                      onPressed: Salvar, child:
                  Text('Salvar',style: TextStyle(fontSize: 20),)
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(125,50)
                    ),
                      onPressed:Recuperar, child:
                  Text('Recuperar',style: TextStyle(fontSize: 20),))
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(125,50)
                  ),
                  onPressed: Remover, child:
              Text('Remover',style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}
