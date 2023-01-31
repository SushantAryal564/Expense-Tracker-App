import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountInputController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountInputController,
            ),
            TextButton(
              onPressed: () {
                addTx(titleController.text,
                    double.parse(amountInputController.text));
              },
              child: Text("Add Transaction"),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                ),
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
