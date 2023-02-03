import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text('Todo App',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500)),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      title: Text('Testing'),
                      trailing: Icon(Icons.check),
                    ),
                  )
                ],
              )),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 50),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration:
                              InputDecoration.collapsed(hintText: 'Add Todo'),
                        ),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
