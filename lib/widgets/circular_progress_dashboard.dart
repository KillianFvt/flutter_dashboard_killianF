import 'package:flutter/material.dart';

class CircularProgressDashboard extends StatefulWidget {

  const CircularProgressDashboard({super.key});

  @override
  State<CircularProgressDashboard> createState() => _CircularProgressDashboardState();
}

class _CircularProgressDashboardState extends State<CircularProgressDashboard> with SingleTickerProviderStateMixin {

  static const _durationMilliseconds = 5000;

  double _circularValue = 1.0;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: _durationMilliseconds),
    vsync: this,
  )..addListener(() {
    setState(() => _circularValue = _animation.value);
    if (_controller.isCompleted) {
      // 1s delay before repeating
      Future.delayed(const Duration(seconds: 1), () {
        _controller.repeat(reverse: true);
      });
    }
  })..forward();

  late final Animation<double> _animationCurve = CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic);

  late final Animation<double> _animation = Tween(begin: 0.0, end: 1.0).animate(_animationCurve);

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(
              value: _circularValue,
              strokeCap: StrokeCap.round,
              strokeWidth: 5.0,
              strokeAlign: 5,
              valueColor: const AlwaysStoppedAnimation(Colors.yellow),
              backgroundColor: Colors.grey.shade700,
            ),
          ),
        ),

        SizedBox(
          height: 150,
          width: 150,
          child: Center(
            child: Text(
              "${(_circularValue * 100).toInt()}%",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.yellow,
                fontSize: 16.0,
                fontFamily: 'Ethnocentric',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
