//
//  MainViewController.m
//  testeo
//
//  Created by  on 25/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "MyClassic.h"
#import "SecondoVC.h"

//categorie!! adendo de metodo a UINavigationBar!!!
@implementation UINavigationBar (CustomImage)
- (void)drawRect:(CGRect)rect {
    UIImage *image = [UIImage imageNamed: @"fondo.png"];
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}
@end


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
    
  
    [self navTitle];
    
    
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
    
    
    //el boton
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self 
               action:@selector(aMethod:)
     forControlEvents:UIControlEventTouchDown];
    [button setTitle:@"Pa Secondo" forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];

}

-(void) navTitle {
    
    self.title = @"SS9";

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 44)];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:20.0];
    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    label.textAlignment = UITextAlignmentCenter;
    label.textColor =[UIColor blueColor];
    //label.text=@"Mk";  

    label.text=self.title;  
    self.navigationItem.titleView = label;      
    [label release];
    

}

-(IBAction)aMethod:(id)sender {
    NSLog(@"sumbalo");
    SecondoVC *secVC = [[[SecondoVC alloc]init] autorelease];
    [self.navigationController pushViewController:secVC animated:YES];
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
