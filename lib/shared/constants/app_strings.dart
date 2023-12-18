class Strngs {
// Regular Expressions
  static const emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  static const pswRegex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';

// Auth Error Messages
  static const nameError = 'Invalid ame';
  static const surNameError = 'Invalid surname';
  static const emailError = 'Invalid email';
  static const pswError = 'Invalid password';
  static const confirmPswError = 'Passwords do not match';

// Auth Strings
  static const name = 'Name';
  static const surName = 'Surname';
  static const confirmPsw = 'Confirm Password';
  static const email = 'Email';
  static const psw = 'Password';
  static const submit = 'Submit';
  static const login = 'Login';
  static const register = 'Register';
  static const logout = 'Logout';
  static const noAccount = 'Don\'t have an account?';
  static const alreadyHaveAccount = 'Already have an account?';

  //Nav Bar Item Strings

  static const kolorit = 'Kolorit';
  static const profile = 'Profile';
  static const campaign = 'Campaign';
  static const menu = 'Menu';
  static const branches = 'Branches';
  static const contact = 'Contact';

  // Profile Screen Strings
  static const save = 'Save';
  static const username = 'Username';
  static const bonus = 'Bonus';

  // Branches Screen Strings
  static const location = 'Baku, Azerbaijan';

  // Menu Screen Strings

  static const bonAppetit = 'Bon Appetit :)';

  // Contact Screen Strings
  static const contactUs = 'Feel free to write us';
  static const content = 'Content';
  static const send = 'Send';
  static const or = '   Or   ';
  static const contentError = "Please write a content";

  // Social Media Strings
  static const linkedin = 'LinkedIn';
  static const instagram = 'Instagram';
  static const instagramUrl = 'https://www.instagram.com/agelastrxn/';
  static const linkedinUrl = 'https://www.linkedin.com/in/orkhan-mirzazada-378b60205/';

  // Image Path Strings
  static const appLogoPath = 'assets/kolorit_splash_screen.png';

  // Snackbar Strings
  static const error = 'Error';
  static const loginSuccess = 'Logged in successfully';
  static const registerSuccess = 'Registered successfully';
  static const logoutSuccess = 'Logged out successfully';
  static const logoutMessage = 'Are you sure you want to log out?';
  static const success = "Success";
  static const offerSuccess = "Offer sent successfully";

  // Detail page Strings
  static const description = 'Desciption';
  static const ingredients = 'Ingredients';
  static const price = 'Price';
}
