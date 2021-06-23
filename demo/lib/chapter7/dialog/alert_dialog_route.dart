import 'package:demo/chapter7/dialog/dialog_checkbox.dart';
import 'package:flutter/material.dart';
import 'stateful_builder.dart';

class AlertDialogRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            bool delete = await showDeleteConfirmDialog(context);
            if (delete == null) {
              print('取消删除');
            } else {
              print('已确认删除');
            }
          },
          child: Text('对话框'),
        ),
        ElevatedButton(
            onPressed: () => changeLanguage(context),
            child: Text('SimpleDialog')),
        ElevatedButton(
          onPressed: () => showListDialog(context),
          child: Text('showListDialog'),
        ),
        ElevatedButton(
          onPressed: () => showCustomDialogTest(context),
          child: Text('showCustomDialog'),
        ),
        ElevatedButton(
          onPressed: () => showDeleteConfirmDialog3Test(context),
          child: Text('showDeleteConfirmDialog3'),
        ),
        ElevatedButton(
          onPressed: () => showDeleteConfirmDialog4Test(context),
          child: Text('showDeleteConfirmDialog4'),
        ),
        ElevatedButton(
          onPressed: () => showDeleteConfirmDialog5Test(context),
          child: Text('showDeleteConfirmDialog5'),
        ),
        ElevatedButton(
          onPressed: () => showModalBottomSheetTest(context),
          child: Text('showModalBottomSheetTest'),
        ),
        ElevatedButton(
          onPressed: () => showBottomSheetTest(context),
          child: Text('showBottomSheetTest'),
        ),
        ElevatedButton(
          onPressed: () => showLoadingDialog(context),
          child: Text('showLoadingDialog'),
        ),
        ElevatedButton(
          onPressed: () => showDatePickerTest(context),
          child: Text('showDatePickerTest'),
        ),
      ],
    );
  }

  Future showDeleteConfirmDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Text('您确定要删除当前文件吗？'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('取消'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('删除'),
            )
          ],
        );
      },
    );
  }

  Future changeLanguage(BuildContext context) async {
    int i = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('请选择语言'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text('中文简体'),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text('美国英语'),
                ),
              ),
            ],
          );
        });
    if (i != null) {
      print('选择了：${i == 1 ? "中文简体" : "美国英语"}');
    }
  }

  Future showListDialog(BuildContext context) async {
    int index = await showDialog(
        context: context,
        builder: (BuildContext context) {
          var child = Column(
            children: [
              ListTile(
                title: Text('请选择'),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('$index'),
                      onTap: () => Navigator.of(context).pop(index),
                    );
                  },
                  itemCount: 30,
                ),
              ),
            ],
          );
          return Dialog(
            child: child,
          );
        });
    if (index != null) {
      print('点击了:$index');
    }
  }

  Future<T> showCustomDialog<T>(
      {@required BuildContext context,
      bool barrierDismissible = true,
      WidgetBuilder builder}) {
    final ThemeData theme = Theme.of(context);
    return showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation<double> animation,
          Animation<double> sencondaryAnimation) {
        final Widget pageChild = Builder(builder: builder);
        return SafeArea(
          child: Builder(builder: (BuildContext context) {
            return theme != null
                ? Theme(data: theme, child: pageChild)
                : pageChild;
          }),
        );
      },
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black87,
      transitionDuration: const Duration(milliseconds: 150),
      transitionBuilder: _buildMaterialDialogTransitions,
    );
  }

  Widget _buildMaterialDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: animation, curve: Curves.easeOut),
      child: child,
    );
  }

  void showCustomDialogTest(BuildContext context) async {
    bool ret = await showCustomDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text('您确认要删除当前文件吗？'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('取消')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text('删除')),
            ],
          );
        });
    if (ret != null) {
      print('用户选择了$ret');
    }
  }

  Future<bool> showDeleteConfirmDialog3(BuildContext context) {
    bool _withTree = false;
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('您确认要删除当前文件吗？'),
              Row(
                children: [
                  Text('同时删除子目录？'),
                  DialogCheckbox(
                    value: _withTree,
                    onChanged: (value) {
                      _withTree = !_withTree;
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('取消')),
            TextButton(
                onPressed: () => Navigator.of(context).pop(_withTree),
                child: Text('删除')),
          ],
        );
      },
    );
  }

  void showDeleteConfirmDialog3Test(BuildContext context) async {
    bool deleteTree = await showDeleteConfirmDialog3(context);
    if (deleteTree == null) {
      print('取消删除');
    } else {
      print('同时删除子目录：$deleteTree');
    }
  }

  Future<bool> showDeleteConfirmDialog4(BuildContext context) {
    bool _withTree = false;
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('您确认要删除当前文件吗？'),
              Row(
                children: [
                  Text('同时删除子目录？'),
                  MyStatefulBuilder(
                    builder: (context, _setState) {
                      return Checkbox(
                          value: _withTree,
                          onChanged: (value) {
                            _setState(() {
                              _withTree = !_withTree;
                            });
                          });
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('取消')),
            TextButton(
                onPressed: () => Navigator.of(context).pop(_withTree),
                child: Text('删除')),
          ],
        );
      },
    );
  }

  void showDeleteConfirmDialog4Test(BuildContext context) async {
    bool deleteTree = await showDeleteConfirmDialog4(context);
    if (deleteTree == null) {
      print('取消删除');
    } else {
      print('同时删除子目录：$deleteTree');
    }
  }

  Future<bool> showDeleteConfirmDialog5(BuildContext context) {
    bool _withTree = false;
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('您确认要删除当前文件吗？'),
              Row(
                children: [
                  Text('同时删除子目录？'),
                  Checkbox(
                      value: _withTree,
                      onChanged: (value) {
                        (context as Element).markNeedsBuild();
                        _withTree = !_withTree;
                      }),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('取消')),
            TextButton(
                onPressed: () => Navigator.of(context).pop(_withTree),
                child: Text('删除')),
          ],
        );
      },
    );
  }

  void showDeleteConfirmDialog5Test(BuildContext context) async {
    bool deleteTree = await showDeleteConfirmDialog5(context);
    if (deleteTree == null) {
      print('取消删除');
    } else {
      print('同时删除子目录：$deleteTree');
    }
  }

  Future<int> showModalBottomSheetTest(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('$index'),
                onTap: () => Navigator.of(context).pop(index),
              );
            },
            itemCount: 30,
          );
        });
  }

  PersistentBottomSheetController<int> showBottomSheetTest(
      BuildContext context) {
    return showBottomSheet(
        context: context,
        builder: (context) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('$index'),
                onTap: () {
                  print('$index');
                  Navigator.of(context).pop();
                },
              );
            },
            itemCount: 30,
          );
        });
  }

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Text('正在加载，请稍后...'),
              )
            ],
          ),
        );
      },
    );
  }

  Future<DateTime> showDatePickerTest(BuildContext context) {
    var date = DateTime.now();
    return showDatePicker(
      context: context,
      initialDate: date,
      firstDate: date,
      lastDate: date.add(Duration(days: 30)),
    );
  }
}
