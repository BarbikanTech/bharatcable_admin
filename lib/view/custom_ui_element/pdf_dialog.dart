import 'package:flutter/material.dart';

class PDFDialog extends StatefulWidget {
  const PDFDialog({super.key});

  @override
  State<PDFDialog> createState() => _PDFDialogState();
}

class _PDFDialogState extends State<PDFDialog> {
  int? index;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide.none,
      ),
      title: const Text("PDF Format"),
      content: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
              child: Container(
                color: Colors.transparent,
                height: 55,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index != null && index == 1 ? const Color(0xff2F4550) : const Color(0xffD9D9D9),
                      ),
                      child: index != null && index == 1
                          ? const Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 12,
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "PDF Format 1",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
              child: Container(
                color: Colors.transparent,
                height: 55,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index != null && index == 2 ? const Color(0xff2F4550) : const Color(0xffD9D9D9),
                      ),
                      child: index != null && index == 2
                          ? const Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 12,
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "PDF Format 2",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF2F2F2),
                  ),
                  child: const Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color(0xff575757),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context, index);
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: const Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        color: Color(0xffF4F4F9),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
