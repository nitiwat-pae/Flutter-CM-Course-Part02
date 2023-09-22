# Notes:

1. How to manage images
   1.1 all images must be collected in 'assets/images' folder at root directory
   1.2 images directory must be registered in 'pubspec.yaml' at assets line
   1.3 all images path must be set as constant in 'lib/src/constants/assets.dart'
   1.4 in 'assets.dart' will provide class 'Asset' that store constant variable
   1.5 Finally, call image to display by using 'Image.asset(Asset.{$constant})'
   1.6 Or use 'Image.network('url')' to display image from internet

2. 