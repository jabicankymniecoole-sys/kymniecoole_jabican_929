import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component1.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedTab = 0;

  static const _tabs = ['All', 'Photos', 'Reels'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalappbarComponent1(),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildCover(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kym Niecoole R. Jabican',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.5,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '248 posts  ·  Iloilo City',
                      style: TextStyle(
                        color: Color(0xFF65676B),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Expanded(
                          child: FilledButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.add, size: 20),
                            label: const Text('Add to story'),
                            style: FilledButton.styleFrom(
                              backgroundColor: const Color(0xFF1877F2),
                              foregroundColor: Colors.white,
                              minimumSize: const Size.fromHeight(44),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: FilledButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.edit, size: 17),
                            label: const Text('Edit profile'),
                            style: FilledButton.styleFrom(
                              backgroundColor: const Color(0xFFE4E6EB),
                              foregroundColor: const Color(0xFF1C1E21),
                              minimumSize: const Size.fromHeight(44),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F2F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Color(0xFF4B4F56),
                            fontSize: 13,
                            height: 1.4,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'Your profile is private. Only your friends can see your posts and photos. ',
                            ),
                            TextSpan(
                              text: 'Learn more',
                              style: TextStyle(
                                color: Color(0xFF1877F2),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    _buildTabs(),
                    const SizedBox(height: 20),
                    _buildPersonalDetails(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCover() {
    return SizedBox(
      height: 260,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 210,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(12),
              ),
              child: Image.network(
                'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?auto=format&fit=crop&w=1400&q=85',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF78A9C7), Color(0xFF315C77)],
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.landscape,
                          color: Colors.white70,
                          size: 52,
                        ),
                      ),
                    ),
              ),
            ),
          ),
          Positioned(
            top: 14,
            left: 14,
            child: _roundIconButton(Icons.menu, 'Menu'),
          ),
          Positioned(
            top: 14,
            right: 14,
            child: Row(
              children: [
                _roundIconButton(Icons.search, 'Search'),
                const SizedBox(width: 8),
                _roundIconButton(Icons.more_horiz, 'More options'),
              ],
            ),
          ),
          Positioned(
            right: 14,
            bottom: 64,
            child: _roundIconButton(Icons.camera_alt, 'Change cover photo'),
          ),
          Positioned(
            left: 20,
            bottom: 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 116,
                  height: 116,
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile_cat.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 4,
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE4E6EB),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      size: 18,
                      color: Color(0xFF1C1E21),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundIconButton(IconData icon, String tooltip) {
    return Tooltip(
      message: tooltip,
      child: Container(
        width: 38,
        height: 38,
        decoration: const BoxDecoration(
          color: Color(0xCCFFFFFF),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 21, color: const Color(0xFF1C1E21)),
      ),
    );
  }

  Widget _buildTabs() {
    return Row(
      children: List.generate(_tabs.length, (index) {
        final selected = _selectedTab == index;
        return Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () => setState(() => _selectedTab = index),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 11),
              decoration: BoxDecoration(
                color: selected ? const Color(0xFFE7F3FF) : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  _tabs[index],
                  style: TextStyle(
                    color: selected
                        ? const Color(0xFF1877F2)
                        : const Color(0xFF65676B),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildPersonalDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Personal details',
                style: TextStyle(
                  color: Color(0xFF1C1E21),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              tooltip: 'Edit personal details',
              icon: const Icon(Icons.edit_outlined),
              color: const Color(0xFF65676B),
            ),
          ],
        ),
        const SizedBox(height: 4),
        _detailRow(Icons.location_on_outlined, 'Lives in', 'Iloilo City'),
        _detailRow(
          Icons.home_outlined,
          'Address',
          'Iloilo City, Western Visayas, Philippines',
        ),
        _detailRow(Icons.cake_outlined, 'Birthday', 'December 31, 2004'),
      ],
    );
  }

  Widget _detailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 22, color: const Color(0xFF65676B)),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF65676B),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1C1E21),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
