
import 'package:ecommerce_web_app/data/user_repository.dart';
import 'package:ecommerce_web_app/pages/contact/contact_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ContactScreenViewModel extends StateNotifier<ContactScreenState> {
  ContactScreenViewModel(super.state, UserRepository repository);
}
