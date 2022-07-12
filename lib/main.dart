import 'package:flutter/material.dart';
import 'package:flutter_giris/pages/stf.dart';

//Flutter, bütün renkler, dizayn, butonlar gibi widgetları google'ın yaklaşımı olan material design'ı kullanarak projemizi bize oluşturur.
//Bunu kullanmak zorunda değiliz fakat temel yapı bu şekilde.
//İşletim sistemi register olması gereken bir classının olması gerekiyor. Şuan main.dart dosyası bizim için register classıdır.
//Bu class çalıştığında main fonksiyonu devreye girip runApp metoduğunu çalıştırır.
//runApp metodu, içerisine aldığı widget'ı en başından sonuna kadar dolaşılmasını yönetir.
//Uygulama burada hayata başlar.
//Flutterda her şey bir widgettır.
//StatelessWidget: Sahip olduğu class'ın herhangi bir değişkendeki (statetteki) değişiklikten duyarlı olmaksızın hayatına başlamasını sağlar.
//Örnek: aşağıda tanımlı olan title: 'Flutter Demo' property'sini uygulama hayatına başladıktan sonra değiştirsek bile bu property hayatına nasıl başladıysa o şekilde devam edecektir.
//Yani bir kere oluşturulduktan sonra o değişkende olan değişiklik takip edilmiyor.
//StatefulWidget: Stateless widget'ın tersidir. Yani aşağıda bulunan title değişkeni  değiştiğinde MyHomePage classını komple tekrar render edecektir.
//Değişikliği takip eder.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Stf(),
    );
  }
}
