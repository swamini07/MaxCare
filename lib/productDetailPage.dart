// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:healthcare_app/cartPage.dart';
// import 'package:healthcare_app/pharmacy.dart';


// class ProductDetailPage extends StatefulWidget {
//   const ProductDetailPage({super.key});

//   @override
//   State<ProductDetailPage> createState() => _ProductDetailPageState();
// }

// class _ProductDetailPageState extends State<ProductDetailPage> {
//   int quantity = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//              Navigator.of(context).push(MaterialPageRoute(builder: (context){
//                 return const Pharmacy();
//               }));
//           },
//         ),
//         title: Text(
//           "Pharmacy",
//           style: GoogleFonts.poppins(
//             fontSize: 18,
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Image.asset(
//                 "assets/OBH.jpeg", 
//                 height: 150,
//               ),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "OBH Combi",
//                       style: GoogleFonts.poppins(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       "75ml",
//                       style: GoogleFonts.poppins(
//                         fontSize: 14,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//                 IconButton(
//                   icon: const Icon(
//                     Icons.favorite_border,
//                     color: Colors.red,
//                   ),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             Row(
//               children: [
//                 Row(
//                   children: List.generate(
//                     5,
//                     (index) => const Icon(Icons.star, color: Colors.amber, size: 16),
//                   ),
//                 ),
//                 const SizedBox(width: 5),
//                 Text(
//                   "4.0",
//                   style: GoogleFonts.poppins(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.remove),
//                       onPressed: () {
//                         setState(() {
//                           if (quantity > 1) quantity--;
//                         });
//                       },
//                     ),
//                     Text(
//                 quantity.toString(),
//                 style: GoogleFonts.poppins(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//                     IconButton(
//                       icon: const Icon(Icons.add),
//                       onPressed: () {
//                         setState(() {
//                           quantity++;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//                 Text(
//                   "\$9.99",
//                   style: GoogleFonts.poppins(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Text(
//               "Description",
//               style: GoogleFonts.poppins(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               "OBH COMBI is a cough medicine containing Paracetamol, Ephedrine HCl, and Chlorphenamine maleate which is used to relieve coughs accompanied by flu symptoms such as fever, headache, and sneezing...",
//               style: GoogleFonts.poppins(
//                 fontSize: 14,
//                 color: Colors.grey,
//               ),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//               // ElevatedButton(
//               //   style: ElevatedButton.styleFrom(
//               //               backgroundColor: Colors.blue,
//               //               shape: RoundedRectangleBorder(
//               //                 borderRadius: BorderRadius.circular(20),
//               //               ),
//               //             ),
//               //   onPressed: () {},
//               //   child: Text(
//               //     "      Buy     ",
//               //     style: GoogleFonts.poppins(
//               //       fontSize: 16,
//               //       backgroundColor: Colors.blue,
//               //       color: Colors.white,
//               //       fontWeight: FontWeight.w600,
//               //     ),
//               //   ),
//               // ),
              
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.teal,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                           ),
//                 onPressed: () {
//                  Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (context) => const CartPage()),
//                   );
//                 },
//                 child: 
//                 Text(
//                   "My Cart",
//                   style: GoogleFonts.poppins(
//                     fontSize: 16,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//           ]),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_app/PaymentPage.dart';
import 'package:healthcare_app/cartPage.dart';
import 'package:healthcare_app/pharmacy.dart';
import 'product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  // int quantity = 1;

  ProductDetail({super.key, required this.product});
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 227, 241, 241),
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: const Color.fromARGB(255, 3, 151, 136),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(product.imageUrl, height: 200),
          const SizedBox(height: 20),
          Text(product.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text("\$${product.price.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Row(
                  children: List.generate(
                    5,
                    (index) =>
                        const Icon(Icons.star, color: Colors.amber, size: 16),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "4.0",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              const  SizedBox(
                  width:200
                ),
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        // setState(() {
                        if (quantity > 1) quantity--;
                        // }
                        // );
                      },
                    ),
                    Text(
                      quantity.toString(),
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        // setState(() {
                        quantity++;
                        // }
                        // );
                      },
                    ),
                  ],
                ),
                Text(
                  "\$9.99",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 2),
          Text(
            "Description",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
         // const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "OBH COMBI is a cough medicine containing Paracetamol, Ephedrine HCl, and Chlorphenamine maleate which is used to relieve coughs accompanied by flu symptoms such as fever, headache, and sneezing...",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
         // const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                 Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Paymentpage()),
                  );
              },
              child: Text(
                "Buy Now",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                 Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProductGridPage()),
                  );
              },
              child: Text(
                "My Cart",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}