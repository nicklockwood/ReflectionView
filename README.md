Purpose
--------------

ReflectionView is a UIView subclass designed to make it easy to create "mirrored floor"-style reflections of views on iOS.

You may have noticed that Apple provides a Reflection sample project for this, but Apple's solution works only with images and involves fairly slow CPU-bound drawing to update the reflection, making it unsuitable for reflecting animated content. ReflectionView can operate in two modes; static mode - which works like Apple's sample code - or dynamic mode, which uses Core Animation and works in real-time on any view. This means you can use it to reflect the contents of a view containing dynamic elements such as controls or animation and the reflection will keep up in real-time.


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

Note that to function correctly, the ReflectionView instance must have `clipToBounds' disabled.


Performance
-------------

The trick to getting good performance with ReflectionView is to use the correct drawing mode. In dynamic mode, the reflection automatically updates whenever the content changes. This is good for content that changes often or which contains animation, but it carries a per-frame performance penalty.

For content that changes infrequently, set the dynamic property to 'NO' for better performance. With dynamic mode disabled, you will need to manually call the `update` method to update the reflection if the content changes.
