import 'dart:math';
import 'package:flutter/material.dart';
import 'transaction.dart';
import 'helper.dart';

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

	List<Transaction> tr_list = [];

  	@override
  	Widget build(BuildContext context) {

		Random rd = new Random();
		for(int i = 0; i < 2; i++){
			tr_list.add(new Transaction(
				id: i.toString(), 
				title: "Transaction NO: $i", 
				amount: rd.nextInt(100), 
				date: DateTime.now()
				)
			);	
		}

    	return Scaffold(
      		appBar: AppBar(
        		title: Text("Transaction tracker"),
      		),
			body: Center(
				child: Column(
					children: [
						Container(
							width: double.infinity,
							child: Card(
								child: Text("Transaction List",),
								elevation: 10,
								color: Colors.blue.shade900,
							),
						),
						Card(
							margin: EdgeInsets.all(10),
							child: Container(
								padding: EdgeInsets.all(10),
							  	child: Column(
							  		children: [
							  			helper.add_padding(
											widget: TextField(
												decoration: InputDecoration(
													labelText: 'Enter amount: '
												),
											), 
											pad: 10
										),
										helper.add_padding(
											widget: TextField(
												decoration: InputDecoration(
													labelText: 'Enter title: '
												),
											), 
											pad: 10
										),
										helper.add_padding(
											widget: TextButton(
												onPressed: (){}, 
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
						),
						SingleChildScrollView(
							child: Column(
								children: <Widget>[
									for(Transaction item in tr_list) item.getContainer(),
								],
							),
						),
					],
				),
			),
    	);
  	}
}
