import 'package:flutter/material.dart';
import 'package:flutterpersonlist/modules/user_list/details/user_detail_view_model.dart';
import 'package:flutterpersonlist/modules/user_list/model/user.dart';
import 'package:provider/provider.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key, this.userData});
  static const route = '/userdetail';
  final UserListItem? userData;
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => UserDetailViewModel(userData: userData),
      child: const UserDetailScafflod(),
    );
  }
}

class UserDetailScafflod extends StatefulWidget {
  const UserDetailScafflod({super.key});

  @override
  State<UserDetailScafflod> createState() => _UserDetailScafflodState();
}

class _UserDetailScafflodState extends State<UserDetailScafflod> {
  UserDetailViewModel get viewModel => context.read<UserDetailViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${viewModel.userData.} ${userData['lastname']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(userData['image']),
            ),
            SizedBox(height: 16),
            Text(
              'Email: ${userData['email']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Phone: ${userData['phone']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Birthday: ${userData['birthday']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Gender: ${userData['gender']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Address:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '${userData['address']['street']}, ${userData['address']['city']}, ${userData['address']['zipcode']}, ${userData['address']['country']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Website: ${userData['website']}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
