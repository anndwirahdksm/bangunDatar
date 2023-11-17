import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage({super.key});
final PersegiController _persegiController= Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegi.jpg", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi adalah bangun datar yang keempat sisinya sama panjang"
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: .0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
          children: [
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ElevatedButton(onPressed: (){
              _persegiController.hitungLuas();
            },
              child: Text("hitung Luas"),
              style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.red),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ElevatedButton(onPressed: (){
              _persegiController.hitungKeliling();
            },
                child: Text("hitung Keliling"),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.yellow),
              ),
            ),
          ),
          ],
          ),
          Obx(() => Text(_persegiController.hasil.value, style: TextStyle(color: _persegiController.textColor.value),)),
            ],
      ),
    );
  }
}
