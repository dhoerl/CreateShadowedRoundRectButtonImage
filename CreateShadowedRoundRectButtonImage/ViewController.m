//
//  ViewController.m
//  CreateShadowedRoundRectButtonImage
//
//  Created by David Hoerl on 10/28/13.
//  Copyright (c) 2013 dfh. All rights reserved.
//

#import "ViewController.h"

#import "CreateButton.h"

@interface ViewController ()
@end

@implementation ViewController
{
	UIImageView *im1;
	UIImageView *im2;
	UIImage *image1;
	UIImage *image2;
	UITextField *f;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib

	f = [[UITextField alloc] initWithFrame:CGRectMake(0, 60, 320, 22)];

#if 0 // see for yourself - these have no opacity
	UIView *av = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 10)];
	av.backgroundColor = [UIColor blackColor];
	f.inputAccessoryView = av;
#endif

// Modify these and use Pixie to get screen values
f.keyboardAppearance = UIKeyboardAppearanceLight;	// UIKeyboardAppearanceDark UIKeyboardAppearanceLight

//self.view.backgroundColor = [UIColor blackColor];
CGRect b = self.view.bounds;
UITextView *v1 = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, b.size.width/2, b.size.height)];
v1.backgroundColor = [UIColor whiteColor];
UIView *v2 = [[UIView alloc] initWithFrame:CGRectMake(b.size.width/2, 0, b.size.width/2, b.size.height)];
v2.backgroundColor = [UIColor blackColor];
[self.view insertSubview:v1 atIndex:0];
[self.view insertSubview:v2 atIndex:1];

[v1 setText:@"Lorem"];
//[v1 setText:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum purus magna, gravida non gravida nec, dapibus at lectus. Aliquam hendrerit lorem sed quam mattis posuere sit amet ac urna. Nam placerat dignissim ligula quis pretium. Vivamus laoreet sem et dolor suscipit mollis. Maecenas feugiat nisi a massa elementum vitae bibendum libero iaculis. Vivamus euismod eros a lectus vestibulum porttitor. Donec elementum arcu sit amet mi auctor molestie. Integer pulvinar orci a neque placerat congue. Integer id ultrices nisi. Nullam sit amet dolor ipsum, eget vehicula mauris. Nulla sollicitudin, orci quis pharetra laoreet, magna turpis cursus lacus, ac malesuada ipsum enim et est. Mauris non mi at leo condimentum malesuada. Donec a facilisis metus. Nullam dictum, ante non ultrices sagittis, mi elit bibendum ligula, in tincidunt mi turpis nec nisl. Nulla molestie viverra ipsum eu consequat. Sed mauris erat, vestibulum vel vulputate at, sagittis at nibh.\n\nMorbi tempus scelerisque lectus sit amet posuere. Morbi dictum ullamcorper scelerisque. Morbi eu condimentum felis. Donec rutrum feugiat dolor et bibendum. Mauris turpis sapien, molestie eu laoreet eget, tincidunt at sem. Sed interdum, erat at pharetra adipiscing, orci sem laoreet odio, sit amet fermentum eros urna egestas urna. Vivamus tortor enim, iaculis tristique pulvinar sed, molestie vel orci. In hac habitasse platea dictumst. Praesent aliquam, mauris sit amet mattis malesuada, mauris purus commodo lorem, quis convallis odio nisl in enim. Sed non turpis a tellus porta porttitor ac sed ligula. Pellentesque porta varius venenatis.\n\nCurabitur rutrum lacinia libero non imperdiet. Nulla consectetur tristique lacus, aliquet sodales neque posuere a. Praesent eu mauris vel enim laoreet pulvinar. Aliquam erat volutpat. Aliquam imperdiet dui sed enim lacinia in tempor tellus scelerisque. Fusce id ligula at lectus viverra interdum at id orci. Sed pharetra libero sem, quis auctor sem. Nam scelerisque egestas dui a accumsan.\n\nProin vel diam elit, sit amet pulvinar metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum eu sodales ipsum. Proin et lacus sit amet velit scelerisque dignissim. Ut mattis leo vitae enim semper quis interdum nisl aliquet. Suspendisse scelerisque condimentum nulla id placerat. Integer mollis luctus justo tincidunt accumsan. Nam consequat metus et diam facilisis sodales. Aenean molestie nulla in dui dictum luctus. Cras dolor sapien, lobortis ut facilisis nec, iaculis nec massa. Nulla quis mi lacus, hendrerit fermentum nunc. Mauris placerat consectetur porta.\n\nNunc scelerisque congue tortor et ornare. Integer a leo metus, eu dictum enim. Mauris aliquet facilisis auctor. Aenean cursus blandit convallis. Vestibulum id nisi semper sapien interdum congue. Nulla porta egestas viverra. Vivamus dignissim elit vitae sem adipiscing venenatis venenatis tortor placerat. Aliquam erat volutpat. Nulla sodales condimentum quam, ac porta sapien blandit vel. Proin feugiat ultricies enim, nec pellentesque libero condimentum et. Aliquam faucibus luctus est id ornare. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."];


