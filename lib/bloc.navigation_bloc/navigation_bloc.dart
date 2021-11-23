import 'package:bloc/bloc.dart';
import '../pages/nowplayingpage.dart';

import '../pages/homepage.dart';
import '../pages/aboutpage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  NowPlayingClickedEvent,
  AboutPageClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.NowPlayingClickedEvent:
        yield NowPlaying();
        break;
      case NavigationEvents.AboutPageClickedEvent:
        yield AboutPage();
        break;
    }
  }
}
