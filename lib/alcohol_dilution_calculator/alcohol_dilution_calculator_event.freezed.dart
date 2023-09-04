// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alcohol_dilution_calculator_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlcoholDilutionCalculatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double initialConcentration)
        initialConcentrationChanged,
    required TResult Function(double targetConcentration)
        targetConcentrationChanged,
    required TResult Function(double solutionVolume) solutionVolumeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double initialConcentration)? initialConcentrationChanged,
    TResult? Function(double targetConcentration)? targetConcentrationChanged,
    TResult? Function(double solutionVolume)? solutionVolumeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double initialConcentration)? initialConcentrationChanged,
    TResult Function(double targetConcentration)? targetConcentrationChanged,
    TResult Function(double solutionVolume)? solutionVolumeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialConcentrationChanged value)
        initialConcentrationChanged,
    required TResult Function(_TargetConcentrationChanged value)
        targetConcentrationChanged,
    required TResult Function(_SolutionVolumeChanged value)
        solutionVolumeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialConcentrationChanged value)?
        initialConcentrationChanged,
    TResult? Function(_TargetConcentrationChanged value)?
        targetConcentrationChanged,
    TResult? Function(_SolutionVolumeChanged value)? solutionVolumeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialConcentrationChanged value)?
        initialConcentrationChanged,
    TResult Function(_TargetConcentrationChanged value)?
        targetConcentrationChanged,
    TResult Function(_SolutionVolumeChanged value)? solutionVolumeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlcoholDilutionCalculatorEventCopyWith<$Res> {
  factory $AlcoholDilutionCalculatorEventCopyWith(
          AlcoholDilutionCalculatorEvent value,
          $Res Function(AlcoholDilutionCalculatorEvent) then) =
      _$AlcoholDilutionCalculatorEventCopyWithImpl<$Res,
          AlcoholDilutionCalculatorEvent>;
}

/// @nodoc
class _$AlcoholDilutionCalculatorEventCopyWithImpl<$Res,
        $Val extends AlcoholDilutionCalculatorEvent>
    implements $AlcoholDilutionCalculatorEventCopyWith<$Res> {
  _$AlcoholDilutionCalculatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialConcentrationChangedCopyWith<$Res> {
  factory _$$_InitialConcentrationChangedCopyWith(
          _$_InitialConcentrationChanged value,
          $Res Function(_$_InitialConcentrationChanged) then) =
      __$$_InitialConcentrationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({double initialConcentration});
}

/// @nodoc
class __$$_InitialConcentrationChangedCopyWithImpl<$Res>
    extends _$AlcoholDilutionCalculatorEventCopyWithImpl<$Res,
        _$_InitialConcentrationChanged>
    implements _$$_InitialConcentrationChangedCopyWith<$Res> {
  __$$_InitialConcentrationChangedCopyWithImpl(
      _$_InitialConcentrationChanged _value,
      $Res Function(_$_InitialConcentrationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialConcentration = null,
  }) {
    return _then(_$_InitialConcentrationChanged(
      null == initialConcentration
          ? _value.initialConcentration
          : initialConcentration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_InitialConcentrationChanged implements _InitialConcentrationChanged {
  const _$_InitialConcentrationChanged(this.initialConcentration);

  @override
  final double initialConcentration;

  @override
  String toString() {
    return 'AlcoholDilutionCalculatorEvent.initialConcentrationChanged(initialConcentration: $initialConcentration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialConcentrationChanged &&
            (identical(other.initialConcentration, initialConcentration) ||
                other.initialConcentration == initialConcentration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialConcentration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialConcentrationChangedCopyWith<_$_InitialConcentrationChanged>
      get copyWith => __$$_InitialConcentrationChangedCopyWithImpl<
          _$_InitialConcentrationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double initialConcentration)
        initialConcentrationChanged,
    required TResult Function(double targetConcentration)
        targetConcentrationChanged,
    required TResult Function(double solutionVolume) solutionVolumeChanged,
  }) {
    return initialConcentrationChanged(initialConcentration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double initialConcentration)? initialConcentrationChanged,
    TResult? Function(double targetConcentration)? targetConcentrationChanged,
    TResult? Function(double solutionVolume)? solutionVolumeChanged,
  }) {
    return initialConcentrationChanged?.call(initialConcentration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double initialConcentration)? initialConcentrationChanged,
    TResult Function(double targetConcentration)? targetConcentrationChanged,
    TResult Function(double solutionVolume)? solutionVolumeChanged,
    required TResult orElse(),
  }) {
    if (initialConcentrationChanged != null) {
      return initialConcentrationChanged(initialConcentration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialConcentrationChanged value)
        initialConcentrationChanged,
    required TResult Function(_TargetConcentrationChanged value)
        targetConcentrationChanged,
    required TResult Function(_SolutionVolumeChanged value)
        solutionVolumeChanged,
  }) {
    return initialConcentrationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialConcentrationChanged value)?
        initialConcentrationChanged,
    TResult? Function(_TargetConcentrationChanged value)?
        targetConcentrationChanged,
    TResult? Function(_SolutionVolumeChanged value)? solutionVolumeChanged,
  }) {
    return initialConcentrationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialConcentrationChanged value)?
        initialConcentrationChanged,
    TResult Function(_TargetConcentrationChanged value)?
        targetConcentrationChanged,
    TResult Function(_SolutionVolumeChanged value)? solutionVolumeChanged,
    required TResult orElse(),
  }) {
    if (initialConcentrationChanged != null) {
      return initialConcentrationChanged(this);
    }
    return orElse();
  }
}

