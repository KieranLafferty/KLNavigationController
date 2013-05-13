KLNavigationController
=======

A UINavigationController subclass that allows for the rootViewController to be modified after initialization

## Installation ##

	1. Drag the KLNavigationController.xcodeproj to your existing project
	2. Under Build Phases on your project's Xcode Project file add 'KLNavigationController(KLNavigationController)' to your Target Dependancies
	3. Under Build on your Xcode Project file add 'libKLNavigationController' under Link Binary With Libraries
	4. Include #import <KLNavigationController/KLNavigationController.h> in any file you wish to use
	
	
Via CocoaPods
Add the following line to your podfile

	pod 'KLNavigationController', :git=>'git://github.com/KieranLafferty/KLNavigationController.git'
	
## Usage ##

KLNavigationController operates exactly as a UINavigationController except that it adds a root view controller property to UINavigationController (http://developer.apple.com/library/IOS/#documentation/UIKit/Reference/UINavigationController_Class/Reference/Reference.html) 

	//Note: setting root view controller will automatically pop to new root
	-(void) setRootViewController: (UIViewController*) viewController;
	-(UIViewController*) rootViewController;

Designed to work as a drop in replacement for UINavigationController both programatically and via storyboards

## Contact ##

* [@kieran_lafferty](https://twitter.com/kieran_lafferty) on Twitter
* [@kieranlafferty](https://github.com/kieranlafferty) on Github
* <a href="mailTo:kieran.lafferty@gmail.com">kieran.lafferty [at] gmail [dot] com</a>

## License ##

Copyright 2013 Kieran Lafferty

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.