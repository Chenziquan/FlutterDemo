import 'package:flutter/material.dart';

class TextFieldSet extends StatelessWidget {
  TextEditingController _nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nameEditingController.addListener(() {
      print(_nameEditingController.text);
    });
    _nameEditingController.text = '默认用户名';
    _nameEditingController.selection = TextSelection(
      baseOffset: 2,
      extentOffset: _nameEditingController.text.length,
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名或者邮箱',
              prefixIcon: Icon(Icons.person),
            ),
            onChanged: (v) {
              print("name:" + v);
            },
            controller: _nameEditingController,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '您的登录密码',
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            onChanged: (v) {
              print("pswd:" + v);
            },
          ),
        ],
      ),
    );
  }
}
