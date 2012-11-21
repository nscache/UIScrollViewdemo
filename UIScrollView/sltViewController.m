//
//  ViewController.m
//  UIScrollView
//
//  Created by niko on 12-10-16.
//  Copyright (c) 2012年 niko. All rights reserved.
//

#import "sltViewController.h"

@interface sltViewController ()

@end

@implementation sltViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScrollView *scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    scroll.backgroundColor = [UIColor clearColor];
    scroll.contentSize = CGSizeMake(scroll.frame.size.width, 520);
    [self.view addSubview:scroll];
    
    UIImage *img = [UIImage imageNamed:@"ok"];
    UIImage *img1 = [UIImage imageNamed:@"ok1"];
    UIImage *img2 = [UIImage imageNamed:@"ok2"];

    NSArray *imgs = [NSArray arrayWithObjects:img,img1,img2, nil];
    

    for(int i=0;i<3;i++)
    
    {
//        NSLog(@"%d%%3  %d",i,i%3);
//        NSLog(@"%d/3  %d",i,i/3);
        //排版
        
        CGRect rect;
        rect = CGRectMake(0+(i%4*80),0+(i/4)*85, 80, 85);
        UIButton *button = [[UIButton buttonWithType:UIButtonTypeCustom]retain];
//        UIImage *img = [UIImage imageNamed:@"ok"];

        [button addTarget:self action:@selector(nslogBtnTag:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = rect;
        
        button.tag = i;
        
        
        [button setImage:[imgs objectAtIndex:i] forState:UIControlStateNormal];

        //        [button setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:singleBook.icon ofType:nil]] forState:UIControlStateNormal];
        //        [button addTarget:self action:@selector(doReadBook:) forControlEvents:UIControlEventTouchUpInside];
        
        [scroll addSubview:button];
        [scroll bringSubviewToFront:button];
        
        
        [button release];
        

    }
   
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)nslogBtnTag:(id)sender
{
    UIButton *tempBTn = (UIButton *)sender;
    NSLog(@"%d",tempBTn.tag);
    
////    if (tempBTn.tag==0)
//    {
//        NSLog(@"____________++++++++++_________");
//        
//        UIImage *img = [UIImage imageNamed:@"ok"];
//        
//
//        [tempBTn setImage:img forState:UIControlStateNormal];
//        
//        
//    }
    
    
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
