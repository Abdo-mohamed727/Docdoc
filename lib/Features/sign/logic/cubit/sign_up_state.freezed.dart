// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>()';
}


}

/// @nodoc
class $SignUpStateCopyWith<T,$Res>  {
$SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns<T> on SignUpState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SignUpLoading<T> value)?  signuploading,TResult Function( SignUpSuccess<T> value)?  signupsuccess,TResult Function( SignUpFailure<T> value)?  signupfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignUpLoading() when signuploading != null:
return signuploading(_that);case SignUpSuccess() when signupsuccess != null:
return signupsuccess(_that);case SignUpFailure() when signupfailure != null:
return signupfailure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SignUpLoading<T> value)  signuploading,required TResult Function( SignUpSuccess<T> value)  signupsuccess,required TResult Function( SignUpFailure<T> value)  signupfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SignUpLoading():
return signuploading(_that);case SignUpSuccess():
return signupsuccess(_that);case SignUpFailure():
return signupfailure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SignUpLoading<T> value)?  signuploading,TResult? Function( SignUpSuccess<T> value)?  signupsuccess,TResult? Function( SignUpFailure<T> value)?  signupfailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignUpLoading() when signuploading != null:
return signuploading(_that);case SignUpSuccess() when signupsuccess != null:
return signupsuccess(_that);case SignUpFailure() when signupfailure != null:
return signupfailure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signuploading,TResult Function( T data)?  signupsuccess,TResult Function( String errorMessage)?  signupfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignUpLoading() when signuploading != null:
return signuploading();case SignUpSuccess() when signupsuccess != null:
return signupsuccess(_that.data);case SignUpFailure() when signupfailure != null:
return signupfailure(_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signuploading,required TResult Function( T data)  signupsuccess,required TResult Function( String errorMessage)  signupfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SignUpLoading():
return signuploading();case SignUpSuccess():
return signupsuccess(_that.data);case SignUpFailure():
return signupfailure(_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signuploading,TResult? Function( T data)?  signupsuccess,TResult? Function( String errorMessage)?  signupfailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignUpLoading() when signuploading != null:
return signuploading();case SignUpSuccess() when signupsuccess != null:
return signupsuccess(_that.data);case SignUpFailure() when signupfailure != null:
return signupfailure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SignUpState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.initial()';
}


}




/// @nodoc


class SignUpLoading<T> implements SignUpState<T> {
  const SignUpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.signuploading()';
}


}




/// @nodoc


class SignUpSuccess<T> implements SignUpState<T> {
  const SignUpSuccess(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSuccessCopyWith<T, SignUpSuccess<T>> get copyWith => _$SignUpSuccessCopyWithImpl<T, SignUpSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState<$T>.signupsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignUpSuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpSuccessCopyWith(SignUpSuccess<T> value, $Res Function(SignUpSuccess<T>) _then) = _$SignUpSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignUpSuccessCopyWithImpl<T,$Res>
    implements $SignUpSuccessCopyWith<T, $Res> {
  _$SignUpSuccessCopyWithImpl(this._self, this._then);

  final SignUpSuccess<T> _self;
  final $Res Function(SignUpSuccess<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignUpSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SignUpFailure<T> implements SignUpState<T> {
  const SignUpFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpFailureCopyWith<T, SignUpFailure<T>> get copyWith => _$SignUpFailureCopyWithImpl<T, SignUpFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpFailure<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'SignUpState<$T>.signupfailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SignUpFailureCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpFailureCopyWith(SignUpFailure<T> value, $Res Function(SignUpFailure<T>) _then) = _$SignUpFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$SignUpFailureCopyWithImpl<T,$Res>
    implements $SignUpFailureCopyWith<T, $Res> {
  _$SignUpFailureCopyWithImpl(this._self, this._then);

  final SignUpFailure<T> _self;
  final $Res Function(SignUpFailure<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(SignUpFailure<T>(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
