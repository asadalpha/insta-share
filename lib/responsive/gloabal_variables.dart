import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta_share/responsive/search_screen.dart';
import 'package:insta_share/screens/add_post_screen.dart';
import 'package:insta_share/screens/feed_screen.dart';
import 'package:insta_share/screens/profile_screen.dart';

const webScreenSize = 600;

final homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text("Profile"),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
