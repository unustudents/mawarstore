import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class DataWadahPage extends StatelessWidget {
  const DataWadahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldCore(
      titlePage: 'Data Wadah',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                textStyle: const TextStyle(fontSize: 20.0),
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor.withOpacity(0.8),
              ),
              child: const Text("Tambah"),
            ),
          ),
          // const SizedBox(height: 20),
          Flexible(
            child: CardContainer(
              child: ListView(
                shrinkWrap: true,
                children: const [
                  ListButton(no: '1', title: 'Beras Ketan'),
                  SizedBox(height: 10),
                  ListButton(no: '2', title: 'Beras Mawar'),
                  SizedBox(height: 10),
                  ListButton(no: '3', title: 'Beras IR'),
                  // SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListButton extends StatelessWidget {
  const ListButton({super.key, required this.no, required this.title});

  final String no;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          dense: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Theme.of(context).primaryColor),
          ),
          leading: Text(
            no,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black54, fontWeight: FontWeight.w600),
          ),
          onTap: () {},
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
