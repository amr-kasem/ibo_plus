import 'package:flutter/material.dart';

class RefreshBar extends StatelessWidget {
  const RefreshBar({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Text(
            hint,
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(
            color: Colors.amber,
            backgroundColor: Colors.amber.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
