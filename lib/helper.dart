// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class helper{
	static Padding add_padding({var widget, double pad}){
		Padding p = new Padding(child: widget, padding: EdgeInsets.all(pad),);
		return p;
	}
}
