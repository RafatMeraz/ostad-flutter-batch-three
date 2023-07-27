import 'package:flutter/material.dart';
import 'package:intro_widget/data/models/auth_utility.dart';

class UserProfileBanner extends StatelessWidget {
  const UserProfileBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      tileColor: Colors.green,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          AuthUtility.userInfo.data?.photo ?? '',
        ),
        onBackgroundImageError: (_, __) {
          const Icon(Icons.image);
        },
        radius: 15,
      ),
      title: Text(
        '${AuthUtility.userInfo.data?.firstName ?? ''} ${AuthUtility.userInfo.data?.lastName ?? ''}',
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
      subtitle: Text(
        AuthUtility.userInfo.data?.email ?? 'Unknown',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
