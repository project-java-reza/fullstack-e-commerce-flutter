import 'package:flutter/material.dart';

import '../../common/component/button.dart';
import '../../common/component/custom_dropdown.dart';
import '../../common/component/custom_text_field2.dart';
import '../../common/component/spaces.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final ValueNotifier<String> selectedCountry =
      ValueNotifier<String>('Indonesia');
  final TextEditingController countryController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController provinceController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  bool isDefault = false;

  @override
  void dispose() {
    selectedCountry.dispose();
    countryController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    provinceController.dispose();
    zipCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Alamat'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SpaceHeight(24.0),
          CustomTextField2(
            controller: firstNameController,
            label: 'Nama Lengkap',
            keyboardType: TextInputType.name,
          ),
          const SpaceHeight(24.0),
          CustomTextField2(
            controller: addressController,
            label: 'Alamat Jalan',
            maxLines: 3,
            keyboardType: TextInputType.multiline,
          ),
          const SpaceHeight(24.0),
          CustomTextField2(
            controller: phoneNumberController,
            label: 'No Handphone',
            keyboardType: TextInputType.phone,
          ),
          const SpaceHeight(24.0),
          CustomDropdown(
            value: 'DIY',
            items: const ['DIY', 'JATENG'],
            label: 'Provinsi',
            onChanged: (value) {},
          ),
          const SpaceHeight(24.0),
          CustomDropdown(
            value: 'Sleman',
            items: const ['Sleman', 'Bantul'],
            label: 'Kota/Kabupaten',
            onChanged: (value) {},
          ),
          const SpaceHeight(24.0),
          CustomDropdown(
            value: 'Mlati',
            items: const ['Mlati', 'Turi'],
            label: 'Kecamatan',
            onChanged: (value) {},
          ),
          const SpaceHeight(24.0),
          CustomTextField2(
            controller: zipCodeController,
            label: 'Kode Pos',
            keyboardType: TextInputType.number,
          ),
          const SpaceHeight(24.0),
          CheckboxListTile(
            value: isDefault,
            onChanged: (value) {
              setState(() {
                isDefault = value!;
              });
            },
            title: const Text('Simpan sebagai alamat utama'),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: () {
            Navigator.pop(context);
          },
          label: 'Tambah Alamat',
        ),
      ),
    );
  }
}
