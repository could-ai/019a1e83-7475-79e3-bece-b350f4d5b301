import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    // IMPORTANT: Firebase/Supabase is not connected.
    // This is a UI demonstration and does not perform real authentication.
    Navigator.pushReplacementNamed(context, '/main');
  }

  void _signUp() {
    // IMPORTANT: Firebase/Supabase is not connected.
    // This is a UI demonstration and does not perform real registration.
    Navigator.pushReplacementNamed(context, '/main');
  }

  void _googleSignIn() {
    // IMPORTANT: Firebase/Supabase is not connected.
    // This is a UI demonstration and does not perform real Google sign-in.
    Navigator.pushReplacementNamed(context, '/main');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Viora',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'AI-Powered Image & Video Generation',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey[400],
                    ),
              ),
              const SizedBox(height: 48),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: _signUp,
                  style: OutlinedButton.styleFrom(
                     padding: const EdgeInsets.symmetric(vertical: 16),
                     side: BorderSide(color: Colors.deepPurple),
                  ),
                  child: const Text('Sign Up'),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey[700])),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider(color: Colors.grey[700])),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _googleSignIn,
                  icon: const Icon(Icons.login), // Placeholder for Google Icon
                  label: const Text('Sign in with Google'),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
