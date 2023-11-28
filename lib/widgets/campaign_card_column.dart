import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class CampaignCardColumn extends StatelessWidget {
  const CampaignCardColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/fundation");
      },
      child: Container(
        width: 240.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(
            color: Colors.grey.withOpacity(0.25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 120.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image_campaign.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 8.0,
                      right: 8.0,
                      child: Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Icon(
                          TablerIcons.bookmark,
                          size: 22.0,
                          color: Colors.greenAccent.shade400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Robotics school for kids",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Merit Academy",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Icon(
                    Icons.verified,
                    size: 14.0,
                    color: Colors.yellowAccent.shade700,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 8.0,
                ),
                child: LinearProgressIndicator(
                  value: 0.5,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.greenAccent,
                  ),
                  backgroundColor: Colors.grey.shade200,
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Target: \$ 10.000",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "50%",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.greenAccent.shade700,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
