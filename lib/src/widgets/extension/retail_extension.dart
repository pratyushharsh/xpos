import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../module/authentication/bloc/authentication_bloc.dart';

extension RetailLocationExtension on StatelessWidget {
  String getStoreLocale(BuildContext context) {
    var authBloc = BlocProvider.of<AuthenticationBloc>(context);

    if (authBloc.state.store?.locale != null) {
      return authBloc.state.store!.locale!;
    }
    return Localizations.localeOf(context).toString();
  }
}

extension RetailLocationExtensionStateFul on State {
  String getStoreLocale(BuildContext context) {
    var authBloc = BlocProvider.of<AuthenticationBloc>(context);

    if (authBloc.state.store?.locale != null) {
      return authBloc.state.store!.locale!;
    }
    return Localizations.localeOf(context).toString();
  }
}
