import 'package:flutter/material.dart';
import 'header_menu_item.dart';

class Header extends StatelessWidget {
  final bool isExpanded;

  const Header({super.key, this.isExpanded = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isExpanded) ...[
          Container(
            color: const Color(0xFF23A6F0),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 195),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/phone_header.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "(225) 555-0118",
                      style: TextStyle(
                        // #FFFFFF
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/email_header.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "michelle.rivera@example.com",
                      style: TextStyle(
                        // #FFFFFF
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 40),
                    const Text(
                      "Follow Us  and get a chance to win 80% off",
                      style: TextStyle(
                        // #FFFFFF
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Follow Us  :",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/instagram_header.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/youtube_header.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/facebook_header.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/twitter_header.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/user_login.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login / Register",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 20),
          color: const Color(0xFFFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Bandage",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF252B42),
                ),
              ),
              if (isExpanded) ...[
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HeaderMenuItem(title: "Home"),
                      HeaderMenuItem(title: "Shop"),
                      HeaderMenuItem(title: "About"),
                      HeaderMenuItem(title: "Blog"),
                      HeaderMenuItem(title: "Contact"),
                      HeaderMenuItem(title: "Pages"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/search.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SizedBox(width: 15),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/cart.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "1",
                      style: TextStyle(
                        color: Color(0xFF23A6F0),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 15),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/favorite.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "1",
                      style: TextStyle(
                        color: Color(0xFF23A6F0),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ] else ...[
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HeaderMenuItem(title: "Home"),
                      HeaderMenuItem(title: "Product"),
                      HeaderMenuItem(title: "Pricing"),
                      HeaderMenuItem(title: "Contact"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xFF23A6F0),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 25),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            "Become a member",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]
            ],
          ),
        ),
      ],
    );
  }
}
