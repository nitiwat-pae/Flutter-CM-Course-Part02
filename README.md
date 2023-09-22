# Notes:

1. How to manage images
   - all images must be collected in 'assets/images' folder at root directory
   - images directory must be registered in 'pubspec.yaml' at assets line
   - all images path must be set as constant in 'lib/src/constants/assets.dart'
   - in 'assets.dart' will provide class 'Asset' that store constant variable
   - Finally, call image to display by using 'Image.asset(Asset.{$constant})'
   - Or use 'Image.network('url')' to display image from internet

2. 