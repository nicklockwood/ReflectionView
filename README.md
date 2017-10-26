***************
WARNING: THIS PROJECT IS DEPRECATED
====================================
It will not receive any future updates or bug fixes. If you are using it, please migrate to another solution.
***************


Purpose
--------------

ReflectionView is a UIView subclass designed to make it easy to create "mirrored floor"-style reflections of views on iOS.

You may have noticed that Apple provides a Reflection sample project for this, but Apple's solution works only with images and involves fairly slow CPU-bound drawing to update the reflection, making it unsuitable for reflecting animated content. ReflectionView can operate in two modes; static mode - which works like Apple's sample code - or dynamic mode, which uses Core Animation and works in real-time on any view. This means you can use it to reflect the contents of a view containing dynamic elements such as controls or animation and the reflection will keep up in real-time.


Supported OS & SDK Versions
-----------------------------

* Supported build target - iOS 8.0 (Xcode 6.0, Apple LLVM compiler 6.0)
* Earliest supported deployment target - iOS 6.1
* Earliest compatible deployment target - iOS 4.3

NOTE: 'Supported' means that the library has been tested with this version. 'Compatible' means that the library should work on this OS version (i.e. it doesn't rely on any unavailable SDK features) but is no longer being tested for compatibility and may require tweaking or bug fixes to run correctly.


ARC Compatibility
------------------

As of version 1.2, ReflectionView requires ARC. If you wish to use ReflectionView in a non-ARC project, just add the -fobjc-arc compiler flag to the ReflectionView.m class. To do this, go to the Build Phases tab in your target settings, open the Compile Sources group, double-click ReflectionView.m in the list and type -fobjc-arc into the popover.

If you wish to convert your whole project to ARC, comment out the #error line in ReflectionView.m, then run the Edit > Refactor > Convert to Objective-C ARC... tool in Xcode and make sure all files that you wish to use ARC for (including ReflectionView.m) are checked.


Thread Safety
--------------

None of the ReflectionView external interfaces are thread safe and you should not call any methods or set any properties on ReflectionView except from the main thread.


Installation
--------------

To use the ReflectionView in an app, just drag the ReflectionView class files into your project and add the QuartzCore framework.


Properties
------------

You can configure a ReflectionView instance using the following properties:

	@property (nonatomic, assign) CGFloat reflectionGap;
	
The gap between the view and its reflection, measured in pixels (or points on a Retina Display device). This defaults to 4 pixels.
	
	@property (nonatomic, assign) CGFloat reflectionScale;
	
The height of the reflection relative to the view. Defaults to 0.5 (half the view height).
	
	@property (nonatomic, assign) CGFloat reflectionAlpha;
	
The opacity of the reflection. Defaults to 0.5 (50% opaque).

	@property (nonatomic, assign) BOOL dynamic;
	
Switches between dynamic and static mode. See 'Performance' for an explanation of the difference between modes. Defaults to 'NO' (static mode).
	
	
Methods
--------------

	- (void)update;
	
Update redraws the view reflection. If the dynamic property is set to 'YES', it is not necessary to call `update` manually, as it is called automatically whenever any of the reflection properties are changed, or when the view is resized. If dynamic is set to 'NO' you may need to call `update` to redraw the reflection to match the new content.


Usage
--------

To use the ReflectionView, simply add the views you want to reflect as subviews of an instance of ReflectionView and they will be automatically mirrored. You can also subclass ReflectionView to make new views.

Note that to function correctly, the ReflectionView instance must have `clipToBounds` disabled.


Performance
-------------

The trick to getting good performance with ReflectionView is to use the correct drawing mode. In dynamic mode, the reflection automatically updates whenever the content changes. This is good for content that changes often or which contains animation, but it carries a per-frame performance penalty.

For content that changes infrequently, set the dynamic property to 'NO' for better performance. With dynamic mode disabled, you will need to manually call the `update` method to update the reflection if the content changes.


Release Notes
----------------

Version 1.2

- Now requires ARC
- Fixed crash on layoutSubviews
- Now complies with -Weverything warning level
- Added podspec

Version 1.1

- Added ARC support
- Improved performance of non-dynamic reflection rendering
- Fixed warning when view has a width or height of zero, or reflectionScale is zero

Version 1.0

- Initial release
