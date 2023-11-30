import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Progress indicators')
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular progress indicator'),
          SizedBox(height: 30,),
          CircularProgressIndicator(strokeAlign: 2,),
          SizedBox(height: 20,),
          Text('Circular y Linear controlado'),
          SizedBox(height: 20,),
          _ControlledProgresIndicator(),
          
      ],
      ),
    );
  }
}


class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 6000), (value) {
        return (value*2) / 100;
      }).takeWhile((value) => value <= 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data??0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(strokeWidth: 2, value: progressValue,),
              const SizedBox(width: 20),
              Text('${(progressValue*100).toInt()} %'),
              const SizedBox(width: 20),
              Expanded(child: LinearProgressIndicator(value: progressValue))
            ],
          ),
        );
      }
    );
  }
}