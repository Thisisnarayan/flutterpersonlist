import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterpersonlist/extensions/theme_extension.dart';
import 'package:flutterpersonlist/generated/locale_keys.g.dart';
import 'package:flutterpersonlist/modules/user_list/details/user_detail.dart';
import 'package:flutterpersonlist/modules/user_list/list/user_list_view_model.dart';
import 'package:flutterpersonlist/modules/user_list/model/user.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class UserList extends StatelessWidget {
  const UserList({super.key, this.list});
  final UserListFromApi? list;
  static const route = '/userlist';
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => UserListViewModel(data: list),
      child: const UserListPage(),
    );
  }
}

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  UserListViewModel get viewModel => context.read<UserListViewModel>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    viewModel.viewLast = () {
      Future.delayed(const Duration(milliseconds: 500), () {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            viewModel.scrollPosition!,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        }
      });
    };

    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _scrollListener() async {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      // Reached the end of the list, load more data

      viewModel.setScrollPostion(_scrollController.position.pixels);
      viewModel.loaddata();
      if (viewModel.pageNumber > 4) {
        await bottomOfTheList();
      }
    }
  }

  Future<void> bottomOfTheList() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      viewModel.setNoMoreData();
    }
  }

  Future<void> _onRefresh() async {
    // Clear the list and fetch the first page
    viewModel.clearList();
    await viewModel.loaddata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.userListView.tr()),
        actions: [
          // Show the refresh button only on the web
          if (kIsWeb)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _onRefresh,
            ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Observer(
                builder: (context) {
                  if (viewModel.list == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return RefreshIndicator(
                      onRefresh: _onRefresh,
                      child: Stack(children: [
                        ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: viewModel.list!.length + (viewModel.noMoreData ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index < viewModel.list!.length) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 12,
                                  left: 24,
                                  right: 24,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      UserDetailPage.route,
                                      arguments: {'data': viewModel.list![index]},
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                          padding: const EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [context.theme.gradient, context.theme.border],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                            border: Border.all(
                                              color: context.theme.border,
                                              width: 2,
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 20, // Adjust the radius as needed
                                                    // backgroundImage: NetworkImage(user.photoUrl), // Replace with the actual photo URL
                                                    child: Text(
                                                      viewModel
                                                          .list![index].firstname![0], // Display the first alphabet
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 15),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              viewModel.list![index].firstname!,
                                                              style: context.cardTitle,
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(viewModel.list![index].lastname!,
                                                                style: context.cardTitle),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 4,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 15, top: 12),
                                                        child: Text(
                                                          viewModel.list![index].email!,
                                                          style: context.headingMedium,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );

                              // return ListTile(
                              //   title: Text('$index ${viewModel.list![index].firstname!}'),
                              // );
                            }
                          },
                        ),
                        viewModel.isLoading
                            ? const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircularProgressIndicator(),
                                ),
                              )
                            : const SizedBox(
                                width: 0,
                                height: 0,
                              ),
                        if (viewModel.noMoreData)
                          Positioned(
                            bottom: 0.0, // Adjust the bottom position as needed
                            left: 0.0,
                            right: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 24, right: 24),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Colors.yellowAccent, Color.fromARGB(255, 229, 255, 0)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'No More Data',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 13, color: context.theme.error, fontFamily: 'Medium'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ]),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
