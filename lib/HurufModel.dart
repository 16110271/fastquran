import 'package:flutter/material.dart';
import 'CustomShowDialog.dart';
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
  final String gambarMakh;

  HurufModel(
      {this.nama,
      this.kategori,
      this.gambar,
      this.suaraF,
      this.suaraK,
      this.suaraD,
      this.karakter,
      this.tempatKeluar,
      this.gambarMakh});
}

List listHuruf = [
  HurufModel(
      nama: "Alif",
      kategori: "Huruf Tenggorokan",
      gambar: "ا",
      suaraF: "1.1 A.mp3",
      suaraK: "1.2 I.mp3",
      suaraD: "1.3 U.mp3",
      karakter: "Melafalkan huruf alif sama dengan melafalkan huruf a latin",
      tempatKeluar: "Pangkal Tenggorokan",
      gambarMakh: 'image/1.jpg'),
  HurufModel(
      nama: "Ba",
      kategori: "Huruf Bibir",
      gambar: "ب",
      suaraF: "2.1 Ba.mp3",
      suaraK: "2.2 Bi.mp3",
      suaraD: "2.3 Bu.mp3",
      karakter: "Merapatkan kedua bibir, tidak ada angin yang keluar",
      tempatKeluar: "Bibir",
      gambarMakh: 'image/2.jpg'),
  HurufModel(
      nama: "Ta",
      kategori: "Huruf Lidah",
      gambar: "ت",
      suaraF: "3.1 Ta.mp3",
      suaraK: "3.2 Ti.mp3",
      suaraD: "3.3 Tu.mp3",
      karakter:
          "Menyentuhkan lidah ke gigi seri bagian atas, dengan mengalirkan sedikit nafas",
      tempatKeluar: "Ujung Lidah",
      gambarMakh: 'image/3.jpg'),
  HurufModel(
      nama: "Tsa",
      kategori: "Huruf Lidah",
      gambar: "ث",
      suaraF: "4.1 Tsa.mp3",
      suaraK: "4.2 Tsi.mp3",
      suaraD: "4.3 Tsu.mp3",
      karakter:
          "Menyentuhkan ujung lidah dengan diding dua gigi seri bagian atas, dengan mengalirkan suara dan nafas dengan lembut",
      tempatKeluar: "Ujung Lidah",
      gambarMakh: 'image/4.jpg'),
  HurufModel(
    nama: "Jim",
    kategori: "Huruf Lidah",
    gambar: "ج",
    suaraF: "5.1 Ja.mp3",
    suaraK: "5.2 Ji.mp3",
    suaraD: "5.3 Ju.mp3",
    karakter: "Menyentuhkan tengah lidah dengan langit langit",
    tempatKeluar: "Tengah Lidah",
    gambarMakh: 'image/5.jpg',
  ),
  HurufModel(
    nama: "Kha",
    kategori: "Huruf Tenggorokan",
    gambar: "ح",
    suaraF: "6.1 Kha.mp3",
    suaraK: "6.2 Khi.mp3",
    suaraD: "6.3 Khu.mp3",
    karakter:
        "Seperti akhiran dalam melafalkan kata 'ayah'. Bersih tidak ada serak",
    tempatKeluar: "Tengah Tenggorokan",
    gambarMakh: 'image/6.jpg',
  ),
  HurufModel(
    nama: "Kho",
    kategori: "Huruf Tenggorokan",
    gambar: "خ",
    suaraF: "7.1 Kho.mp3",
    suaraK: "7.2 Khi.mp3",
    suaraD: "7.3 Khu.mp3",
    karakter: "Seperti suara orang sedang mendengkur. Suara terdengar serak",
    tempatKeluar: "Ujung Tenggorokan",
    gambarMakh: 'image/7.jpg',
  ),
  HurufModel(
    nama: "Dal",
    kategori: "Huruf Lidah",
    gambar: "د",
    suaraF: "8.1 Da.mp3",
    suaraK: "8.2 Di.mp3",
    suaraD: "8.3 Du.mp3",
    karakter: "menyentuhkan ujung lidah ke gusi bagian atas",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/8.jpg',
  ),
  HurufModel(
    nama: "Dzal",
    kategori: "Huruf Lidah",
    gambar: "ذ",
    suaraF: "9.1 Dza.mp3",
    suaraK: "9.2 Dzi.mp3",
    suaraD: "9.3 Dzu.mp3",
    karakter:
        "Menyentuhkan ujung lidah dengan dinding dua gigi seri bagian atas. Tanpa mengalirnya udara",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/9.jpg',
  ),
  HurufModel(
    nama: "Ra",
    kategori: "Huruf Lidah",
    gambar: "ر",
    suaraF: "10.2 Ro.mp3",
    suaraK: "10.1 Ri.mp3",
    suaraD: "10.3 Ru.mp3",
    karakter: "Menyentuhkan lidah terdepan dengan langit-langit bagian depan",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/10.jpg',
  ),
  HurufModel(
    nama: "Zain",
    kategori: "Huruf Lidah",
    gambar: "ز",
    suaraF: "11.1 Za.mp3",
    suaraK: "11.2 Zi.mp3",
    suaraD: "11.3 Zu.mp3",
    karakter:
        "Ujung lisan hampir diatas gigi seri bagian bawah. Tanpa mengalirnya udara. Mirip dengan suara dengungan tawon.",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/11.jpg',
  ),
  HurufModel(
    nama: "Sin",
    kategori: "Huruf Lidah",
    gambar: "س",
    suaraF: "12.1 Saa.mp3",
    suaraK: "12.2 Si.mp3",
    suaraD: "12.3 Su.mp3",
    karakter:
        "Bagian lidah terdekat hampir di atas dua gigi seri bagian bawah. Diiringi mengalirnya nafas.",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/12.jpg',
  ),
  HurufModel(
    nama: "Shin",
    kategori: "Huruf Lidah",
    gambar: "ش",
    suaraF: "13.1 Sya.mp3",
    suaraK: "13.2 Syi.mp3",
    suaraD: "13.3 Syu.mp3",
    karakter:
        "menyentuhkan tengah lidah dengan langit langit, mengalir dan menyebar udara dan nafasnya.",
    tempatKeluar: "Tengah Lidah",
    gambarMakh: 'image/13.jpg',
  ),
  HurufModel(
    nama: "Shod",
    kategori: "Huruf Lidah",
    gambar: "ص",
    suaraF: "14.1 Sho.mp3",
    suaraK: "14.2 Shi.mp3",
    suaraD: "14.3 Shu.mp3",
    karakter:
        "Bagian pangkal lidah terangkat dan bagian depan menutupi langit-langit, diiringi mengalirnya nafas dan Suara menebal",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/14.jpg',
  ),
  HurufModel(
    nama: "Dhod",
    kategori: "Huruf Lidah",
    gambar: "ض",
    suaraF: "15.1 Dho.mp3",
    suaraK: "15.2 Dhi.mp3",
    suaraD: "15.3 Dhu.mp3",
    karakter:
        "Menyentuhkan dua atau salah satu sisi bagian lisan dengan gigi geraham atas",
    tempatKeluar: "Pangkal Tepi Lidah",
    gambarMakh: 'image/15.jpg',
  ),
  HurufModel(
    nama: "Tho",
    kategori: "Huruf Lidah",
    gambar: "ط",
    suaraF: "16.1 Tho.mp3",
    suaraK: "16.2 Thi.mp3",
    suaraD: "16.3 Thu.mp3",
    karakter:
        "Menyentuhkan ujung lidah dengan tempat tumbuhnya 2 gigi seri bagian atas, tidak ada aliran nafas, dan diucapkan dengan suara menebal",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/16.jpg',
  ),
  HurufModel(
    nama: "Dhold",
    kategori: "Huruf Lidah",
    gambar: "ظ",
    suaraF: "17.1 Dzho.mp3",
    suaraK: "17.2 Dzhi.mp3",
    suaraD: "17.3 Dzhu.mp3",
    karakter:
        "Menyentuhkan ujung lidah dengan dinding dua gigi seri bagian atas. Tanpa mengalirnya udara. Suara tebal, mengangkat pangkal lidah dan bagian depan menutup langit-langit",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/17.jpg',
  ),
  HurufModel(
    nama: "'Ain",
    kategori: "Huruf Tenggorokan",
    gambar: "ع",
    suaraF: "18.1 Nga.mp3",
    suaraK: "18.2 Ngi.mp3",
    suaraD: "18.3 Ngu.mp3",
    karakter:
        "Menyerupai pengucapan huruf 'a' dengan suara berasal dari tenggorokan. Seperti suara tangisan bayi. Tidak mendengung",
    tempatKeluar: "Tengah Tenggorokan",
    gambarMakh: 'image/18.jpg',
  ),
  HurufModel(
    nama: "Ghoin",
    kategori: "Huruf Tenggorokan",
    gambar: "غ",
    suaraF: "19.1 Gho.mp3",
    suaraK: "19.2 Ghi.mp3",
    suaraD: "19.3 Ghu.mp3",
    karakter:
        "Keluar dari tenggorokan yang terdekat dari rongga mulut, tanpa mengalir udaranya, tanpa ada serak",
    tempatKeluar: "Ujung Tenggorokan",
    gambarMakh: 'image/19.jpg',
  ),
  HurufModel(
    nama: "Fa'",
    kategori: "Huruf Bibir",
    gambar: "ف",
    suaraF: "20.1 Fa.mp3",
    suaraK: "20.2 Fi.mp3",
    suaraD: "20.3 Fu.mp3",
    karakter:
        "Menyentuhkan ujung dua gigi seri bagian atas dengan bibir bawah bagian dalam dan mengalirnya udara",
    tempatKeluar: "Bibir",
    gambarMakh: 'image/20.jpg',
  ),
  HurufModel(
    nama: "Qof",
    kategori: "Huruf Bibir",
    gambar: "ق",
    suaraF: "21.1 Qo.mp3",
    suaraK: "21.2 Qi.mp3",
    suaraD: "21.3 Qu.mp3",
    karakter: "Menyentuhkan pangkal lidah dengan langit langit bagian belakang",
    tempatKeluar: "Pangkal Lidah",
    gambarMakh: 'image/21.jpg',
  ),
  HurufModel(
    nama: "Kaf",
    kategori: "Huruf Bibir",
    gambar: "ك",
    suaraF: "22.1 Ka.mp3",
    suaraK: "22.2 Ki.mp3",
    suaraD: "22.3 Ku.mp3",
    karakter:
        "Menyentuhkan pangkal lidah dengan langit-langit bagian belakang, dengan mengalirkan udara dengan lembut",
    tempatKeluar: "Pangkal Lidah",
    gambarMakh: 'image/22.jpg',
  ),
  HurufModel(
    nama: "Lam",
    kategori: "Huruf Lidah",
    gambar: "ل",
    suaraF: "23.1 La.mp3",
    suaraK: "23.2 Li.mp3",
    suaraD: "23.3 Lu.mp3",
    karakter: "Menyentuhkan lidah terdekat dengan langit-langit bagian depan",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/23.jpg',
  ),
  HurufModel(
    nama: "Mim",
    kategori: "Huruf Bibir",
    gambar: "م",
    suaraF: "24.1 Ma.mp3",
    suaraK: "24.2 Mi.mp3",
    suaraD: "24.3 Mu.mp3",
    karakter: "Merapatkan kedua bibir, tidak ada angin yang keluar",
    tempatKeluar: "Bibir",
    gambarMakh: 'image/24.jpg',
  ),
  HurufModel(
    nama: "Nun",
    kategori: "Huruf Lidah",
    gambar: "ن",
    suaraF: "25.1 Na.mp3",
    suaraK: "25.2 Ni.mp3",
    suaraD: "25.3 Nu.mp3",
    karakter: "Menyentuhkan lidah terdekat dengan langit-langit bagian depan",
    tempatKeluar: "Ujung Lidah",
    gambarMakh: 'image/25.jpg',
  ),
  HurufModel(
    nama: "Ha",
    kategori: "Huruf Tenggorokan",
    gambar: "ھـ",
    suaraF: "27.1 Ha.mp3",
    suaraK: "27.2 Hi.mp3",
    suaraD: "27.3 Hu.mp3",
    karakter:
        "Keluar dari tenggorokan yang terjauh. Seperti ucapan saat kita mempunyai ide 'Aha!'",
    tempatKeluar: "Pangkal Tenggorokan",
    gambarMakh: 'image/26.jpg',
  ),
  HurufModel(
    nama: "Wauw",
    kategori: "Huruf Bibir",
    gambar: "و",
    suaraF: "26.1 Wa.mp3",
    suaraK: "26.2 Wi.mp3",
    suaraD: "26.3 Wu.mp3",
    karakter: "Dengan menyatukan dua bibir kedepan",
    tempatKeluar: "Bibir",
    gambarMakh: 'image/27.jpg',
  ),
  HurufModel(
    nama: "Ya'",
    kategori: "Huruf Lidah",
    gambar: "ي",
    suaraF: "28.1 ya.mp3",
    suaraK: "28.2 yi.mp3",
    suaraD: "28.3 yu.mp3",
    karakter: "Bagian Tengah lidah disentuhkan dengan langit-langit",
    tempatKeluar: "Tengah  Lidah",
    gambarMakh: 'image/28.jpg',
  ),
];

