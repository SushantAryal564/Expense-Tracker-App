import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  const NewTransaction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            MaterialButton(
              onPressed: () {
                print(titleController.text);
              },
              child: Text("Add Transaction"),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
