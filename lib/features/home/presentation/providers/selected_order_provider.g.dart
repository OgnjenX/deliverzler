// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_order_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedOrderHash() => r'6f32a890077e74514e108bb80b92d8dfe589a6da';

/// See also [selectedOrder].
@ProviderFor(selectedOrder)
final selectedOrderProvider = AutoDisposeProvider<Option<AppOrder>>.internal(
  selectedOrder,
  name: r'selectedOrderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedOrderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SelectedOrderRef = AutoDisposeProviderRef<Option<AppOrder>>;
String _$selectedOrderIdHash() => r'2f92dff28f4e8e4ba8f4022e0c20706cede74494';

/// See also [SelectedOrderId].
@ProviderFor(SelectedOrderId)
final selectedOrderIdProvider =
    AutoDisposeNotifierProvider<SelectedOrderId, Option<String>>.internal(
  SelectedOrderId.new,
  name: r'selectedOrderIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedOrderIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedOrderId = AutoDisposeNotifier<Option<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
