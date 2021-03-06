//import 'package:Fast_Quran/detail.dart';
import 'package:flutter/material.dart';

import 'detailTry.dart';

class HurufModel {
  final String nama;
  final String kategori;
  final String gambar;
  final String suaraF;
  final String suaraK;
  final String suaraD;
  final String karakter;
  final String tempatKeluar;

  HurufModel(
      {this.nama,
      this.kategori,
      this.gambar,
      this.suaraF,
      this.suaraK,
      this.suaraD,
      this.karakter,
      this.tempatKeluar});
}

List listHuruf = [
  HurufModel(
      nama: "Alif",
      kategori: "Huruf Tenggorokan",
      gambar: "ا",
      suaraF: "audio.mp3",
      suaraK: "eventually.mp3",
      suaraD: "moonless.mp3",
      karakter: "Melafalkan huruf alif sama dengan melafalkan huruf a latin",
      tempatKeluar: "Pangkal Tenggorokan"),
  HurufModel(
    nama: "Ba",
    kategori: "Huruf Bibir",
    gambar: "ب",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Merapatkan kedua bibir, tidak ada angin yang keluar",
    tempatKeluar: "Bibir",
  ),
  HurufModel(
    nama: "Ta",
    kategori: "Huruf Lidah",
    gambar: "ت",
    karakter:
        "Menyentuhkan lidah ke gigi seri bagian atas, dengan mengalirkan sedikit nafas",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Tsa",
    kategori: "Huruf Lidah",
    gambar: "ث",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Menyentuhkan ujung lidah dengan diding dua gigi seri bagian atas, dengan mengalirkan suara dan nafas dengan lembut",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Jim",
    kategori: "Huruf Lidah",
    gambar: "ج",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Menyentuhkan tengah lidah dengan langit langit",
    tempatKeluar: "Tengah Lidah",
  ),
  HurufModel(
    nama: "Kha",
    kategori: "Huruf Tenggorokan",
    gambar: "ح",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Seperti akhiran dalam melafalkan kata 'ayah'. Bersih tidak ada serak",
    tempatKeluar: "Tengah Tenggorokan",
  ),
  HurufModel(
    nama: "Kho",
    kategori: "Huruf Tenggorokan",
    gambar: "خ",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Seperti suara orang sedang mendengkur. Suara terdengar serak",
    tempatKeluar: "Ujung Tenggorokan",
  ),
  HurufModel(
    nama: "Dal",
    kategori: "Huruf Lidah",
    gambar: "د",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "menyentuhkan ujung lidah ke gusi bagian atas",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Dzal",
    kategori: "Huruf Lidah",
    gambar: "ذ",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Menyentuhkan ujung lidah dengan dinding dua gigi seri bagian atas. Tanpa mengalirnya udara",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Ra",
    kategori: "Huruf Lidah",
    gambar: "ر",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Menyentuhkan lidah terdepan dengan langit-langit bagian depan",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Zain",
    kategori: "Huruf Lidah",
    gambar: "ز",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Ujung lisan hampir diatas gigi seri bagian bawah. Tanpa mengalirnya udara. Mirip dengan suara dengungan tawon.",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Sin",
    kategori: "Huruf Lidah",
    gambar: "س",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Bagian lidah terdekat hampir di atas dua gigi seri bagian bawah. Diiringi mengalirnya nafas.",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Shin",
    kategori: "Huruf Lidah",
    gambar: "ش",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "menyentuhkan tengah lidah dengan langit langit, mengalir dan menyebar udara dan nafasnya.",
    tempatKeluar: "Tengah Lidah",
  ),
  HurufModel(
    nama: "Shod",
    kategori: "Huruf Lidah",
    gambar: "ص",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Bagian pangkal lidah terangkat dan bagian depan menutupi langit-langit, diiringi mengalirnya nafas dan Suara menebal",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Dhod",
    kategori: "Huruf Lidah",
    gambar: "ض",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Menyentuhkan dua atau salah satu sisi bagian lisan dengan gigi geraham atas",
    tempatKeluar: "Pangkal Tepi Lidah",
  ),
  HurufModel(
    nama: "Tho",
    kategori: "Huruf Lidah",
    gambar: "ط",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Menyentuhkan ujung lidah dengan tempat tumbuhnya 2 gigi seri bagian atas, tidak ada aliran nafas, dan diucapkan dengan suara menebal",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Dhold",
    kategori: "Huruf Lidah",
    gambar: "ظ",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Menyentuhkan ujung lidah dengan dinding dua gigi seri bagian atas. Tanpa mengalirnya udara. Suara tebal, mengangkat pangkal lidah dan bagian depan menutup langit-langit",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "'Ain",
    kategori: "Huruf Tenggorokan",
    gambar: "ع",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Menyerupai pengucapan huruf 'a' dengan suara berasal dari tenggorokan. Seperti suara tangisan bayi. Tidak mendengung",
    tempatKeluar: "Tengah Tenggorokan",
  ),
  HurufModel(
    nama: "Ghoin",
    kategori: "Huruf Tenggorokan",
    gambar: "غ",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Keluar dari tenggorokan yang terdekat dari rongga mulut, tanpa mengalir udaranya, tanpa ada serak",
    tempatKeluar: "Ujung Tenggorokan",
  ),
  HurufModel(
    nama: "Fa'",
    kategori: "Huruf Bibir",
    gambar: "ف",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Menyentuhkan ujung dua gigi seri bagian atas dengan bibir bawah bagian dalam dan mengalirnya udara",
    tempatKeluar: "Bibir",
  ),
  HurufModel(
    nama: "Qof",
    kategori: "Huruf Bibir",
    gambar: "ق",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Menyentuhkan pangkal lidah dengan langit langit bagian belakang",
    tempatKeluar: "Pangkal Lidah",
  ),
  HurufModel(
    nama: "Kaf",
    kategori: "Huruf Bibir",
    gambar: "ك",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Menyentuhkan pangkal lidah dengan langit-langit bagian belakang, dengan mengalirkan udara dengan lembut",
    tempatKeluar: "Pangkal Lidah",
  ),
  HurufModel(
    nama: "Lam",
    kategori: "Huruf Lidah",
    gambar: "ل",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Menyentuhkan lidah terdekat dengan langit-langit bagian depan",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Mim",
    kategori: "Huruf Bibir",
    gambar: "م",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Merapatkan kedua bibir, tidak ada angin yang keluar",
    tempatKeluar: "Bibir",
  ),
  HurufModel(
    nama: "Nun",
    kategori: "Huruf Lidah",
    gambar: "ن",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Menyentuhkan lidah terdekat dengan langit-langit bagian depan",
    tempatKeluar: "Ujung Lidah",
  ),
  HurufModel(
    nama: "Ha",
    kategori: "Huruf Tenggorokan",
    gambar: "ھـ",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter:
        "Keluar dari tenggorokan yang terjauh. Seperti ucapan saat kita mempunyai ide 'Aha!'",
    tempatKeluar: "Pangkal Tenggorokan",
  ),
  HurufModel(
    nama: "Wauw",
    kategori: "Huruf Bibir",
    gambar: "و",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Dengan menyatukan dua bibir kedepan",
    tempatKeluar: "Bibir",
  ),
  HurufModel(
    nama: "Ya'",
    kategori: "Huruf Lidah",
    gambar: "ي",
    suaraF: "audio.mp3",
    suaraK: "eventually.mp3",
    suaraD: "moonless.mp3",
    karakter: "Bagian Tengah lidah disentuhkan dengan langit-langit",
    tempatKeluar: "Tengah  Lidah",
  ),
];

