import 'package:flutter/material.dart';
import 'package:amharic_catholic_bible/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

/// Full screen or modal dialog displaying the Privacy Policy
class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  static void show(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen()),
    );
  }

  Future<void> _launchWebsite() async {
    final Uri url = Uri.parse('https://www.anleylab.et');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('የግላዊነት ፖሊሲ (Privacy Policy)'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF1E1E1E) : const Color(0xFFFDFBF7),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.liturgicalGold.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.privacy_tip_outlined,
                    size: 36,
                    color: AppColors.liturgicalGold,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '100% Offline & Private',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'ምንም አይነት የግል መረጃ አይሰበሰብም',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Amharic Summary
            Text(
              'የመረጃ ጥበቃ እና ግላዊነት',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.liturgicalGold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'የአንሌይላብ መጽሐፍ ቅዱስ (ANLEYLAB Bible) መተግበሪያ የተጠቃሚዎችን ግላዊነት በጥብቅ ያከብራል። መተግበሪያው ሙሉ በሙሉ ከመስመር ውጭ (Offline) የሚሰራ ሲሆን፣ ማንኛውንም የግል መረጃ፣ ስም፣ ኢሜይል፣ ስልክ ቁጥር ወይም የመሳሪያ መታወቂያ አይሰበስብም፣ አይመዘግብም እንዲሁም ለሶስተኛ ወገን አያስተላልፍም።',
              style: theme.textTheme.bodyMedium?.copyWith(height: 1.6),
            ),
            const SizedBox(height: 20),

            // Section 1
            _buildSectionTitle(theme, '1. የመረጃ ስብሰባ (Information Collection)'),
            _buildParagraph(
              theme,
              '• ምንም አይነት የግል መረጃ አይጠየቅም ወይም አይሰበሰብም።\n'
              '• መለያ መፍጠር (Account Registration) አያስፈልግም።\n'
              '• የትራኪንግ (Tracking) ወይም አናሊቲክስ (Analytics) ሶፍትዌር የለውም።\n'
              '• ምንም አይነት ማስታወቂያዎች (Ads) የሉም።',
            ),

            // Section 2
            _buildSectionTitle(theme, '2. የሃገር ውስጥ መረጃ ማከማቻ (Local Storage)'),
            _buildParagraph(
              theme,
              'እርስዎ የሚመዘግቧቸው ማስታወሻዎች (Notes)፣ ምልክቶች (Bookmarks)፣ ቀለሞች (Highlights) እና የንባብ ታሪክ (Reading History) ሙሉ በሙሉ በስልክዎ ውስጣዊ ማከማቻ ላይ ብቻ ይቀመጣሉ። እነዚህ መረጃዎች ከእርስዎ ስልክ ውጭ በምንም አይነት መንገድ አይላኩም።',
            ),

            // Section 3
            _buildSectionTitle(theme, '3. የህፃናት ግላዊነት (Children\'s Privacy)'),
            _buildParagraph(
              theme,
              'መተግበሪያው የሁሉንም የዕድሜ ክልል ተጠቃሚዎች የሚያገለግል ሲሆን (Everyone 3+)፣ ከማንኛውም ሰው በተለይም ከህፃናት ምንም አይነት መረጃ አይሰበስብም።',
            ),

            // Section 4
            _buildSectionTitle(theme, '4. አድራሻ እና ግንኙነት (Contact Us)'),
            _buildParagraph(
              theme,
              'ስለ ግላዊነት ፖሊሲው ማንኛውም ጥያቄ ካለዎት በይፋዊ ድረ-ገጻችን በኩል ማግኘት ይችላሉ፡',
            ),
            const SizedBox(height: 8),

            OutlinedButton.icon(
              onPressed: _launchWebsite,
              icon: const Icon(Icons.language, size: 18),
              label: const Text('www.anleylab.et'),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.liturgicalGold,
                side: const BorderSide(color: AppColors.liturgicalGold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 32),
            const Center(
              child: Text(
                '© 2026 ANLEYLAB. All rights reserved.',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(ThemeData theme, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 6.0),
      child: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildParagraph(ThemeData theme, String text) {
    return Text(
      text,
      style: theme.textTheme.bodyMedium?.copyWith(
        height: 1.5,
        color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.85),
      ),
    );
  }
}
