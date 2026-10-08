import 'package:flutter/material.dart';
import 'halaman_detail.dart'; 

class HalamanMenu extends StatelessWidget {
  const HalamanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ================= HEADER BIRU (E-MONEY) =================
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 25),
                decoration: const BoxDecoration(
                  color: Color(0xFF1976D2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Halo, Yusuf!", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text("Saldo Anda: Rp 1.500.000", style: TextStyle(color: Colors.white70, fontSize: 14)),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white24,
                          radius: 22,
                          child: Icon(Icons.person, color: Colors.white, size: 28),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                            child: const TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.search, color: Colors.grey),
                                hintText: "Cari transaksi, tagihan, atau layanan...",
                                hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.filter_list, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // ================= AREA MENU E-MONEY (3 BARIS) =================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    
                    // ================= BARIS KE-1 =================
                    Row(
                      children: [
                        // Menu 1: Top Up Saldo
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Top Up Saldo")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.add_card, color: Colors.blue, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Top Up Saldo", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Isi saldo dompet digital Anda", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Menu 2: Transfer
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Transfer")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.green.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.send, color: Colors.green, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Transfer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Kirim uang ke pengguna lain", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // ================= BARIS KE-2 =================
                    Row(
                      children: [
                        // Menu 3: Bayar Tagihan
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Bayar Tagihan")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.orange.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.receipt_long, color: Colors.orange, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Bayar Tagihan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Bayar listrik, air, dan internet", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Menu 4: Pulsa & Data
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Pulsa & Data")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.purple.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.smartphone, color: Colors.purple, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Pulsa & Data", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Beli pulsa dan paket data", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // ================= BARIS KE-3 =================
                    Row(
                      children: [
                        // Menu 5: Riwayat Transaksi
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Riwayat Transaksi")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.red.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.history, color: Colors.red, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Riwayat Transaksi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Lihat catatan transaksi Anda", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Menu 6: Profil Saya
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Profil Saya")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.lightBlue.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.account_box, color: Colors.lightBlue, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Profil Saya", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Kelola informasi akun Anda", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}