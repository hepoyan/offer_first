

const String nameApp =  'OFFERFIRST';
const String welcomeBack = 'Welcome back!';
const String emailLabelText = 'Enter your email';
const String passwordLabelText  = 'Enter your password';
const String forgotPasswordText = 'Forgot Password';
const String loginText = 'Login';
const String haveAccountText =  "Don't have an account?";
const String createAccountText = 'Create an account.';
const String registrationText = 'Registration';
const String enterNameText = 'Enter your first name';
const String enterYourLastNameText = 'Enter your last name';
const String enterPhoneNumberText= 'Enter your phone number';
const String confirmYourPasswordText  = 'Confirm your password';
const String personalEmailText = 'Please use a personal email address.';
const String passwordCounterText = """Password must contain at least 8 characters, at
 least 1 capital, 1 lowercase, 1 special character.""";
const String conditionsText = """By clicking "Create Account" I acknowledge that I have read and accepted the Terms and Conditions.""";
const String profileText = 'Profile';
const String offerFirstText = 'OfferFirst ID#';


///Navigation bar
const String matches = 'Matches';
const String discovery = 'Discovery';
const String tasks = 'Tasks';
const String message = 'Tasks';
const String logOut = 'Log out';


///svd path
const String pathFullLogo = 'assets/images/Full Logo.svg';
const String firstPathLogo = 'assets/images/logo1.svg';
const String secondPathLogo = 'assets/images/logo2.svg';
const String thirdPathLogo = 'assets/images/logo3.svg';
const String pathLogo = 'assets/images/Logo.svg';
const String discoveryPath ='assets/images/discovery.svg';
const String errorImagePath = 'assets/images/error.svg';
const String errorChildImagePath = 'assets/images/!.svg';



const String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
const String  patternFirstName = r'^[a-zA-Z]*$';
const String  patternEmail = r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$";
const String patternNumber = r'^[0-9-]';
const String errorText = 'Error';

///api Constant
const String baseUrl = 'https://api.offerfirst.com';
const String endUrlSingUp = '/api/user';
const String endUrlLogin = '/api/user/login';
Map<String, String > headersText = {'Content-Type': 'application/json; charset=UTF-8'};

///json  const
const String kFirstName = 'firstName';
const String kLastName = 'lastName';
const String kEmail = 'email';
const String kPhoneNumber = 'phoneNumber';
const String kPassword = 'password';
const String kToken = 'token';
const String kUuid = 'uuid';