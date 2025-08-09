import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _email;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('userName');
      _email = prefs.getString('userEmail');
    });
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();
    setState(() => _loading = true);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', _name!);
    await prefs.setString('userEmail', _email!);
    setState(() => _loading = false);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    if (_name == null || _email == null) return const Scaffold(body: Center(child: CircularProgressIndicator()));
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              initialValue: _name,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (v) => v != null && v.isNotEmpty ? null : 'Enter name',
              onSaved: (v) => _name = v,
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _email,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (v) => v != null && v.contains('@') ? null : 'Enter valid email',
              onSaved: (v) => _email = v,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _loading ? null : _save,
                child: _loading ? const CircularProgressIndicator(color: Colors.white) : const Text('Save'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
