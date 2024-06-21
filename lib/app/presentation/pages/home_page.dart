import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/button_widget.dart';
import '../widgets/card_widget.dart';
import '../widgets/form_widget.dart';
import '../widgets/scaffold_widget.dart';
import '../widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // VARIABLE
    final cJenisBeras = TextEditingController();
    final cHargaPerKg = TextEditingController();
    final cTransaksiKg = TextEditingController();
    final cTransaksiHarga = TextEditingController();
    final cJumlahKg = TextEditingController();
    final cTotalHarga = TextEditingController();

    return ScaffoldCore(
      titlePage: 'Beras Berkualitas',
      body: ListView(
        children: [
          // PILIH JENIS BERAS
          CardContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // PILIH JENIS BARANG
                const TitleWidget(teks: 'Pilih Jenis Beras'),
                const SizedBox(height: 5),
                FormReguler(controller: cJenisBeras),
                const SizedBox(height: 5),

                // HARGA / KG
                const TitleWidget(teks: 'Harga / Kg'),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const TitleWidget(teks: 'RP'),
                    const SizedBox(width: 15),
                    Flexible(child: FormReguler(controller: cHargaPerKg)),
                  ],
                )
              ],
            ),
          ),

          // TRANSAKSI BERDASARKAN KG
          CardContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TRANSAKSI BERDASARKAN KG
                const TitleWidget(teks: 'Transaksi Berdasarkan Kg'),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Flexible(child: FormReguler(controller: cTransaksiKg)),
                    const SizedBox(width: 10),
                    const ButtonMain(title: 'OK'),
                  ],
                ),
                const SizedBox(height: 5),

                // TRANSAKSI BERDASARKAN HARGA
                const TitleWidget(teks: 'Transaksi Berdasarkan Harga'),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const TitleWidget(teks: 'RP'),
                    const SizedBox(width: 10),
                    Flexible(child: FormReguler(controller: cTransaksiHarga)),
                    const SizedBox(width: 10),
                    const ButtonMain(title: 'OK'),
                  ],
                ),
              ],
            ),
          ),

          // JUMLAH KG
          CardContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // JUMLAH KG
                const TitleWidget(teks: 'Jumlah Kg'),
                const SizedBox(height: 5),
                FormReguler(controller: cJumlahKg),
                const SizedBox(height: 5),

                // TOTAL HARGA
                const TitleWidget(teks: 'Total Harga'),
                Row(
                  children: [
                    const TitleWidget(teks: 'RP'),
                    const SizedBox(width: 10),
                    Flexible(child: FormReguler(controller: cTotalHarga)),
                  ],
                ),
                const SizedBox(height: 35),

                // TOMBOL PROSES
                ButtonMain(
                  title: 'Proses',
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 7),
                  onPressed: () {
                    // print(cHargaPerKg.value.text);
                    // print(double.parse(cJumlahKg.text) * double.parse(cHargaPerKg.text));
                    GoRouter.of(context).go('/connection');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
