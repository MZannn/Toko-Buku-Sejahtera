import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 405,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(600, 400),
                      bottomRight: Radius.elliptical(580, 80)),
                  color: Color.fromARGB(158, 160, 204, 240),
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.elliptical(400, 170),
                      bottomRight: Radius.elliptical(400, 100)),
                  color: const Color.fromARGB(255, 4, 52, 92),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: const AssetImage("assets/img/hero-bg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              "Selamat Datang di TOKO BUKU SEJAHTERA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              "Selamat datang di Toko Buku Sejahtera di sini kami menyediakan berbagai macam buku sesuai apa yang anda inginkan, jadi kami harap ada senang telah berkunjung di Toko Buku Sejahtera.",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 234, 248, 255)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/img/bookstore.jpg"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Awal mula mengikuti pameran.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black87),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Pada tahun 2009 akhir, Toko Buku Pharos Media mulai ikut pameran dan pesta Buku di BPAD SUMU jl Katamso,dan respn masyarakat sangat antusian terhadap kehadiran Toko Buku Pharos Media yang memang dalam konsep bisnisnya adalh menjual buku buku ekonomis yakni obral atau buku murah.",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/img/features-1.png"),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Mengkategorikan Buku",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(211, 41, 41, 41),
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Di Toko Buku Sejahtera di sini menyediakan berbagai kategori buku :",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.circle,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Dongeng.",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.circle,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Novel.", style: TextStyle(color: Colors.black54))
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.circle,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Cerpen.", style: TextStyle(color: Colors.black54))
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.circle,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Komik.", style: TextStyle(color: Colors.black54))
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.circle,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Buku Ilmiah dan Majalah.",
                          style: TextStyle(color: Colors.black54))
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.circle,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Dan masih banyak lagi.",
                          style: TextStyle(color: Colors.black54))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/img/features-2.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Fisi Misi Toko Buku Sejahtera",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(211, 41, 41, 41),
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.circle, size: 10),
                      SizedBox(width: 10),
                      Icon(Icons.check, size: 10),
                      SizedBox(width: 5),
                      Text("Visi.", style: TextStyle(color: Colors.black54))
                    ],
                  ),
                  const Text(
                    "Toko Buku pharos Media ingin berperan serta dalam pengembangan masyarakat melek media dan ilmu demi terwujudnya persaudaraan antar manusia yang dijiwai oleh nilai-nilai kemanusiaan sesuai dengan tuntutan perkembangan zamandi era globalisasi ini",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.circle, size: 10),
                      SizedBox(width: 10),
                      Icon(Icons.check, size: 10),
                      SizedBox(width: 5),
                      Text("Misi.", style: TextStyle(color: Colors.black54))
                    ],
                  ),
                  const Text(
                    "Agen dan menyebarluaskan keilmuan yang bermutu dan berkualitas dengan harga harga yang sangat murah atau terjangkau semua kalangan untuk mendorong tewujudnya persaudaraan antar manusia dalam konteks budaya dan tekhnologi yang sedang berkembang. Melalui Toko Buku Pharos Media ini dengan mudah dan murah mendapatkan buku maka motivasi akan lahirnya pembaca yang baik dan penulis-penulis pemula dan meningkatkan kemampuan penulis. Mengelola sebuah Toko Buku sebagai unit yang berfungsi sebagai wadah peningkatan kecerdasan bangsa dan peningkatan kesejahteraan rakyat sesuai dengan perkembangan zaman, di era teknologi Informasi(digital) saat ini.",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
