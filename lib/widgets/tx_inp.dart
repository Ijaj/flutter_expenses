// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import '../helper.dart';

class TransactionInput extends StatelessWidget {

	final amount_text_c = new TextEditingController();
	final title_text_c = new TextEditingController();
	final Function add_tx_click;

	TransactionInput(this.add_tx_click);

  	@override
  	Widget build(BuildContext context) {
		
		return Card(
			margin: EdgeInsets.all(10),
			child: Container(
				padding: EdgeInsets.all(10),
				child: Column(
					children: [
					  	helper.add_padding(
							widget: TextField(
								controller: amount_text_c,
								decoration: InputDecoration(
									labelText: 'Enter amount: '
								),
							), 
							pad: 10
						),
						helper.add_padding(
							widget: TextField(
								controller: title_text_c,
								decoration: InputDecoration(
									labelText: 'Enter title: '
								),
							), 
							pad: 10
						),
						helper.add_padding(
							widget: TextButton(
								onPressed: (){
									add_tx_click(amount_text_c.text, title_text_c.text);
									}, 
								child: Text("Add transaction"), 
								style: ButtonStyle(
									foregroundColor: MaterialStateProperty.all(Colors.purple)
								),
							), 
							pad: 10
						),
					],
				),
			),
		);
  	}
}
