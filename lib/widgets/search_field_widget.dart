import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset:  const Offset(0, 3),
              )
            ]
        ),
        child: Padding(
          padding:  const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Icon(
                CupertinoIcons.search ,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    decoration:  const InputDecoration(
                        hintText: 'search here !',
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
              const Icon(Icons.filter_list)
            ],
          ),
        ),
      ),
    );
  }

}