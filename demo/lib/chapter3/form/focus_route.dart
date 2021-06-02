import 'package:flutter/material.dart';

class FocusRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FocusRouteState();
}

class _FocusRouteState extends State<FocusRoute> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(
                labelText: 'input1',
              ),
            ),
            TextField(
              focusNode: focusNode2,
              decoration: InputDecoration(
                labelText: 'input2',
              ),
            ),
            Builder(builder: (ctx) {
              return Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (null == focusScopeNode) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    },
                    child: Text('移动焦点'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                    child: Text('隐藏键盘'),
                  ),
                ],
              );
            }),
            TextField(
              decoration: InputDecoration(
                labelText: '请输入用户名',
                prefixIcon: Icon(Icons.person),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            Theme(
              data: Theme.of(context).copyWith(
                hintColor: Colors.grey[200],
                inputDecorationTheme: InputDecorationTheme(
                  labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '用户名或者邮箱',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '您的登录密码',
                      prefixIcon: Icon(Icons.lock),
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: '电子邮件地址',
                  prefixIcon: Icon(Icons.email),
                  border: InputBorder.none,
                ),
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey[200], width: 1.0))),
            ),
          ],
        ),
      ),
    );
  }
}
