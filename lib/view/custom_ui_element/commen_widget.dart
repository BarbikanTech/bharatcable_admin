import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<bool?> confirmationDialog(
  context, {
  required String title,
  required String message,
}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: CupertinoAlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            CupertinoButton(
              child: const Text("Confirm"),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
            CupertinoButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          ],
        ),
      );
    },
  );
}

Future<bool?> confirmationDialogNew(
  context, {
  required String title,
  required String message,
}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: CupertinoAlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            CupertinoButton(
              child: const Text("Yes"),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
            CupertinoButton(
              child: const Text("No"),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
            CupertinoButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context, null);
              },
            ),
          ],
        ),
      );
    },
  );
}

Future<Map<String, dynamic>?> formDialog(
  context, {
  required String title,
  required String sysmbol,
  required String value,
}) async {
  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return CartFormAlert(
        title: title,
        sysmbol: sysmbol,
        value: value,
      );
    },
  );
}

class CartFormAlert extends StatefulWidget {
  final String title;
  final String sysmbol;
  final String value;
  const CartFormAlert({
    super.key,
    required this.title,
    required this.sysmbol,
    required this.value,
  });

  @override
  State<CartFormAlert> createState() => _CartFormAlertState();
}

class _CartFormAlertState extends State<CartFormAlert> {
  String sys = "%";
  TextEditingController value = TextEditingController();

  List<DropdownMenuItem> sysList = const [
    DropdownMenuItem(
      value: "%",
      child: Text("%"),
    ),
    DropdownMenuItem(
      value: "rs",
      child: Text("RS"),
    ),
  ];

  @override
  void initState() {
    super.initState();
    sys = widget.sysmbol;
    value.text = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: AlertDialog(
        title: Text(widget.title),
        content: Row(
          children: [
            Expanded(
              flex: 3,
              child: DropdownButtonFormField(
                isExpanded: true,
                value: sys,
                items: sysList,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
                onChanged: (value) {
                  setState(() {
                    sys = value;
                  });
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 6,
              child: TextFormField(
                autofocus: true,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                controller: value,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                FocusManager.instance.primaryFocus!.unfocus();
              });
              Navigator.pop(context, {
                "sys": sys,
                "value": int.parse(value.text),
              });
            },
            child: const Text("Confirm"),
          ),
        ],
      ),
      onWillPop: () async => false,
    );
  }
}
