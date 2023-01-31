import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountInputController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);
  void SubmitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountInputController.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    addTx(enteredTitle, enteredAmount);
  }

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
              onSubmitted: (_) => SubmitData,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountInputController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => SubmitData,
            ),
            TextButton(
              onPressed: () {
                SubmitData();
              },
              child: Text("Add Transaction"),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
