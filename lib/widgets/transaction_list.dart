// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';
import '../helper.dart';

class TransactionList extends StatelessWidget {
	
	TransactionList(this.tx_list);

	final Color themeColor = Colors.purple;
	final List<Transaction> tx_list;

  	@override
  	Widget build(BuildContext context) {
		//tx_list = Transaction.get_all();
		return Column(
			children: [
				for(var tx in tx_list) get_card_with_padding(tx),
			],
		);
  	}

	String formated_date(DateTime dt){
		String format1 = "dd/MM/yyy";
		String format2 = "hh:mm";
		String s = DateFormat(format1).format(dt);
		String ss = DateFormat(format2).format(dt);

		return s + " at " + ss;
	}

	Padding get_card_with_padding(Transaction t){
		Card c = new Card(
			elevation: 2,
			child: Row(
				children: <Widget>[
					Container(
						width: 150,
						decoration: BoxDecoration(border: Border.all(color: themeColor),),
						margin: EdgeInsets.all(10),
						padding: EdgeInsets.all(10),
						child: Text("Spent: ${t.amount}", textAlign: TextAlign.center,style: this.getTextStyle(),),
					),
					Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Text('${t.title}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
							Text('${formated_date(t.date)}', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),),
						],
					),
				],
			),
		);
		return helper.add_padding(widget: c, pad: 10);
	}

	TextStyle getTextStyle(){
		TextStyle ts = new TextStyle(
			fontWeight: FontWeight.bold,
			fontSize: 20,
			color: themeColor,
		);
		return ts;
	}
}
