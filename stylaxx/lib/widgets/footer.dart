import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF1A1A2E);
  static const Color gold = Color(0xFFD4AF37);
  static const Color white = Color(0xFFFFFFFF);
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ── Features Row ──
        Container(
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _FeatureItem(icon: Icons.local_shipping_outlined, title: 'Free Shipping', sub: 'On all orders'),
              _FeatureItem(icon: Icons.autorenew, title: 'Easy Replace', sub: 'Simple return'),
              _FeatureItem(icon: Icons.credit_card, title: 'EMI Available', sub: 'Major cards'),
              _FeatureItem(icon: Icons.headset_mic_outlined, title: '24/7 Support', sub: 'Chat & email'),
            ],
          ),
        ),

        // ── Newsletter ──
        Container(
          color: const Color(0xFFF9F6F0),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Get Ready for our Fun Newsletter!',
                style: TextStyle(color: AppColors.primary, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text('Subscribe to stay in touch.',
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'email@example.com',
                          hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.gold,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: const Text('Subscribe',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                ],
              ),
            ],
          ),
        ),

        // ── Footer Links ──
        Container(
          color: AppColors.primary,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            children: [
              // Logo
              Image.asset('assets/images/stylaxx_logo.png', height: 40),
              const SizedBox(height: 12),

              // Links
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16,
                runSpacing: 8,
                children: ['About Us', 'Contact', 'Privacy Policy', 'Terms', 'Refund Policy']
                    .map((link) => GestureDetector(
                          onTap: () {},
                          child: Text(link,
                              style: const TextStyle(color: Colors.white70, fontSize: 11)),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 16),

              const Divider(color: Colors.white24),
              const SizedBox(height: 12),

              const Text(
                '© Copyright 2022 - 2026, STYLAXX. All rights reserved.',
                style: TextStyle(color: Colors.white38, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;

  const _FeatureItem({required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: AppColors.gold, size: 26),
        const SizedBox(height: 6),
        Text(title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.primary),
            textAlign: TextAlign.center),
        Text(sub,
            style: const TextStyle(fontSize: 9, color: Colors.grey),
            textAlign: TextAlign.center),
      ],
    );
  }
}