import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'helper.dart';

class Transaction {
  	final String id;
  	final String title;
	final int amount;
	final DateTime date;

	final Color themeColor = Colors.purple;

	Transaction({this.id, this.title, this.amount, this.date});

	TextStyle getTextStyle(){
		TextStyle ts = new TextStyle(
			fontWeight: FontWeight.bold,
			fontSize: 20,
			color: themeColor,
		);
		return ts;
	}

	String formated_date(){
		String format1 = "dd/MM/yyy";
		String format2 = "hh:mm";
		String s = DateFormat(format1).format(this.date);
		String ss = DateFormat(format2).format(this.date);

		return s + " at " + ss;
	}

	Padding getContainer(){
		Card c = new Card(
			elevation: 2,
			child: Row(
				children: <Widget>[
					Container(
						width: 150,
						decoration: BoxDecoration(border: Border.all(color: themeColor),),
						margin: EdgeInsets.all(10),
						padding: EdgeInsets.all(10),
						child: Text("Spent: ${this.amount}", textAlign: TextAlign.center,style: this.getTextStyle(),),
					),
					Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Text('${this.title}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
							Text('${formated_date()}', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),),
						],
					),
				],
			),
		);
		return helper.add_padding(widget: c, pad: 10);
	}
}
