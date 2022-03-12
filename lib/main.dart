import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:list/covid_model.dart';
//import 'package:list/menu.dart';

import 'menu.dart';



void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  final List<MenuModel> MenuReportList = [
    MenuModel(menu: 'ข้าวไข่เจียว'  , price: '25 บาท',pics: 'khaichiao.png'),
    MenuModel(menu: 'ข้าวหมูแดง'  ,price: '30 บาท',pics:'kao_moo_dang.png'),
    MenuModel(menu: 'ข้าวมันไก่'   ,price: '30 บาท',pics: 'kao_mun_kai.png'),
    MenuModel(menu: 'ข้าวหน้าเป็ด' ,price: '40 บาท',pics:'kao_na_ped.png'),
    MenuModel(menu: 'ข้าวผัด'    ,price: '30 บาท',pics:'kao_pad.png'),
    MenuModel(menu: 'ผัดซีอิ๊ว'    ,price: '30 บาท',pics:'pad_sie_eew.png'),
    MenuModel(menu: 'ผัดไทย'    ,price: '35 บาท',pics:'pad_thai.png'),
    MenuModel(menu: 'ราดหน้า'    ,price: '30 บาท',pics:'rad_na.png'),
    MenuModel(menu: 'ส้มตำไก่ย่าง' ,price: '80 บาท',pics:'som_tum_kai_yang.png'),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FLUTTER FOOD')),
      body:
      Column(
        children: [
          ElevatedButton(onPressed: (){} , child: const Text('LOAD FOOD DATA')),
          Expanded(
            child: ListView.builder(
                itemCount: MenuReportList.length,
                itemBuilder: (context, index) =>
                    MyCard(menu: MenuReportList[index])),
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final MenuModel menu;

  const MyCard({
    Key? key,
    required this.menu,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/images/${menu.pics}',width: 100.0,),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(menu.menu),
                    Text(menu.price),
                  ],
                ),
              ],
            ),









          ],
        ),
      ),
    );
  }
}