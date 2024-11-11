import 'package:flutter/material.dart';

Future popUpAlertBox(context,
    {required String title, required String content}) async {
  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text("Confirm"),
            ),
          ],
        ),
      );
    },
  );
}

popUpLoading(context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      );
    },
  );
}

showAlertBox(context, {String? content, MessageType? status}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: status == MessageType.failed ? Colors.red : Colors.green,
      content: Text(content ?? ""),
    ),
  );
}

futureLoading(BuildContext context) {
  return Center(
    child: Container(
      padding: const EdgeInsets.all(10),
      child: const CircularProgressIndicator(),
    ),
  );
}

futureErrorDisplay(context, {required String errorMsg, Function()? onLoad}) {
  return Center(
    child: Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Icon(
              Icons.error_outlined,
              color: Colors.red,
              size: 25,
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Text(
              "Something went wrong..",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text(
              errorMsg,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
          onLoad != null
              ? Center(
                  child: TextButton.icon(
                    onPressed: onLoad,
                    icon: const Icon(Icons.refresh),
                    label: const Text("Refresh"),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    ),
  );
}

enum MessageType { success, failed }
