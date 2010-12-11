//
//  CatalogViewController.m
//
//  Created by Duane Homick
//  Homick Enterprises - www.homick.com
//

#import "CatalogViewController.h"

@implementation CatalogViewController

- (void)valueChangedInView:(CustomUISwitch*)view;
{
    NSLog(@"valueChangedInView. %d", [view isOn]);
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor greenColor];
	
	// Size doesn't matter
	_customSwitch = [[CustomUISwitch alloc] initWithFrame:CGRectMake(100.0, 100.0, 0.0, 0.0)];
    _customSwitch.delegate = self;
	[self.view addSubview:_customSwitch];
	[_customSwitch release];

}

-(void) viewWillAppear:(BOOL)animated
{
    [_customSwitch setOn:NO animated:NO];

    [super viewWillAppear:animated];
}

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
}

- (void)didReceiveMemoryWarning 
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload 
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc 
{
    [_customSwitch release];
    [super dealloc];
}


@end
