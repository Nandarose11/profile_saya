import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  final String address;
  final String image;
  final String description;
  final String phone;
  final String home;
  final String link;

  Profile({
    required this.name,
    required this.address,
    required this.image,
    required this.description,
    required this.phone,
    required this.home,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Nanda Rosenatu Fahira'),
        backgroundColor: Color.fromARGB(255, 216, 106, 152),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(image),
            backgroundColor: Color.fromARGB(255, 59, 17, 52),
          ),
          SizedBox(height: 20),
          Text(name),
          SizedBox(height: 20),
          Text(address),
          SizedBox(height: 20),
          Text(description),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.phone),
              SizedBox(width: 10),
              Text(phone),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.home),
              SizedBox(width: 10),
              Text(home),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.link),
              SizedBox(width: 10),
              Text(link),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add your button route logic here
            },
            child: Text('Route'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add your call logic here
            },
            child: Text('Call'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add your share logic here
            },
            child: Text('Share'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nanda Rosenatu Fahira',
      theme: ThemeData(
        primarySwatch: Colors.blue,     
         ),
      home: Profile(
        name: 'Nanda Rosenatu Fahira',
        address: 'Indonesia',
        image: 'images/nafa.jpg',
        description: 'Perkenalkan Nama Saya Nanda Rosenatu Fahira ,Saya Mahasiswa STMIK Widya Utama , saya sekarang mahasiswa semester 6 ,saya mengambil S1 jurusan Teknik Informatika, saya memiliki tinggi badan 150 sedangkan berat badan saya kurang lebih 43, saya beharap semoga saya lulus tepat waktu dan mendapatkan pekerjaan yang nyaman ,baik  dan saya juga ingin membuka usaha milik pribadi agar suatu hari bisa berkembang baik dan disukai oleh masyarkat dunia dan bisa membuka lowongan pekerjaan bagi masyarakat yang sedang mencari pekerjaan, terkadang jika ada waktu luang saya mengisi dengan berolahraga, bernyanyi, memikirkan hal hal yang harus siapkan untuk kedepannya, saya berharap orang orang disekitar saya bisa bertahan hidup lebih lama, sehat, memiliki kepedulian satu sama lain, memliki motifisai agar kehidupan yang dijalani bisa selalu bersyukur dan bahagia.',
        phone: '085702572819',
        home: 'Indonesia',
        link: 'http://localhost:53946/',
      ),
    );
  }
}
