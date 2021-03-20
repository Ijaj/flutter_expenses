// ignore_for_file: non_constant_identifier_names
import 'package:expenses/models/transaction.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:expenses/widgets/tx_inp.dart';
import 'package:flutter/material.dart';

class TxHandler extends StatefulWidget {
  	@override
  	TtxHandlerState createState() => TtxHandlerState();
}

class TtxHandlerState extends State<TxHandler> {

	TextEditingController amount_text_c = new TextEditingController();
	TextEditingController title_text_c = new TextEditingController();
	List<Transaction> tx_list = [];

	TtxHandlerState(){
		tx_list = Transaction.get_all();
	}

	void add_tx_click(String amount, String title){
		// update tx list
		setState(() {
			// add new entry in db.
			// get the new list.
			Transaction ntx = new Transaction(
				id: 10.toString(), 
				amount: int.parse(amount), 
				date: DateTime.now(), 
				title: title
			);

			tx_list.add(ntx);
		});
		print(amount_text_c.text);
		print(title_text_c.text);
	}

  	@override
  	Widget build(BuildContext context) {
		return Column(
			children: [
				new TransactionInput(add_tx_click),
				new TransactionList(tx_list),
			],
		);
  	}
}