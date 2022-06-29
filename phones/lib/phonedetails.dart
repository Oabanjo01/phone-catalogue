// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'phones.dart';
import 'dart:io';

class Phonedetails extends StatefulWidget {
  const Phonedetails({ Key? key, required this.phone}) : super(key: key);

  final Phone phone;
  @override
  _PhonedetailsState createState() => _PhonedetailsState();
}

class _PhonedetailsState extends State<Phonedetails> {
  int _slidervalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.phone.label),
      ),
      body: SafeArea(
        child: Column(children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(
              image: AssetImage(widget.phone.imageUrl),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(widget.phone.label,
          style: TextStyle(
            fontSize: 18.0
          ),
          ),
          Expanded(
            child: ListView.builder(
            padding: const EdgeInsets.all(7.0),
            itemCount: widget.phone.details.length, 
            itemBuilder: (BuildContext context, int index) {
              final detail = widget.phone.details[index];
              return Text(
                '''${detail.note} 
${detail.modelType}, 
${detail.phonePrice}
${detail.phonePrice * _slidervalue}
                '''
                );
              },
            ),
          ),
          Slider(
            min: 0,
            max: 10,
            divisions: 11,
            label: '${_slidervalue * widget.phone.amount} phones',
            value: _slidervalue.toDouble(),
            onChanged: (newvalue) {
              setState(() {
                _slidervalue = newvalue.round();
              });
            },
            activeColor: Colors.black,
            inactiveColor: Colors.transparent,
          )
        ],
        ),
      ),
    );
  }
}