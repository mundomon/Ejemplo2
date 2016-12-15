//
//  ViewController.m
//  Ejemplo2
//
//  Created by dedam on 29/11/16.
//  Copyright © 2016 dedam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *rayo1=[UIImage imageNamed:@"rayo1.png"];
    UIImage *rayo2=[UIImage imageNamed:@"rayo2.png"];
    
    UIImage *parachute=[UIImage imageNamed:@"parachute.png"];
    
    _parachuteImageView = [[UIImageView alloc] initWithImage:parachute];
    [self.view addSubview:_parachuteImageView];
    [self startParachuteAnimation:5.0f];
    
    
    
    
    
    _rayoImageView=[[UIImageView alloc] initWithImage:rayo2];
    
    [_rayoImageView setFrame:CGRectMake(self.view.bounds.size.width / 4,30.0f,150.0f,100.0f)];
    
    [self.view addSubview:_rayoImageView];
    
    [_rayoImageView setAnimationImages:[NSArray arrayWithObjects:rayo1,rayo2, nil]];
    [_rayoImageView setAnimationDuration:0.2];
    [_rayoImageView setAnimationRepeatCount:0];
    
    [_rayoImageView startAnimating];
}


-(void)startParachuteAnimation:(CGFloat) duracion{
    CGRect beginRect = CGRectMake(0.0f,30.0f,100.0f, 100.0f);
    CGRect endRect= CGRectMake(self.view.bounds.size.width-100,
                               self.view.bounds.size.height-100,
                               100.0f,
                               100.0f);
    [self.parachuteImageView setFrame:beginRect];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:duracion];
    
    [_parachuteImageView setFrame:endRect];
    [UIView commitAnimations];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