abstract class _InitialConcentrationChanged
    implements AlcoholDilutionCalculatorEvent {
  const factory _InitialConcentrationChanged(
      final double initialConcentration) = _$_InitialConcentrationChanged;

  double get initialConcentration;
  @JsonKey(ignore: true)
  _$$_InitialConcentrationChangedCopyWith<_$_InitialConcentrationChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TargetConcentrationChangedCopyWith<$Res> {
  factory _$$_TargetConcentrationChangedCopyWith(
          _$_TargetConcentrationChanged value,
          $Res Function(_$_TargetConcentrationChanged) then) =
      __$$_TargetConcentrationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({double targetConcentration});
}

/// @nodoc
class __$$_TargetConcentrationChangedCopyWithImpl<$Res>
    extends _$AlcoholDilutionCalculatorEventCopyWithImpl<$Res,
        _$_TargetConcentrationChanged>
    implements _$$_TargetConcentrationChangedCopyWith<$Res> {
  __$$_TargetConcentrationChangedCopyWithImpl(
      _$_TargetConcentrationChanged _value,
      $Res Function(_$_TargetConcentrationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetConcentration = null,
  }) {
    return _then(_$_TargetConcentrationChanged(
      null == targetConcentration
          ? _value.targetConcentration
          : targetConcentration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_TargetConcentrationChanged implements _TargetConcentrationChanged {
  const _$_TargetConcentrationChanged(this.targetConcentration);

  @override
  final double targetConcentration;

  @override
  String toString() {
    return 'AlcoholDilutionCalculatorEvent.targetConcentrationChanged(targetConcentration: $targetConcentration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TargetConcentrationChanged &&
            (identical(other.targetConcentration, targetConcentration) ||
                other.targetConcentration == targetConcentration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetConcentration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TargetConcentrationChangedCopyWith<_$_TargetConcentrationChanged>
      get copyWith => __$$_TargetConcentrationChangedCopyWithImpl<
          _$_TargetConcentrationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double initialConcentration)
        initialConcentrationChanged,
    required TResult Function(double targetConcentration)
        targetConcentrationChanged,
    required TResult Function(double solutionVolume) solutionVolumeChanged,
  }) {
    return targetConcentrationChanged(targetConcentration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double initialConcentration)? initialConcentrationChanged,
    TResult? Function(double targetConcentration)? targetConcentrationChanged,
    TResult? Function(double solutionVolume)? solutionVolumeChanged,
  }) {
    return targetConcentrationChanged?.call(targetConcentration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double initialConcentration)? initialConcentrationChanged,
    TResult Function(double targetConcentration)? targetConcentrationChanged,
    TResult Function(double solutionVolume)? solutionVolumeChanged,
    required TResult orElse(),
  }) {
    if (targetConcentrationChanged != null) {
      return targetConcentrationChanged(targetConcentration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialConcentrationChanged value)
        initialConcentrationChanged,
    required TResult Function(_TargetConcentrationChanged value)
        targetConcentrationChanged,
    required TResult Function(_SolutionVolumeChanged value)
        solutionVolumeChanged,
  }) {
    return targetConcentrationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialConcentrationChanged value)?
        initialConcentrationChanged,
    TResult? Function(_TargetConcentrationChanged value)?
        targetConcentrationChanged,
    TResult? Function(_SolutionVolumeChanged value)? solutionVolumeChanged,
  }) {
    return targetConcentrationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialConcentrationChanged value)?
        initialConcentrationChanged,
    TResult Function(_TargetConcentrationChanged value)?
        targetConcentrationChanged,
    TResult Function(_SolutionVolumeChanged value)? solutionVolumeChanged,
    required TResult orElse(),
  }) {
    if (targetConcentrationChanged != null) {
      return targetConcentrationChanged(this);
    }
    return orElse();
  }
}

