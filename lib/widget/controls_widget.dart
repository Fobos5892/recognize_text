import 'package:flutter/material.dart';

class ControlsWidget extends StatelessWidget {
  final VoidCallback onClickedPickImage;
  final VoidCallback onClickedScanText;
  final VoidCallback onClickedClear;

  const ControlsWidget({
    required this.onClickedPickImage,
    required this.onClickedScanText,
    required this.onClickedClear,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: onClickedPickImage, child: const Text('Pick Image')),
          const SizedBox(
            width: 12,
          ),
          TextButton(
              onPressed: onClickedScanText, child: const Text("Scan Text")),
          const SizedBox(
            width: 12,
          ),
          TextButton(
              onPressed: onClickedClear, child: const Text("Clear Text")),
        ],
      );
}
