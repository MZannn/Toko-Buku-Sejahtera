import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 234, 248, 255)),
            child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Tentang Toko Buku Sejahtera",
                  style: TextStyle(fontSize: 22),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/img/bookstore.jpg"),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sejarah Toko Buku Sejahtera.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(211, 41, 41, 41),
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Langkah awal dimulai pada tahun 2009 dengan mengelola sebuah pedagang eceran kecil di di kaki lima sekolahan,kampus dan pameran pameran sekolah,kampus,event keagamaan dll. Tanpa bekal yang memadai bahkan ala kadarnya sebagai pedagang keliling, pemilik mulai mengelola sebuah usaha dengan semangat dan tekun. Dengan kemampuan manejerial alamiah dan sangat tradisional, pemilik memulai usaha sedikit demi sedikit jumlah buku dan memasarkankan ke Toko Toko Buku di wilayah Medan dengan sistem konsinyasi atau titip jual, yang dikelola dengan manejemen sederhana pula. Tantangan terberat pada waktu mulai adalah modal untuk memperoleh buku buku yang mau dipasarkan dan bagaimana mendapatkan sebuah kios buku. Namun mengingat tidak mudahnya saat ini memperoleh bantuan maka perlahan lahan seiring waktu sedikit demi sedikit jumlah buku ditambah dan ditambah sesuai jumlah pesanan pelanggan.",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Pada tahun 2009 akhir, Toko Buku Pharos Media mulai ikut pameran dan pesta Buku di BPAD SUMU jl Katamso,dan respn masyarakat sangat antusian terhadap kehadiran Toko Buku Pharos Media yang memang dalam konsep bisnisnya adalh menjual buku buku ekonomis yakni obral atau buku murah. Sejak tahun 2010, kami tertantang untuk mendirikan sebuah Toko Buku Khusus Obral dan Murah di Medan tercinta ini, karena dunia intelektual bertumbuh di Sumatra Utara ini dengan berdirinya pelbagai Universitas swasta.",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Untuk memperluas pengetahuan dan mempertajam manajemennya, Toko Buku Pharos Media telah menjalin hubungan dengan IKAPI serta penerbit-penerbit lokal dan Nasional serta Toko Buku Lokal dan Nasional dalam even even BAZAR DAN PESTA BUKU(Book Fair). Demikianlah Toko Buku Pharos Media mulai bergerak di bidang penjualan dan pendistribusian buku buku langka,unik,import,buku lama dan baru seperti buku-buku sekolah atau perguruan tinggi, budaya dan agama,Komputer,Kamus,Novel,Buku anak,Majalah,Komik,Kedokteran,kebidanan,kesehatandll.",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/img/penulis-buku.png"))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Wahyu Ramadanu Saputra",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Pemilik Toko Buku Sejahtera",
                        style: TextStyle(color: Colors.black54),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Pemilik Toko Buku Sejahtera ini adalah seorang penulis yang karya nya sudah banyak di kenal oleh masyarakat",
                        style: TextStyle(color: Colors.black54),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