abstract class _TargetConcentrationChanged
    implements AlcoholDilutionCalculatorEvent {
  const factory _TargetConcentrationChanged(final double targetConcentration) =
      _$_TargetConcentrationChanged;

  double get targetConcentration;
  @JsonKey(ignore: true)
  _$$_TargetConcentrationChangedCopyWith<_$_TargetConcentrationChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SolutionVolumeChangedCopyWith<$Res> {
  factory _$$_SolutionVolumeChangedCopyWith(_$_SolutionVolumeChanged value,
          $Res Function(_$_SolutionVolumeChanged) then) =
      __$$_SolutionVolumeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({double solutionVolume});
}

/// @nodoc
class __$$_SolutionVolumeChangedCopyWithImpl<$Res>
    extends _$AlcoholDilutionCalculatorEventCopyWithImpl<$Res,
        _$_SolutionVolumeChanged>
    implements _$$_SolutionVolumeChangedCopyWith<$Res> {
  __$$_SolutionVolumeChangedCopyWithImpl(_$_SolutionVolumeChanged _value,
      $Res Function(_$_SolutionVolumeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? solutionVolume = null,
  }) {
    return _then(_$_SolutionVolumeChanged(
      null == solutionVolume
          ? _value.solutionVolume
          : solutionVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SolutionVolumeChanged implements _SolutionVolumeChanged {
  const _$_SolutionVolumeChanged(this.solutionVolume);

  @override
  final double solutionVolume;

  @override
  String toString() {
    return 'AlcoholDilutionCalculatorEvent.solutionVolumeChanged(solutionVolume: $solutionVolume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SolutionVolumeChanged &&
            (identical(other.solutionVolume, solutionVolume) ||
                other.solutionVolume == solutionVolume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, solutionVolume);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SolutionVolumeChangedCopyWith<_$_SolutionVolumeChanged> get copyWith =>
      __$$_SolutionVolumeChangedCopyWithImpl<_$_SolutionVolumeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double initialConcentration)
        initialConcentrationChanged,
    required TResult Function(double targetConcentration)
        targetConcentrationChanged,
    required TResult Function(double solutionVolume) solutionVolumeChanged,
  }) {
    return solutionVolumeChanged(solutionVolume);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double initialConcentration)? initialConcentrationChanged,
    TResult? Function(double targetConcentration)? targetConcentrationChanged,
    TResult? Function(double solutionVolume)? solutionVolumeChanged,
  }) {
    return solutionVolumeChanged?.call(solutionVolume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double initialConcentration)? initialConcentrationChanged,
    TResult Function(double targetConcentration)? targetConcentrationChanged,
    TResult Function(double solutionVolume)? solutionVolumeChanged,
    required TResult orElse(),
  }) {
    if (solutionVolumeChanged != null) {
      return solutionVolumeChanged(solutionVolume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialConcentrationChanged value)
        initialConcentrationChanged,
    required TResult Function(_TargetConcentrationChanged value)
        targetConcentrationChanged,
    required TResult Function(_SolutionVolumeChanged value)
        solutionVolumeChanged,
  }) {
    return solutionVolumeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialConcentrationChanged value)?
        initialConcentrationChanged,
    TResult? Function(_TargetConcentrationChanged value)?
        targetConcentrationChanged,
    TResult? Function(_SolutionVolumeChanged value)? solutionVolumeChanged,
  }) {
    return solutionVolumeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialConcentrationChanged value)?
        initialConcentrationChanged,
    TResult Function(_TargetConcentrationChanged value)?
        targetConcentrationChanged,
    TResult Function(_SolutionVolumeChanged value)? solutionVolumeChanged,
    required TResult orElse(),
  }) {
    if (solutionVolumeChanged != null) {
      return solutionVolumeChanged(this);
    }
    return orElse();
  }
}

abstract class _SolutionVolumeChanged
    implements AlcoholDilutionCalculatorEvent {
  const factory _SolutionVolumeChanged(final double solutionVolume) =
      _$_SolutionVolumeChanged;

  double get solutionVolume;
  @JsonKey(ignore: true)
  _$$_SolutionVolumeChangedCopyWith<_$_SolutionVolumeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
