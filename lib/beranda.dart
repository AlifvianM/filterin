import 'package:filterin/Screens/riwayat-setor-alter.dart';
import 'package:filterin/navbar.dart';
import 'package:filterin/route.dart';
import 'package:filterin/setorsampah.dart';
import 'package:filterin/riwayatsetoran.dart';
import 'package:flutter/material.dart';
import 'package:filterin/appbar.dart';
import 'package:flutter/services.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Are you sure you want to exit?'),
              actions: <Widget>[
                FlatButton(
                  child: Text('No'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                FlatButton(
                  child: Text('Yes, exit'),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
              ],
            );
          }
        );
        // return value == true;
      },
      child: Scaffold(
          appBar: FilterAppBar(),
          bottomNavigationBar: NavBawah(),
          body: Container(
              child:
                  ListView(physics: ClampingScrollPhysics(), children: <
                      Widget>[
            Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 25.0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    _buildSaldo(),
                  ],
                )),
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              height: 100.0,
              child: RaisedButton.icon(
                textColor: Colors.white,
                color: Color(0xff84c263),
                onPressed: () {},
                icon: Image.asset(
                  "asset/tipstrick.png",
                  height: 35,
                  width: 35,
                ),
                label: Text(
                  "Tips & Trik Pengolahan Sampah",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              height: 100.0,
              child: RaisedButton.icon(
                textColor: Colors.white,
                color: Color(0xff84c263),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SetorSampah()));
                },
                icon: Image.asset(
                  "asset/setorsampah.png",
                  height: 35,
                  width: 35,
                ),
                label: Text(
                  "Setor Sampah",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              height: 100.0,
              child: RaisedButton.icon(
                textColor: Colors.white,
                color: Color(0xff84c263),
                onPressed: () {
                  Routes.changePage(context, RiwayatSetor());
                  print("SETORAN"); 
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Riwayat()));
                },
                icon: Image.asset(
                  "asset/riwayat.png",
                  height: 35,
                  width: 35,
                ),
                label: Text(
                  "Riwayat Setoran",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: <Widget>[
//                        _buildGoFoodFeatured(),
                    // _buildInfo()
                  ],
                )),
          ]))),
    );
  }
}

Widget _buildSaldo() {
  return Container(
      height: 120.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color(0xffE0EDC5), const Color(0xffE0EDC5)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(3.0))),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff84c263), const Color(0xff84c263)],
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3.0),
                    topRight: Radius.circular(3.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Saldo",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontFamily: "NeoSansBold"),
                ),
                Container(
                  child: Text(
                    "Rp. 120.000",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontFamily: "NeoSansBold"),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
//                    Image.asset(
//                      "assets/icons/icon_transfer.png",
//                      width: 32.0,
//                      height: 32.0,
//                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Tarik",
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
//                    Image.asset(
////                      "assets/icons/icon_scan.png",
////                      width: 32.0,
////                      height: 32.0,
////                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Poin",
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "asset/setorsampah.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Kg",
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                    )
                  ],
                ),
//                Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Image.asset(
//                      "asset/riwayat.png",
//                      width: 32.0,
//                      height: 32.0,
//                    ),
//                    Padding(
//                      padding: EdgeInsets.only(top: 10.0),
//                    ),
//                    Text(
//                      "Riwayat",
//                      style: TextStyle(color: Colors.black, fontSize: 12.0),
//                    )
//                  ],
//                ),
              ],
            ),
          )
        ],
      ));
}

//Widget _buildGoFoodFeatured() {
//  return Container(
//    padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
//    child: Column(
//      crossAxisAlignment: CrossAxisAlignment.stretch,
//      children: <Widget>[
//        Text(
//          "GO-FOOD",
//          style: TextStyle(fontFamily: "NeoSansBold"),
//        ),
//        Padding(
//          padding: EdgeInsets.only(top: 8.0),
//        ),
//        Text(
//          "Pilihan Terlaris",
//          style: TextStyle(fontFamily: "NeoSansBold"),
//        ),
//        SizedBox(
//          height: 172.0,
//          child: FutureBuilder<List>(
//              future: fetchFood(),
//              builder: (context, snapshot) {
//                if (snapshot.hasData) {
//                  return ListView.builder(
//                    itemCount: snapshot.data.length,
//                    padding: EdgeInsets.only(top: 12.0),
//                    physics: ClampingScrollPhysics(),
//                    scrollDirection: Axis.horizontal,
//                    itemBuilder: (context, index) {
//                      return _rowGoFoodFeatured(snapshot.data[index]);
//                    },
//                  );
//                }
//                return Center(
//                  child: SizedBox(
//                      width: 40.0,
//                      height: 40.0,
//                      child: const CircularProgressIndicator()),
//                );
//              }),
//        ),
//      ],
//    ),
//  );
//}

