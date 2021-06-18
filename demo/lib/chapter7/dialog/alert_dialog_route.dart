import 'package:flutter/material.dart';

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
            child: Text('SimpleDialog'))
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
}
