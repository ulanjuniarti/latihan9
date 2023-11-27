import 'package:flutter/material.dart';

class NailArtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips Membuat Nial Art'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Foto
              Image.network(
                'https://mmc.tirto.id/image/2023/04/11/matte-nails_ratio-16x9.jpg',
                height: 200, // Sesuaikan dengan kebutuhan Anda
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16.0), // Beri sedikit jarak antara gambar dan teks

              // Subjudul yang bold
              Text(
                'Tentukan Tema Nail Art',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0), // Beri sedikit jarak antara subjudul dan teks

              // Teks
              Text(
                'Menentukan tema nail art yang akan digunakan adalah langkah pertama yang perlu kamu lakukan. Di tahun 2020 ini tren nail art memiliki beberapa tema, seperti gradasi, ombre, hingga rasi bintang. Manfaatkanlah media Instagram untuk mencari tema-tema nail art yang booming dan kamu sukai.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0), // Tambahkan jarak antara teks sebelumnya dan setelahnya

              Text(
                'Bersihkan Kuku',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0), // Beri sedikit jarak antara subjudul dan teks

              // Teks
              Text(
                'Nah, langkah selanjutnya yang harus kamu lakukan adalah membersihkan kuku. Jika masih ada sisa-sisa kuteks, gunakanlah nail polish remover agar benar-benar bersih. Selain itu, kamu juga perlu membersihkan kutikula dan merapikan kuku menggunakan gunting. Kemudian bentuk kuku sesuai dengan selera agar hasil nail art nanti lebih cantik.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0), // Tambahkan jarak antara teks sebelumnya dan setelahnya

              Text(
                'Aplikasikan Base Coat',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0), // Beri sedikit jarak antara subjudul dan teks

              // Teks
              Text(
                'Setelah bersih dan rapi, kamu perlu mengaplikasikan base coat agar kuku kamu tetap sehat dan membuat nail art nantinya lebih tahan lama. Aplikasikan base coat secara merata, lalu diamkan sampai benar-benar kering. Menunggu base coat mengering memang membosankan Ladies, tapi tahap ini sangat penting agar nail art kamu hasilnya memuaskan.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0), // Tambahkan jarak antara teks sebelumnya dan setelahnya

              Text(
                'Mulailah Membuat Nail Art',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0), // Beri sedikit jarak antara subjudul dan teks

              // Teks
              Text(
                'Mulailah membuat nail art dengan referensi foto tentang tema nail art yang sudah kamu pilih. Tidak perlu terlalu fokus dengan referensi tersebut, kamu masih bisa kok bereksperimen dengan warna-warna favorit kamu asalkan sesuai dengan tema nail art yang kamu pilih. Agar hasilnya tidak mengecewakan, jangan lupa untuk menggunakan bantuan aplikator nail art.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0), // Tambahkan jarak antara teks sebelumnya dan setelahnya

              Text(
                'Aplikasikan Top Coat',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0), // Beri sedikit jarak antara subjudul dan teks

              // Teks
              Text(
                'Selain base coat, mengaplikasikan top coat juga sangat penting dan tidak boleh kamu lewatkan, Ladies. Top coat akan membantu nail art kamu lebih tahan lama dan memberikan efek kilau. Nah, jika ingin hasil nail art kamu tahan lebih lama dan berkilau, pastikan mengaplikasikan top coat sebagai finishing-nya ya.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
