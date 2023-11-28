import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../widgets/campaign_card_column.dart';
import '../../widgets/campaign_card_row.dart';
import '../../widgets/hero_banner.dart';
import '../../widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                bottom: 8.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        text: 'Crowdfundr',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: '.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 174, 73),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      child: const Icon(
                        TablerIcons.bell,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(bottom: 48.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                        top: 8.0,
                        bottom: 16.0,
                      ),
                      child: SearchInput(),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: HeroBanner(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Trending Campaigns",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.green,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    color: Colors.greenAccent.shade700,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 4.0),
                                Icon(
                                  PhosphorIconsRegular.arrowRight,
                                  size: 16.0,
                                  color: Colors.greenAccent.shade700,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 260.0,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        separatorBuilder: (ctx, index) => const SizedBox(
                          width: 16.0,
                        ),
                        itemBuilder: (ctx, index) => const CampaignCardColumn(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "New Campaigns",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.greenAccent,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    color: Colors.greenAccent.shade700,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 4.0),
                                Icon(
                                  PhosphorIconsRegular.arrowRight,
                                  size: 16.0,
                                  color: Colors.greenAccent.shade700,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          CampaignCardRow(),
                          CampaignCardRow(),
                          CampaignCardRow(),
                          CampaignCardRow(),
                          CampaignCardRow(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.greenAccent.shade700,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(TablerIcons.home),
            activeIcon: Icon(
              TablerIcons.home,
              size: 24.0,
              color: Colors.greenAccent.shade700,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(TablerIcons.graph),
            label: "Favorites",
          ),
          const BottomNavigationBarItem(
            icon: Icon(TablerIcons.bookmark),
            label: "Favorites",
          ),
          const BottomNavigationBarItem(
            icon: Icon(TablerIcons.user),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