#if 0

	if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		im1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 160, 160)];
		im2 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 0, 160, 160)];
	} else {
		im1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 500, 160, 160)];
		im2 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 500, 160, 160)];
	}

	UIColor *backgroundColor = [CreateButton backgroundColorForType:f.keyboardAppearance];
	im1.backgroundColor = backgroundColor;
	im2.backgroundColor = backgroundColor;
	
	[self.view addSubview:im1];
	[self.view addSubview:im2];
	im1.contentMode = UIViewContentModeCenter;
	im2.contentMode = UIViewContentModeCenter;
#endif

	[self.view addSubview:f];
	

#if 0
{
	UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
	//toolbar.backgroundColor = nil;
	//toolbar.barTintColor = [CreateButton backgroundColorForType:f.keyboardAppearance];
	toolbar.translucent = YES;
	//toolbar.tintColor = [UIColor clearColor];
	//toolbar.barTintColor = [UIColor clearColor];
	toolbar.barTintColor = [CreateButton toolbarBackgroundColorForType:f.keyboardAppearance];

	CreateButton *b = [CreateButton new];
	UIImage *i = [b buttonImage:CGSizeMake(52, 40) type:f.keyboardAppearance];

	UIBarButtonItem *a0 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
	a0.width = -9;

	UIBarButtonItem *b0 = [[UIBarButtonItem alloc] initWithCustomView:[[UIImageView alloc] initWithImage:i]];
	UIBarButtonItem *b1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:NULL];
	UIBarButtonItem *b2 = [[UIBarButtonItem alloc] initWithCustomView:[[UIImageView alloc] initWithImage:i]];
	UIBarButtonItem *b3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:NULL];
	UIBarButtonItem *b4 = [[UIBarButtonItem alloc] initWithCustomView:[[UIImageView alloc] initWithImage:i]];
	UIBarButtonItem *b5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:NULL];
	UIBarButtonItem *b6 = [[UIBarButtonItem alloc] initWithCustomView:[[UIImageView alloc] initWithImage:i]];
	UIBarButtonItem *b7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:NULL];
	UIBarButtonItem *b8 = [[UIBarButtonItem alloc] initWithCustomView:[[UIImageView alloc] initWithImage:i]];

	UIBarButtonItem *a1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
	a1.width = -9;

	toolbar.items = @[ a0, b0, b1, b2, b3, b4, b5, b6, b7, b8, a1 ];
	
	f.inputAccessoryView = toolbar;
}
#else

{
	UIInputView *toolbar = [[UIInputView alloc] initWithFrame:CGRectMake(0, 0, 320, 60) inputViewStyle:UIInputViewStyleKeyboard];	// UIInputViewStyleKeyboard UIInputViewStyleKeyboard

#if 0
	CreateButton *b = [CreateButton new];
	UIImage *i = [b buttonImage:CGSizeMake(300, 20) type:f.keyboardAppearance];
	UIImageView *iv = [[UIImageView alloc] initWithImage:i];
	iv.backgroundColor = [UIColor clearColor];
	[iv setFrame:CGRectMake(10, 10, 300, 40)];
	[toolbar addSubview:iv];
#endif
	
	f.inputAccessoryView = toolbar;
}


#endif


dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^
    {
		[f becomeFirstResponder];
    } );

}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];

#if 0
	CreateButton *cb = [CreateButton new];
	UIImage *i1 = [cb buttonImage:CGSizeMake(40, 40) type:f.keyboardAppearance];
	UIImage *i2 = [cb altButtonImage:CGSizeMake(40, 40) type:f.keyboardAppearance];
	assert(i1 && i2 && im1 && im2);
	im1.image = i1;
	im2.image = i2;
#endif

}

@end
