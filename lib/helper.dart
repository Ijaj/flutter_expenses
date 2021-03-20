import 'package:flutter/material.dart';
import 'transaction.dart';

class helper{
	static Padding add_padding({var widget, double pad}){
		Padding p = new Padding(child: widget, padding: EdgeInsets.all(pad),);
		return p;
	}
}