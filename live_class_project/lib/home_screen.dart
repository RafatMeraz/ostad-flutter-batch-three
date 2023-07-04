import 'package:flutter/material.dart';
import 'package:live_class_project/add_new_product_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CRUD'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddNewProductScreen()));
          },
          child: const Icon(Icons.add),
        ),
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        titlePadding: const EdgeInsets.only(left: 16),
                        contentPadding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                        title: Row(
                          children: [
                            const Text('Choose an action'),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.close),
                            )
                          ],
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              onTap: () {},
                              leading: const Icon(Icons.edit),
                              title: const Text('Edit'),
                            ),
                            const Divider(
                              height: 0,
                            ),
                            ListTile(
                              onTap: () {},
                              leading:
                                  const Icon(Icons.delete_forever_outlined),
                              title: const Text('Delete'),
                            ),
                          ],
                        ),
                      );
                    });
              },
              title: const Text('Product name'),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Product code'),
                  Text('Total price'),
                  Text('Available units'),
                ],
              ),
              leading: Image.network(
                  'https://www.zdnet.com/a/img/resize/cdc2897aa0866725ee447c0f35c730212fa91b7b/2020/12/11/bb70ffc0-7d9a-4ed6-a29d-67e9044f2344/top.jpg?auto=webp&width=1280',
                  width: 50,
                  errorBuilder: (context, obj, stackTrace) {
                    return const Icon(
                      Icons.image,
                      size: 32,
                    );
              }),
              trailing: const Text('Unit price'),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ));
  }
}
