import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:suites/views/customer_service_chat/customer_service_chatviewmodel.dart';

class CustomerChatView extends StatelessWidget {
  const CustomerChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomerChatViewModel>(
        builder: (context, model, child) {
          return const Scaffold(
            body: Center(child: Text('Customer Service Chat Room')),
          );
        });
  }
}
