import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:iconsax/iconsax.dart';

class CollectionView extends StatefulWidget {
  const CollectionView({super.key});

  @override
  State<CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Collections"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              controller: search,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffF5F5F5),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                hintText: 'Search',
                hintStyle: const TextStyle(fontSize: 18),
                prefixIcon: const Icon(
                  Iconsax.search_normal,
                  size: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Text(
                        "Agent 1",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Text(
                        "Pandiannagar",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 111,
              width: 390,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff0080E9), Color(0xffA6D7FF)])),
              child: const Row(
                children: [
                  Column(
                    children: [
                      Text("Total Collection"),
                      Text("Amount"),
                    ],
                  ),
                  Text("")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
