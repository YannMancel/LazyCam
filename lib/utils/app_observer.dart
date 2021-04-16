import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'logger.dart';

enum ProviderEvent { Add, Update, Dependencies, Dispose }

extension $ProviderEvent on ProviderEvent {
  int get lengthMax {
    return ProviderEvent.values
        .map((e) => e.toString().split('.').last.length)
        .reduce((a, b) => (a < b) ? b : a);
  }

  String get nameInUpperCase => this.toString().split('.').last.toUpperCase();
}

class AppObserver extends ProviderObserver {
  const AppObserver();

  String _eventMessage({
    required ProviderEvent providerEvent,
    required ProviderBase provider,
    Object? value,
  }) {
    final num =
        provider.hashCode.toUnsigned(20).toRadixString(16).padLeft(5, '0');
    final event =
        providerEvent.nameInUpperCase.padRight(providerEvent.lengthMax);
    final name = provider.name ?? provider.runtimeType;
    final result = (value != null) ? '- $value' : '';

    return '[$num] [$event] $name $result';
  }

  @override
  void didAddProvider(ProviderBase provider, Object? value) {
    Logger.debug(
      message: _eventMessage(
        providerEvent: ProviderEvent.Add,
        provider: provider,
        value: value,
      ),
    );
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? newValue) {
    Logger.info(
      message: _eventMessage(
        providerEvent: ProviderEvent.Update,
        provider: provider,
        value: newValue,
      ),
    );
  }

  @override
  void mayHaveChanged(ProviderBase provider) {
    Logger.warning(
      message: _eventMessage(
        providerEvent: ProviderEvent.Dependencies,
        provider: provider,
      ),
    );
  }

  @override
  void didDisposeProvider(ProviderBase provider) {
    Logger.wtf(
      message: _eventMessage(
        providerEvent: ProviderEvent.Dispose,
        provider: provider,
      ),
    );
  }
}