//Widget _rowGoFoodFeatured(Food food) {
//  return Container(
//    margin: EdgeInsets.only(right: 16.0),
//    child: Column(
//      children: <Widget>[
//        ClipRRect(
//          borderRadius: BorderRadius.circular(8.0),
//          child: Image.asset(
//            food.image,
//            width: 132.0,
//            height: 132.0,
//          ),
//        ),
//        Padding(
//          padding: EdgeInsets.only(top: 8.0),
//        ),
////        Text(
////          food.title,
////        ),
//      ],
//    ),
//  );
//}

Widget _buildInfo() {
  return Container(
      margin: EdgeInsets.all(16.0),
      child: FutureBuilder(
        future: fetchInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
                children: snapshot.data.map<Widget>((data) {
              return _rowInfo(data);
            }).toList());
          }
          return Center(
            child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: const CircularProgressIndicator()),
          );
        },
      ));
}

Widget _rowInfo(Info info) {
  return Container(
    height: 320.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 16.0),
          width: double.infinity,
          height: 1.0,
          color: Colors.grey,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            info.image,
            height: 172.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          info.title,
          style: TextStyle(fontFamily: "NeoSansBold", fontSize: 16.0),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
        ),
        Text(
          info.content,
          maxLines: 2,
          softWrap: true,
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.0),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: MaterialButton(
            color: Color(0xff84c263),
            onPressed: () {},
            child: Text(
              info.button,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "NeoSansBold",
                  fontSize: 12.0),
            ),
          ),
        )
      ],
    ),
  );
}

//Future<List<Food>> fetchFood() async {
//  List<Food> _goFoodFeaturedList = [];
//  _goFoodFeaturedList
//      .add(Food(title: "Steak Andakar", image: "asset/images/food_1.jpg"));
//  _goFoodFeaturedList.add(
//      Food(title: "Mie Ayam Tumini", image: "asset/images/food_2.jpg"));
//  _goFoodFeaturedList.add(
//      Food(title: "Tengkleng Hohah", image: "asset/images/food_3.jpg"));
//  _goFoodFeaturedList
//      .add(Food(title: "Warung Steak", image: "asset/images/food_4.jpg"));
//  _goFoodFeaturedList.add(Food(
//      title: "Kindai Warung Banjar", image: "asset/images/food_5.jpg"));
//
//  return Future.delayed(Duration(seconds: 1), () {
//    return _goFoodFeaturedList;
//  });
//}

Future<List<Info>> fetchInfo() async {
  List<Info> _infoList = [];

  _infoList.add(Info(
      image: "asset/images/berita1.jpg",
      title: "BERITA 1",
      content:
          "Warga sedang mendaur ulang sampah plastik menjadi tas yang lebih berguna.",
      button: "SELENGKAPNYA"));
  _infoList.add(Info(
      image: "asset/images/berita2.jpg",
      title: "BERITA 2",
      content:
          "Sampah botol bekas dapat menjadi berbagai macam kerajinan tangan.",
      button: "SELENGKAPNYA"));
  _infoList.add(Info(
      image: "asset/images/berita3.jpg",
      title: "BERITA 3",
      content:
          "Sampah plastik berjenis botol terbukti sampah terbanyak yang dihasilkan oleh manusia.",
      button: "SELENGKAPNYA"));
  _infoList.add(Info(
      image: "asset/images/berita4.jpg",
      title: "BERITA 4",
      content:
          "Begini caranya mendaur ulang sampah plastik dari botol bekas minummu!",
      button: "SELENGKAPNYA"));
  return Future.delayed(Duration(seconds: 3), () {
    return _infoList;
  });
}

//class Food {
//  String title;
//  String image;
//
//  Food({this.title, this.image});
//}

class Info {
  String image;
  String title;
  String content;
  String button;

  Info({this.image, this.title, this.content, this.button});
}
