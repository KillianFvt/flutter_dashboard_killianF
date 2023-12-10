import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeartBeat extends StatefulWidget {
  const HeartBeat({super.key});

  @override
  State<HeartBeat> createState() => _HeartBeatState();
}

class _HeartBeatState extends State<HeartBeat> with SingleTickerProviderStateMixin {

  static const _durationMilliseconds = 500;

  double _heartBeatScale = 1.0;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: _durationMilliseconds),
    vsync: this,
  )..addListener(() {
    setState(() => _heartBeatScale = _animation.value);
    if (_controller.isCompleted) {
      _controller.repeat(reverse: true);
    }
  })..forward();

  late final Animation<double> _animationCurve = CurvedAnimation(parent: _controller, curve: Curves.easeInSine);

  late final Animation<double> _animation = Tween(begin: 0.8, end: 1.3).animate(_animationCurve);

  final Color endColor = const Color(0XFFDB3535);

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: _heartBeatScale,
      child: Icon(
        FontAwesomeIcons.heartPulse,
        color: Color.lerp(
            Colors.white,
            endColor,
            _animation.value
        ),
      ),
    );
  }
}
