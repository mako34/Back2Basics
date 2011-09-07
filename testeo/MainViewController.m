//
//  MainViewController.m
//  testeo
//
//  Created by  on 25/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "MyClassic.h"

@implementation MainViewController

 
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
  
    
    
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
	self.view.backgroundColor = [UIColor grayColor];

    
    UILabel *labelA = [[[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 20)]autorelease];
    
    labelA.text = @"mk ss9";
    
    [self.view addSubview:labelA];
    
    
    //messaging to class
    [MyClassic pongalo];
    
    int i = [MyClassic numero];
    NSLog(@"el nuro :%d",i);
    
    [MyClassic suma1:343];
    
    
 
    int y = [MyClassic sumatoria:11 :12]; 
    NSLog(@"suma = %d",y);
    
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

-(void) dealloc {
    
    [super dealloc];
}

@end
