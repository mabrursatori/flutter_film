part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  // @override
  // List<Object> get props => [];
}

class LoadUser extends UserEvent {
  

  @override
  List<Object> get props => [];
}

class SignOut extends UserEvent {
  @override
  List<Object> get props => [];
}

class UpdateData extends UserEvent {
  final String name;
  final String profileImage;

  UpdateData({this.name, this.profileImage});

  @override
  List<Object> get props => [name, profileImage];
}

class TopUp extends UserEvent {
  final int amount;

  TopUp(this.amount);

  @override
  List<Object> get props => [amount];
}

class Purchase extends UserEvent {
  final int amount;

  Purchase(this.amount);

  @override
  List<Object> get props => [amount];
}
