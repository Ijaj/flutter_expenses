// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:expenses/widgets/tx_handler.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
  	// This widget is the root of your application.
  	@override
  	Widget build(BuildContext context) {
    	return MaterialApp(
      		title: 'Flutter Demo',
      		home: MyHomePage(),
    	);
  	}
}

class MyHomePage extends StatelessWidget {

	final TextEditingController amount_text_c = new TextEditingController();
	final TextEditingController title_text_c = new TextEditingController();

	void add_trx_click(){
		print(amount_text_c.text);
		print(title_text_c.text);
	}

  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
      		appBar: AppBar(
        		title: Text("Transaction tracker"),
      		),
			body: SingleChildScrollView(
			  child: Center(
			  	child: new TxHandler(),
			  ),
			),
    	);
  	}
}
