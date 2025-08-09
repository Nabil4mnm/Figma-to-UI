import 'package:figma/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forecast extends StatelessWidget {
  const Forecast({super.key});

  // Forecast card method
  Widget buildForecastCard(String day, String temp, String assetImagePath) {
    return Container(
      width: 95,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day, style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),),
          const SizedBox(height: 9),
          Image.asset(
            assetImagePath, height: 30, width: 30,
          ),
          const SizedBox(height: 4),
          Text(
            temp,
            style: GoogleFonts.poppins(fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w700,),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      mainChild: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            // Location & temps
            Text(
              "North America",
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Max: 24°   Min: 18°",
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 60),

            // 7 Days Forecasts title
            Text(
              "7-Days Forecasts",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),

            // Horizontal forecast list
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildForecastCard("19°C", "Mon", "assets/images/Weather _))10 18.png"),
                  buildForecastCard("18°C", "Tue", "assets/images/Moon cloud mid rain.png"),
                  buildForecastCard("18°C", "Wed", "assets/images/Moon cloud mid rain.png"),
                  buildForecastCard("19°C", "Thu", "assets/images/Weather _))10 18.png"),
                ],
              ),
            ),
            const SizedBox(height: 80),

            // Air quality card
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Color(0xFF7B3B7B), Color(0xFF4B267B)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.air, color: Colors.white, size: 25),
                      const SizedBox(width: 8),
                      Text(
                        "AIR QUALITY",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700 ,
                        ),
                      ),],),
                  const SizedBox(height: 5),
                  Text(
                    "3 - Low Health Risk",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),),
                  const SizedBox(height: 5),
                  Text(
                    "See more",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.w700,),),],
              ),
            ),
            const SizedBox(height: 90),

            // Sunrise & UV Index Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Sunrise
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Colors.white.withValues(alpha: 0.1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SUNRISE",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "5:28 AM",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),),
                      Text(
                        "Sunset: 7:25 PM",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white70,
                            fontWeight: FontWeight.w800),
                      ),],
                  ),
                ),

                // UV Index
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withValues(alpha: 0.1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UV INDEX",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                            fontWeight: FontWeight.w800),),
                      const SizedBox(height: 5),
                      Text(
                        "4 Moderate",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
