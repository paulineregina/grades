import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class PLMGrades extends StatefulWidget {
  const PLMGrades({super.key});

  @override
  PLMGradesState createState() => PLMGradesState();
}

class PLMGradesState extends State<PLMGrades> {
  List? acadYear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF006699),
        leading: IconButton(
          onPressed: () {
            debugPrint('Button Pressed');
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          color: Colors.white,
        ),
        title: const Text(
          "Grades",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Manrope',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 25.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Student Number:',
                        style: TextStyle(
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'Manrope',
                        ),
                      ),
                      Text(
                        'Full Name:',
                        style: TextStyle(
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'Manrope',
                        ),
                      ),
                      Text(
                        'Program:',
                        style: TextStyle(
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                  //Placeholder for info stud id, name, program
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '202101387',
                          style: TextStyle(
                            color: Color(0xFF393939),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Manrope',
                          ),
                        ),
                        Text(
                          'Dela Cruz, Juan',
                          style: TextStyle(
                            color: Color(0xFF393939),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Manrope',
                          ),
                        ),
                        Text(
                          'BS in Computer Science',
                          style: TextStyle(
                            color: Color(0xFF393939),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Center(
                  child: Text(
                    "Academic Year - Term:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ),
              //dropdown
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: MultiSelectDropDown<int>(
                  onOptionSelected: (List<ValueItem> selectedOptions) {
                    setState(() {
                      acadYear = selectedOptions;
                    });
                    debugPrint('Selected Academic Year - Term: $acadYear');
                  },
                  hintColor: const Color(0xFF393939),
                  options: const [
                    ValueItem(label: 'Academic Year - Term: 2021-1', value: 1),
                    ValueItem(label: 'Academic Year - Term: 2021-2', value: 2),
                    ValueItem(label: 'Academic Year - Term: 2022-1', value: 3),
                    ValueItem(label: 'Academic Year - Term: 2022-2', value: 4),
                  ],
                  hint: "Select Academic Year - Term",
                  selectionType: SelectionType.single,
                  clearIcon: null,
                  radiusGeometry: BorderRadius.circular(16),
                  chipConfig: const ChipConfig(wrapType: WrapType.scroll),
                  optionTextStyle: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF393939),
                    fontFamily: 'Manrope',
                  ),
                  selectedOptionIcon: const Icon(
                    Icons.abc,
                    color: Color(0xFFFFC909),
                  ),
                  selectedOptionBackgroundColor: const Color(0xFFFFC909),
                  dropdownBorderRadius: 16,
                  dropdownMargin: 0,
                  singleSelectItemStyle: const TextStyle(
                    color: Color(0xFF393939),
                    fontFamily: 'Manrope',
                  ),
                ),
              ),
              acadYear == null
                  ? Container()
                  : Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subject Code",
                                style: TextStyle(
                                  color: Color(0xFF006699),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                ),
                              ),
                              Text(
                                "Subject Title",
                                style: TextStyle(
                                  color: Color(0xFF006699),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                ),
                              ),
                              Text(
                                "Units",
                                style: TextStyle(
                                  color: Color(0xFF006699),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                ),
                              ),
                              Text(
                                "Grades",
                                style: TextStyle(
                                  color: Color(0xFF006699),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                ),
                              ),
                              Text(
                                "Remarks",
                                style: TextStyle(
                                  color: Color(0xFF006699),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Center(
                                  child: Text(
                                "Total Units: ",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF393939),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Manrope',
                                ),
                              )),
                              const Center(
                                child: Text(
                                  "GWA: ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF393939),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Manrope',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: SizedBox(
                                  width: 155,
                                  height: 35,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint('Button Pressed');
                                    },
                                    style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                        Color(0xFF006699),
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.download_sharp,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            "Download PDF",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Manrope',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      )),
    );
  }
}
