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

	f = [[UITextField alloc] initWithFrame:CGRectMake(0, 200, 200, 22)];
f.keyboardAppearance = UIKeyboardAppearanceDark;	// UIKeyboardAppearanceDark UIKeyboardAppearanceLight
//self.view.backgroundColor = [UIColor blackColor];
	
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
	
	[self.view addSubview:f];
	[f becomeFirstResponder];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
	CreateButton *cb = [CreateButton new];
	UIImage *i1 = [cb buttonImage:CGSizeMake(40, 40) type:f.keyboardAppearance];
	UIImage *i2 = [cb altButtonImage:CGSizeMake(40, 40) type:f.keyboardAppearance];
	assert(i1 && i2 && im1 && im2);
	im1.image = i1;
	im2.image = i2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
