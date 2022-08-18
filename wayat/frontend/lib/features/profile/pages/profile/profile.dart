import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:wayat/app_state/location_state/location_state.dart';
import 'package:wayat/app_state/profile_state/profile_state.dart';
import 'package:wayat/app_state/user_session/session_state.dart';
import 'package:wayat/common/widgets/card.dart';
import 'package:wayat/common/widgets/switch.dart';
import 'package:wayat/lang/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final ProfileState controller = GetIt.I.get<ProfileState>();
  final LocationState locationState = GetIt.I.get<LocationState>();
  final SessionState userSession = GetIt.I.get<SessionState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(appLocalizations.profile,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16)),
        ),
        const SizedBox(height: 16),
        _buildProfileImage(),
        const SizedBox(height: 16),
        Text(
          userSession.currentUser!.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 18),
        ),
        const SizedBox(height: 32),
        _buildShareLocationPart(),
        const SizedBox(height: 48),
        _buildInformationPart(),
        const SizedBox(height: 48),
        _buildAccountPart(),
        const SizedBox(height: 42),
      ],
    );
  }

  //Build UI for Profile Circle Image
  Widget _buildProfileImage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(userSession.currentUser!.imageUrl)),
      ],
    );
  }

  //Build UI for Share Location part
  /// - Active location text + Switch button
  /// - Set do not disturb text + Switch button
  /// - Edit profile custom button
  /// - Preferences custom button
  Widget _buildShareLocationPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(appLocalizations.sharingLocation,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16)),
        ),
        const SizedBox(height: 16),
        _activeSharingLocationButton(),
        const SizedBox(height: 24),
        _setDoNotDisturbButton(),
        const SizedBox(height: 24),
        CustomCard(
            text: appLocalizations.editProfile,
            onTap: () async {
              controller.goToEditProfile(true);
            }),
        const SizedBox(height: 24),
        CustomCard(
            text: appLocalizations.preferences,
            onTap: () async {
              controller.goToPreferences(true);
            }),
      ],
    );
  }

  //Build UI for Information part
  /// - FAQS custom button
  /// - Privacy custom button
  Widget _buildInformationPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(appLocalizations.information,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16)),
        ),
        const SizedBox(height: 24),
        CustomCard(
            text: appLocalizations.faqs,
            onTap: () async {
              controller.goToFaqs(true);
            }),
        const SizedBox(height: 24),
        CustomCard(
            text: appLocalizations.privacy,
            onTap: () async {
              controller.goToTerms(true);
            }),
      ],
    );
  }

  //Build UI for Account part
  /// - Log Out custom button
  /// - Delete Account custom button
  Widget _buildAccountPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(appLocalizations.account,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16)),
        ),
        const SizedBox(height: 24),
        CustomCard(
            text: appLocalizations.logOut,
            onTap: () async {
              controller.goToFaqs(true);
            }),
        const SizedBox(height: 24),
        CustomCard(
            text: appLocalizations.deleteAccount,
            onTap: () async {
              controller.goToTerms(true);
            }),
      ],
    );
  }

  Row _activeSharingLocationButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            appLocalizations.activeSharingLocation,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontSize: 16),
          ),
        ),
        Observer(builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomSwitch(
              value: locationState.shareLocationEnabled,
              onChanged: (newValue) {
                locationState.setShareLocationEnabled(newValue);
              },
            ),
          );
        })
      ],
    );
  }

  Row _setDoNotDisturbButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            appLocalizations.doNotDisturb,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontSize: 16),
          ),
        ),
        Observer(builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomSwitch(
              value: false, // change to controller.doNotDisturb,
              onChanged: (newValue) {
                //controller.setdoNotDisturb(newValue);
              },
            ),
          );
        })
      ],
    );
  }
}
