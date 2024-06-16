import 'package:flutter/material.dart';
import 'package:mawarstore/app/presentation/widgets/button_widget.dart';
import 'package:mawarstore/app/presentation/widgets/card_widget.dart';
import 'package:mawarstore/app/presentation/widgets/form_widget.dart';
import 'package:mawarstore/app/presentation/widgets/title_widget.dart';

import '../widgets/scaffold_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                const TitleWidget(teks: 'Pilih Jenis Beras'),
                const SizedBox(height: 5),
                FormReguler(controller: cJenisBeras),
                const SizedBox(height: 5),
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
                const TitleWidget(teks: 'Jumlah Kg'),
                const SizedBox(height: 5),
                FormReguler(controller: cJumlahKg),
                const SizedBox(height: 5),
                const TitleWidget(teks: 'Total Harga'),
                Row(
                  children: [
                    const TitleWidget(teks: 'RP'),
                    const SizedBox(width: 10),
                    Flexible(child: FormReguler(controller: cTotalHarga)),
                  ],
                ),
                const SizedBox(height: 35),
                const ButtonMain(
                  title: 'Proses',
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
