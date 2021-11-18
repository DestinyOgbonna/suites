import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/views/customer_service_chat/customer_service_chatviewmodel.dart';

class CustomerChatView extends StatelessWidget {
  const CustomerChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CustomerChatViewModel>.reactive(
        viewModelBuilder: () => CustomerChatViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: Container(
              child: Center(child: const Text('Customer Service Chat Room')),
            ),
          );
        });
  }
}
