import 'dart:async';

import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  int _start = 120; // Countdown duration in seconds
  Timer? _timer;
  bool _isTiming = false; // Track if the timer is running

  void startTimer() {
    setState(() {
      _isTiming = true; // Start timing
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          _timer!.cancel();
          _isTiming = false; // Stop timing
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  void resendCode() {
    setState(() {
      _start = 120; // Reset countdown
    });
    _timer?.cancel(); // Cancel existing timer
    startTimer(); // Start the countdown again
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Kirim Ulang Kode ? ",
          style: TextStyle(
              fontSize: 14, color: Colors.white, fontFamily: "Souvenir"),
        ),
        Center(
          child: GestureDetector(
            onTap: !_isTiming
                ? resendCode
                : null, // Only resend if timer is not running
            child: Text(
              _isTiming
                  ? ' ${_start ~/ 60}:${(_start % 60).toString().padLeft(2, '0')}'
                  : 'Ulang',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Souvenir"),
            ),
          ),
        ),
      ],
    );
  }
}
