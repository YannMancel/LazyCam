import 'package:flutter/material.dart';

import '../widgets/time_selector.dart';

class TimeSelectorPage extends StatelessWidget {
  const TimeSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomScrollView(
        slivers: [
          _AppBar(),
          _TimeCycles(),
          _Actions(),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('Timer'),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO final cyclesController = useProvider(cyclesProvider.notifier);
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: null, // TODO: copy action
                child: const Icon(Icons.copy),
              ),
              ElevatedButton(
                onPressed: null, // TODO: add action
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TimeCycles extends StatelessWidget {
  const _TimeCycles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO final cycles = useProvider(cyclesProvider);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => _CycleCard(), // TODO: cycle: cycles[index]
          childCount: 4,
        ),
      ),
    );
  }
}

// TODO drag & drop card
class _CycleCard extends StatelessWidget {
  const _CycleCard({Key? key}) : super(key: key);

  // TODO: const _CycleCard({Key? key, required Cycle cycle,}) : _cycle = cycle, super(key: key);

  // TODO: final Cycle _cycle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // TODO: create TextStyles in utils
              Text('Cycle 1', style: TextStyle(fontSize: 20.0)),
              Divider(),
              _Section(title: 'Time'),
              _Section(title: 'Tempo (rep/min)'),
              _Section(title: 'Pause'),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: callback of TimerSelector
class _Section extends StatelessWidget {
  const _Section({
    Key? key,
    required String title,
  })   : _title = title,
        super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(_title)),
        Expanded(flex: 2, child: const TimerSelector()),
      ],
    );
  }
}