class DisplayListView extends StatefulWidget {
  @override
  _DisplayListViewState createState() => _DisplayListViewState();
}

class _DisplayListViewState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF57c00),
        title: Text(
          "Huruf Hijaiyah",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            tooltip: 'Informasi',
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomAlertDialog(
                        content: SingleChildScrollView(
                            child: ListBody(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text('Huruf Hijaiyah',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ],
                            ),
                          ),
                          Text(
                              'Menu ini menampilkan semua huruf hijaiyah, klik salah satu huruf hijaiyah untuk mengertahui informasi secara detail menegai huruf tersebut.',
                              textAlign: TextAlign.justify),
                        ])),
                        actions: <Widget>[
                          FlatButton(
                            child: Text(
                              'Oke',
                              style: TextStyle(
                                color: Color(0xffF57c00),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ]);
                  });
            },
          ),
        ],
      ),
      body: Container(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: new GridView.builder(
            itemCount: listHuruf.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 16 / 20),
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
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text(listHuruf[i].nama,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
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
      )
          // child: ListView.builder(
          //   itemCount: listHuruf.length,
          //   itemBuilder: (context, int i) => Column(
          //     children: [
          //       new ListTile(
          //         title: new Text(
          //           listHuruf[i].nama,
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //         subtitle: new Text(listHuruf[i].kategori),
          //         trailing: new Text(listHuruf[i].gambar,
          //             style: TextStyle(fontFamily: 'DUBAI', fontSize: 30)),
          //         onTap: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => DetailTryApp(
          //                         huruf: listHuruf[i],
          //                       )));
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
