import 'package:flutter/material.dart';

class FormRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormRouteState();
}

class _FormRouteState extends State<FormRoute> {
  GlobalKey _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: '用户名',
                  hintText: '用户名或者邮箱',
                  icon: Icon(Icons.person),
                ),
                validator: (v) {
                  return v.trim().length > 0 ? null : '用户名不能为空';
                },
              ),
              TextFormField(
                controller: _pwdController,
                decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '您的登录密码',
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (v) {
                  return v.trim().length > 5 ? null : '密码不能少于5位';
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        child: Text('登录'),
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(
                            TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(15.0),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                        ),
                        onPressed: () {
                          if ((_formKey.currentState as FormState).validate()) {
                            print("验证通过");
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
