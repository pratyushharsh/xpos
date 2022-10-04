import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/error_notification_bloc.dart';

class ErrorNotification extends StatelessWidget {
  const ErrorNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ErrorNotificationBloc, ErrorNotificationState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: state.errors
                .map((e) => ErrorNotificationCard(error: e,))
                .toList(),
          ),
        );
      },
    );
  }
}

class ErrorNotificationCard extends StatelessWidget {
  final String error;
  const ErrorNotificationCard({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(error)
              ],
            ),
          ),
          const Positioned(child: Icon(Icons.close), top: 0, right: 0)
        ],
      ),
    );
  }
}
