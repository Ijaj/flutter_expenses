// ignore_for_file: non_constant_identifier_names
import 'dart:math';

class Transaction {
  	final String id;
  	final String title;
	final int amount;
	final DateTime date;

	Transaction({this.id, this.title, this.amount, this.date});

	static List<Transaction> get_all(){
		List<Transaction> tr_list = [];
		Random rd = new Random();
		for(int i = 0; i < 20; i++){
			tr_list.add(new Transaction(
				id: i.toString(), 
				title: "Transaction NO: $i", 
				amount: rd.nextInt(100), 
				date: DateTime.now()
				)
			);	
		}
		return tr_list;
	}
}
