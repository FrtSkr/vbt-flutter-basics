import 'package:flutter/material.dart';
import 'package:flutter_giris/widgets/image_container.dart';

//setState metodu, tüm değişikliği kontrol edip senkron olarak bu değişikli görmemizi sağlar.
class Stf extends StatefulWidget {
  const Stf({Key? key}) : super(key: key);

  @override
  State<Stf> createState() => _StfState();
}

class _StfState extends State<Stf> {
  int _sevgi = 100;
  int _miyav = 100;

  final catUrl =
      "https://media.istockphoto.com/vectors/cute-cat-kitten-driving-a-car-fast-vector-id1254739240?s=612x612";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageContainer(url: catUrl),
                ImageContainer(url: catUrl),
                ImageContainer(url: catUrl),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: ImageContainer(
                  url: catUrl,
                ),
                title: const Text(
                  "Cabbar",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _sevgi++;
                        });
                      },
                      child: Row(
                        children: [
                          const Text("Sevgi: "),
                          Text("$_sevgi K"),
                          const Icon(Icons.add_call),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _miyav++;
                        });
                      },
                      child: Row(
                        children: [
                          const Text("Miyav: "),
                          Text("$_miyav K"),
                          const Icon(Icons.addchart),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      //AppBar'ın başına widgetlar eklemek için leading propertysi kullandık.
      leading: IconButton(
        onPressed: () {
          print("Geri Gider.");
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: const Text(
        "VBT",
        style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      //AppBar'ın sonuna widgetlar eklemek için actions propertysi kullanılır.
      actions: [
        // Icon'ı tek başına verdiğimizde bir tıklanma eventı olmaz fakat InkWell içerisinde verirsek onTap propertysi sayesinde bir tıklanma eventına sahip olabilir.
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.home,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.access_alarm_outlined),
        )
      ],
    );
  }

  // buildContainer() {
  //   return Container(
  //     color: Colors.black,
  //     height: MediaQuery.of(context).size.height * 0.3,
  //     width: MediaQuery.of(context).size.width * 0.2,
  //   );
  // }
}
