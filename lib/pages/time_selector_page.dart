import 'package:flutter/material.dart';

import '../widgets/widgets_link.dart';

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
    return const SliverAppBar(
      title: Text('Timer'),
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
          (_, index) =>
              _CycleCard(cycleId: index), // TODO: cycle: cycles[index]
          childCount: 4,
        ),
      ),
    );
  }
}

// TODO drag & drop card
class _CycleCard extends StatelessWidget {
  const _CycleCard({
    Key? key,
    required int cycleId,
  })   : _cycleId = cycleId,
        super(key: key);

  // TODO: const _CycleCard({Key? key, required Cycle cycle,}) : _cycle = cycle, super(key: key);

  // TODO: final Cycle _cycle;
  final int _cycleId;

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
            children: [
              // TODO: create TextStyles in utils
              const Text('Cycle 1', style: TextStyle(fontSize: 20.0)),
              const Divider(),
              const _TimeSection(title: 'Time (min:s)'),
              _TempoSection(
                title: 'Tempo (rep/min)',
                cycleId: _cycleId,
              ),
              const _TimeSection(title: 'Pause (min:s)'),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: callback of TimerSelector
class _TimeSection extends StatelessWidget {
  const _TimeSection({
    Key? key,
    required String title,
  })   : _title = title,
        super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(_title),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const TimerSelector(),
          ),
        ),
      ],
    );
  }
}

// TODO: callback of NumberSelector
class _TempoSection extends StatelessWidget {
  const _TempoSection({
    Key? key,
    required String title,
    required int cycleId,
  })   : _title = title,
        _cycleId = cycleId,
        super(key: key);

  final String _title;
  final int _cycleId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(_title),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: NumberSelector(cycleId: _cycleId),
          ),
        ),
      ],
    );
  }
}
