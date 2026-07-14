part of 'widgets_imports.dart';

// Moved to AttachPrescriptionController flow (attach_prescription/widgets/select_insurance_company_widget.dart);
// stopped here (moved, not deleted).
//
//
// class SelectInsuranceCompanyWidget extends StatelessWidget {
//   final PharmacyAddressController controller;
//   const SelectInsuranceCompanyWidget({super.key, required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       // Moved to AttachPrescriptionController.onPressSelectInsuranceCompany;
//       // stopped here (moved, not deleted).
//       // onTap: () => controller.onPressSelectInsuranceCompany(context),
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
//         decoration: BoxDecoration(
//           color: context.colors.white,
//           borderRadius: Dimens.borderRadius30PX
//         ),
//         child: BlocBuilder<GenericBloc<InsuranceCompany?>,GenericState<InsuranceCompany?>>(
//           bloc: controller.selectedInsuranceCompany,
//           builder: (context, state) {
//           return  Row(
//             children: [
//             Expanded(
//               child: Text(state.data?.name ?? "Select Insurance Company",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               style: state.data?.name!= null
//                   ?AppTextStyle.s15_w500(color: context.colors.black)
//                   : AppTextStyle.s14_w400(color: context.colors.black),
//               ),
//             ),
//               Gaps.hGap15,
//               Icon(Icons.keyboard_arrow_down_rounded,
//                 size: 25,
//                 color: context.colors.black,)
//             ],
//           );
//         },),
//       ),
//     );
//   }
// }
//
