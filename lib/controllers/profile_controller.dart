// import 'package:get/get.dart';

// class ProfileController extends GetxController {
//   var selectedPage = <SelectedPapers>[].obs;
//   var dynamicfont = <SelectedFont>[].obs;
//   var dynamicColor = <SelectedColor>[].obs;
//   void updateColor(Color newColor) {
//     selectedColor.value = newColor;
//   }

//   void updateFont(Font newFont) {
//     selectedFont.value = newFont;
//   }

//   void updatePaper(Paper paper) {
//     selectedpaper.value = paper;
//   }

//   Rx<ColorsModel> colorsModel = ColorsModel(colors: <Color>[]).obs;
//   Rx<Color> selectedColor = Color(
//           id: "615ecc01265f77001308a0ec",
//           name: "Black",
//           hex: "000000",
//           web: "#000000",
//           mobile: "0xFF000000",
//           isActive: true)
//       .obs;

//   Rx<FontModel> fontModel = FontModel(fonts: <Font>[]).obs;

//   Rx<Font> selectedFont = Font(
//           id: "61431d32e489ac0013247f81",
//           googleName: "Helvetica",
//           type: "Handwriting",
//           randomId: "5678294")
//       .obs;

//   Rx<PaperModel> paperModel = PaperModel(papers: <Paper>[]).obs;

//   Rx<Paper> selectedpaper = Paper(
//     id: "6124bd54435ab40013063973",
//     isActive: true,
//     isPremium: false,
//     name: "Ruya 1",
//     paper:
//         "https://api.letterbird.app/public/images/papers/1629797716765-1.png",
//     randomId: "376762",
//   ).obs;
//   @override
//   void onInit() {
//     super.onInit();
//     colorfetch();
//     fontfetch();
//     paperfetch();
//   }

//   void fontfetch() async {
//     try {
//       GraphQlClass graphQlClass = GraphQlClass();
//       GraphQLClient graphQLClient = graphQlClass.clientToQuery();
//       QueryResult response = await graphQLClient
//           .query(QueryOptions(document: gql(QueryAndMutation().fontQuery())));
//       //  print(response);
//       if (response.data != null) {
//         fontModel.value =
//             FontModel.fromJson(response.data as Map<String, dynamic>);
//         selectedFont.value = fontModel.value.fonts[0];
//         fontModel.value.fonts.forEach((element) {
//           dynamicfont.add(SelectedFont(isSelected: false, font: element));
//         });
//       } else {
//         // AlertDialogPop.showMessageError("data fetch error".toUpperCase());
//       }
//     } catch (e, s) {
//       print("Exception $e");
//       print(s);
//     }
//   }

//   void paperfetch() async {
//     try {
//       // print(QueryAndMutation().fontQuery());
//       GraphQlClass graphQlClass = GraphQlClass();
//       GraphQLClient graphQLClient = graphQlClass.clientToQuery();
//       QueryResult response = await graphQLClient
//           .query(QueryOptions(document: gql(QueryAndMutation().paperQuery())));
//       print(response);
//       if (response.data != null) {
//         paperModel.value =
//             PaperModel.fromJson(response.data as Map<String, dynamic>);
//         selectedpaper.value = paperModel.value.papers[0];
//         paperModel.value.papers.forEach((element) {
//           selectedPage.add(SelectedPapers(isSelected: false, paper: element));
//         });
//       } else {
//         // AlertDialogPop.showMessageError("data fetch error".toUpperCase());
//       }
//     } catch (e, s) {
//       print("Exception $e");
//       print(s);
//     }
//   }

//   void colorfetch() async {
//     try {
//       // print(QueryAndMutation().colorQuery());
//       GraphQlClass graphQlClass = GraphQlClass();
//       GraphQLClient graphQLClient = graphQlClass.clientToQuery();
//       QueryResult response = await graphQLClient
//           .query(QueryOptions(document: gql(QueryAndMutation().colorQuery())));
//       //print(response);
//       if (response.data != null) {
//         colorsModel.value =
//             ColorsModel.fromJson(response.data as Map<String, dynamic>);
//         selectedColor.value = colorsModel.value.colors[0];
//         colorsModel.value.colors.forEach((element) {
//           dynamicColor.add(SelectedColor(isSelected: false, color: element));
//         });
//       } else {
//         // AlertDialogPop.showMessageError("data fetch error".toUpperCase());
//       }
//     } catch (e, s) {
//       print("Exception $e");
//       print(s);
//     }
//   }
// }

// class SelectedPapers {
//   Paper? paper;
//   bool isSelected;

//   SelectedPapers({
//     this.paper,
//     this.isSelected = false,
//   });
// }

// class SelectedFont {
//   Font? font;
//   bool isSelected;

//   SelectedFont({
//     this.font,
//     this.isSelected = false,
//   });
// }

// class SelectedColor {
//   Color? color;
//   bool isSelected;

//   SelectedColor({
//     this.color,
//     this.isSelected = false,
//   });
// }