class DisplayListViewGrid extends StatefulWidget {
  @override
  _DisplayListViewStateGrid createState() => _DisplayListViewStateGrid();
}

class _DisplayListViewStateGrid extends State {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter TabBar',
      home: new Home(),
      theme: ThemeData(fontFamily: 'Montserrat'),
    );
  }
}



class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    tabController = new TabController(length: 2, vsync: this);

    var tabBarItem = new TabBar(
      tabs: [
        new Tab(
          icon: new Icon(Icons.list),
        ),
        new Tab(
          icon: new Icon(Icons.grid_on),
        ),
      ],
      controller: tabController,
      indicatorColor: Colors.white,
    );

    var listItem = new ListView.builder(
      itemCount: listHuruf.length,
      itemBuilder: (context, int i) => Column(
        children: [
          new ListTile(
            title: new Text(
              listHuruf[i].nama,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(listHuruf[i].kategori),
            trailing: new Text(listHuruf[i].gambar,
                style: TextStyle(fontFamily: 'DUBAI', fontSize: 30)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailTryApp(
                            huruf: listHuruf[i],
                          )));
            },
          ),
        ],
      ),
    );
    var dcontainer = new Container(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: new GridView.builder(
          itemCount: listHuruf.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, 
                childAspectRatio: 16/20),
          itemBuilder: (context, int i) {
            return new GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: new Container(
                    height: 100,
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                new Text(listHuruf[i].gambar,
                                    style: TextStyle(
                                      fontSize: 60,
                                      fontFamily: 'DUBAI',
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Container(
                            // color: Colors.blueGrey,
                            width: 90,
                              child: Padding(
                                padding: const EdgeInsets.only(top:2.0),
                                child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                new Text(listHuruf[i].nama,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                new Text(listHuruf[i].kategori,
                                    style: TextStyle(fontSize: 10)),
                            ],
                          ),
                              )),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6.0,
                          offset: Offset(2, 2),
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    )),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailTryApp(
                              huruf: listHuruf[i],
                            )));
              },
            );
          }),
    ));

    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xffF57c00),
          title: Text(
            "List Huruf",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: tabBarItem,
        ),
        body: new TabBarView(
          controller: tabController,
          children: [
            listItem,
            dcontainer,
          ],
        ),
      ),
    );
  }
}
