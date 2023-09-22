# Notes:

1. How to manage images
   - all images must be collected in 'assets/images' folder at root directory
   - images directory must be registered in 'pubspec.yaml' at assets line
   - all images path must be set as constant in 'lib/src/constants/assets.dart'
   - in 'assets.dart' will provide class 'Asset' that store constant variable
   - Finally, call image to display by using 'Image.asset(Asset.{$constant})'
   - Or use 'Image.network('url')' to display image from internet

2. How to set up backgroup theme
   - create new file 'theme.dart' in 'src/config' folder
   - setup color code start to end
   - go to 'login_page.dart' and import 'theme.dart' as custom_theme because 'theme' class is existing in 'material.dart'
   - at 'login_page.dart' use Stack function to build layered of component background and others
   - Important! in Stack function
     - Don't use 'alignment: Alignment.center' because just center but not expanded for full screen
     - Use 'fit: StackFit.expand' to expand width equality for all layers to full screen