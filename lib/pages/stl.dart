import 'package:flutter/material.dart';

//context: Bu sayfadaki widget bilgilerini, ekran bilgilerini, parent bilgilerini içerisinde tutan bir değişkendir.
//statefull ve stateless widgetları arası bir diğer farkta: StatefullWidget içersinde bulunan build metoduna ait context parametresi build metodunun scope u içerisinde geçerlidir.
//StatefullWidget'ta ise context, State extendi içeren classa ait tüm scope içerisinde geçerlidir.
// yani buildContainer metodunda StatelessWidget için context parametresi şarttır fakat aynı metodu StatefulWidget içerisinde tanımlarsak context parametresi şart değildir.
class Stl extends StatelessWidget {
  const Stl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Container(),
    );
  }

  // buildContainer(BuildContext context) {
  //   return Container(
  //     color: Colors.black,
  //     height: MediaQuery.of(context).size.height * 0.3,
  //     width: MediaQuery.of(context).size.width * 0.2,
  //   );
  // }
}
