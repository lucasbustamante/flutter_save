import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('teste', style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 30),
              Padding(padding: EdgeInsets.symmetric(
               horizontal: 20
              ),
              child: TextField(
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

                    ),
                      onPressed: (){}, child:
                  Text('Salvar')
                  ),
                  ElevatedButton(onPressed: (){}, child:
                  Text('Recuperar'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
