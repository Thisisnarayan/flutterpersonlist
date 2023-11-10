import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
        appBar: AppBar(title: Text('hi')),
        body: Observer(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20, // Adjust the radius as needed
                  // backgroundImage: NetworkImage(user.photoUrl), // Replace with the actual photo URL
                  child: Text(
                    viewModel.userData!.firstname![0], // Display the first alphabet
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Email: ${viewModel.userData?.email}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  'Phone: ${viewModel.userData?.phone}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  'Birthday: ${viewModel.userData?.birthday}',
                  style: const TextStyle(fontSize: 16),
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 8),
                Text(
                  'Gender: ${viewModel.userData?.gender}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Address:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${viewModel.userData?.address?.street}, ${viewModel.userData?.address?.city}, ${viewModel.userData?.address?.zipcode}, ${viewModel.userData?.address?.country}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
        }));
  }
}
