import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:exh_project/widgets/common/custom_text.dart';
import 'package:exh_project/models/mathematicianModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Fun icons

class MathematicianProfilePage extends StatelessWidget {
  final Mathematician mathematician;

  const MathematicianProfilePage({Key? key, required this.mathematician})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: mathematician.name,
          size: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    mathematician.imageUrl,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Gap(30),
              _buildInfoCard(
                title: 'Biography',
                content: _buildBiographyContent(mathematician.biography),
              ),
              const Gap(20),
              _buildInfoCard(
                title: 'Major Contributions',
                content:
                    _buildContributionsContent(mathematician.contributions),
              ),
              const Gap(20),
              _buildInfoCard(
                title: 'Impact',
                content: CustomText(text: mathematician.impact, size: 22),
              ),
              const Gap(20),
              _buildInfoCard(
                title: 'Historical Context',
                content:
                    CustomText(text: mathematician.historicalContext, size: 22),
              ),
              const Gap(20),
              _buildInfoCard(
                title: 'Fun Facts',
                content: CustomText(text: mathematician.funFacts, size: 22),
                icon: FontAwesomeIcons.smileBeam,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(
      {required String title, required Widget content, IconData? icon}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                  text: title,
                  size: 32,
                  fontWeight: FontWeight.bold,
                ),
                if (icon != null) ...[
                  const Gap(10),
                  Icon(icon, size: 28),
                ],
              ],
            ),
            const Gap(10),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildBiographyContent(String biography) {
    List<String> bioSections = biography.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: bioSections.map((section) {
        if (section.contains(':')) {
          List<String> parts = section.split(':');
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: parts[0] + ':',
                size: 24,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: parts[1].trim(),
                size: 22,
                fontWeight: FontWeight.normal,
              ),
              const Gap(10),
            ],
          );
        } else {
          return CustomText(text: section, size: 22);
        }
      }).toList(),
    );
  }

  Widget _buildContributionsContent(String contributions) {
    List<String> contributionPoints = contributions.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: contributionPoints.map((point) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.check_circle, size: 22, color: Colors.green),
            const Gap(10),
            Expanded(
              child: CustomText(
                text: point,
                size: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
