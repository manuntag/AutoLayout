//
//  ViewController.m
//  AutoLayout
//
//  Created by David Manuntag on 2015-01-20.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property(nonatomic, strong) UIView *framingView;
@property (nonatomic, weak) NSLayoutConstraint *    framingViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    framingViewWidth;

@property(nonatomic, strong) UIView * blueBox1;
@property(nonatomic, strong) UIView * blueBox2;
@property(nonatomic, strong) UIView * blueBox3;

@property(nonatomic, strong) UIView * purpleRectangle;

@property(nonatomic, strong) UIView * orangeRectangle;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   
    
   
    
    
    
    
}


// instaniate shapes

-(void)makeshapes {


//green framingView
    
self.framingView = [[UIView alloc]init];
self.framingView.translatesAutoresizingMaskIntoConstraints = NO;
self.framingView.backgroundColor = [UIColor greenColor];

// blue boxes (3)

self.blueBox1 = [[UIView alloc]init];
self.blueBox1.translatesAutoresizingMaskIntoConstraints = NO;
self.blueBox1.backgroundColor = [UIColor blueColor];

self.blueBox2 = [[UIView alloc]init];
self.blueBox2.translatesAutoresizingMaskIntoConstraints = NO;
self.blueBox2.backgroundColor = [UIColor blueColor];

self.blueBox3 = [[UIView alloc]init];
self.blueBox3.translatesAutoresizingMaskIntoConstraints = NO;
self.blueBox3.backgroundColor = [UIColor blueColor];

// purple rectangle

self.purpleRectangle = [[UIView alloc]init];
self.purpleRectangle.translatesAutoresizingMaskIntoConstraints = NO;
self.purpleRectangle.backgroundColor = [UIColor purpleColor];

//orange rectangle

self.orangeRectangle = [[UIView alloc]init];
self.orangeRectangle.translatesAutoresizingMaskIntoConstraints = NO;
self.orangeRectangle.backgroundColor = [UIColor orangeColor];


[self.view addSubview:self.framingView];
    
//add objects to subview of framingView

[self.framingView addSubview:self.blueBox1];
[self.framingView addSubview:self.blueBox2];
[self.framingView addSubview:self.blueBox3];

[self.framingView addSubview:self.purpleRectangle];

[self.framingView addSubview:self.orangeRectangle];
    
}

// methods that correspond to button press


-(void)squareButtonPress {
    
    
    
    
    // green frameView setup
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.framingView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.framingView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:-50.0]];
    
    NSLayoutConstraint *framingViewHeight = [NSLayoutConstraint constraintWithItem:self.framingView
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:500.0];
    
    NSLayoutConstraint *framingViewWidth = [NSLayoutConstraint constraintWithItem:self.framingView
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:500.0];
    
    [self.framingView addConstraint:framingViewHeight];
    [self.framingView addConstraint:framingViewWidth];
    
    self.framingViewHeight = framingViewHeight;
    self.framingViewWidth = framingViewWidth;


    
    // blue box setup
    
    
    NSDictionary * viewsDictionary = @{@"blueBox1":self.blueBox1,@"blueBox2":self.blueBox2, @"blueBox3":self.blueBox3, @"purpleRectangle":self.purpleRectangle, @"orangeRectangle":self.orangeRectangle};
    
    //define bluebox1 size
    
    NSArray * constraint_H = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[blueBox1(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    
    
    NSArray * constraint_V = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"V:[blueBox1(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    [self.blueBox1 addConstraints:constraint_H];
    [self.blueBox1 addConstraints:constraint_V];
    
    
    
    //define bluebox2 size
    
    NSArray * constraint_bluebox2_H = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[blueBox2(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    
    
    NSArray * constraint_bluebox2_V = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"V:[blueBox2(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    [self.blueBox2 addConstraints:constraint_bluebox2_H];
    [self.blueBox2 addConstraints:constraint_bluebox2_V];

    
    //define bluebox3 size
    
    NSArray * constraint_bluebox3_H = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"H:[blueBox3(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    
    
    NSArray * constraint_bluebox3_V = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"V:[blueBox3(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    [self.blueBox3 addConstraints:constraint_bluebox3_H];
    [self.blueBox3 addConstraints:constraint_bluebox3_V];

    
    
    
    // define blueBox positions
    
    NSArray * constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[blueBox1]-100-[blueBox2]-80-[blueBox3]"
                                                                         options:NSLayoutFormatAlignAllLeft
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    
    NSArray * constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-225-[blueBox1]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    
    
    
    
    [self.framingView addConstraints:constraint_POS_V];
    [self.framingView addConstraints:constraint_POS_H];

    
    //purple box size
    
    NSArray * constraint_purpleRectangle_H = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[purpleRectangle(305)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    
    
    NSArray * constraint_purpleRectangle_V = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"V:[purpleRectangle(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    [self.purpleRectangle addConstraints:constraint_purpleRectangle_H];
    [self.purpleRectangle addConstraints:constraint_purpleRectangle_V];

    
    // define purple box positions
    
    NSArray * constraint_purpleRectangle_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-450-[purpleRectangle]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    
    NSArray * constraint_purpleRectangle_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-180-[purpleRectangle]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    
    [self.framingView addConstraints:constraint_purpleRectangle_POS_V];
    [self.framingView addConstraints:constraint_purpleRectangle_POS_H];

    
    // orange rectangle setup size
    
    
    NSArray * constraint_orangeRectangle_H = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"H:[orangeRectangle(150)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    
    
    NSArray * constraint_orangeRectangle_V = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"V:[orangeRectangle(50)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    [self.orangeRectangle addConstraints:constraint_orangeRectangle_H];
    [self.orangeRectangle addConstraints:constraint_orangeRectangle_V];
    
    
    // define purple box positions
    
    NSArray * constraint_orangeRectangle_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-25-[orangeRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    NSArray * constraint_orangeRectangle_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-300-[orangeRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    [self.framingView addConstraints:constraint_orangeRectangle_POS_V];
    [self.framingView addConstraints:constraint_orangeRectangle_POS_H];

    
    

    
    
}






-(void)potraitButtonPress {
    
    
    
    
    // green frameView setup
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.framingView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.framingView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:-50.0]];
    
    NSLayoutConstraint *framingViewHeight = [NSLayoutConstraint constraintWithItem:self.framingView
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:500.0];
    
    NSLayoutConstraint *framingViewWidth = [NSLayoutConstraint constraintWithItem:self.framingView
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:400.0];
    
    [self.framingView addConstraint:framingViewHeight];
    [self.framingView addConstraint:framingViewWidth];
    
    self.framingViewHeight = framingViewHeight;
    self.framingViewWidth = framingViewWidth;
    
    
    
    // blue box setup
    
    
    NSDictionary * viewsDictionary = @{@"blueBox1":self.blueBox1,@"blueBox2":self.blueBox2, @"blueBox3":self.blueBox3, @"purpleRectangle":self.purpleRectangle, @"orangeRectangle":self.orangeRectangle};
    
    //define bluebox1 size
    
    NSArray * constraint_H = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[blueBox1(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    
    
    NSArray * constraint_V = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"V:[blueBox1(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    [self.blueBox1 addConstraints:constraint_H];
    [self.blueBox1 addConstraints:constraint_V];
    
    
    
    //define bluebox2 size
    
    NSArray * constraint_bluebox2_H = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"H:[blueBox2(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    
    
    NSArray * constraint_bluebox2_V = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"V:[blueBox2(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    [self.blueBox2 addConstraints:constraint_bluebox2_H];
    [self.blueBox2 addConstraints:constraint_bluebox2_V];
    
    
    //define bluebox3 size
    
    NSArray * constraint_bluebox3_H = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"H:[blueBox3(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    
    
    NSArray * constraint_bluebox3_V = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"V:[blueBox3(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    [self.blueBox3 addConstraints:constraint_bluebox3_H];
    [self.blueBox3 addConstraints:constraint_bluebox3_V];
    
    
    
    
    // define blueBox positions
    
    NSArray * constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[blueBox1]-100-[blueBox2]-80-[blueBox3]"
                                                                         options:NSLayoutFormatAlignAllLeft
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    
    NSArray * constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-150-[blueBox1]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    
    
    
    
    [self.framingView addConstraints:constraint_POS_V];
    [self.framingView addConstraints:constraint_POS_H];
    
    
    //purple box size
    
    NSArray * constraint_purpleRectangle_H = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"H:[purpleRectangle(225)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    
    
    NSArray * constraint_purpleRectangle_V = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"V:[purpleRectangle(50)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    [self.purpleRectangle addConstraints:constraint_purpleRectangle_H];
    [self.purpleRectangle addConstraints:constraint_purpleRectangle_V];
    
    
    // define purple box positions
    
    NSArray * constraint_purpleRectangle_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-450-[purpleRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    NSArray * constraint_purpleRectangle_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-100-[purpleRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    [self.framingView addConstraints:constraint_purpleRectangle_POS_V];
    [self.framingView addConstraints:constraint_purpleRectangle_POS_H];
    
    
    // orange rectangle setup size
    
    
    NSArray * constraint_orangeRectangle_H = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"H:[orangeRectangle(150)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    
    
    NSArray * constraint_orangeRectangle_V = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"V:[orangeRectangle(50)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    [self.orangeRectangle addConstraints:constraint_orangeRectangle_H];
    [self.orangeRectangle addConstraints:constraint_orangeRectangle_V];
    
    
    // define purple box positions
    
    NSArray * constraint_orangeRectangle_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-25-[orangeRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    NSArray * constraint_orangeRectangle_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-200-[orangeRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    [self.framingView addConstraints:constraint_orangeRectangle_POS_V];
    [self.framingView addConstraints:constraint_orangeRectangle_POS_H];
    
    
    
}



-(void)landscapeButtonPress {

  
    // green frameView setup
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.framingView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.framingView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:-50.0]];
    
    NSLayoutConstraint *framingViewHeight = [NSLayoutConstraint constraintWithItem:self.framingView
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:300.0];
    
    NSLayoutConstraint *framingViewWidth = [NSLayoutConstraint constraintWithItem:self.framingView
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:700.0];
    
    [self.framingView addConstraint:framingViewHeight];
    [self.framingView addConstraint:framingViewWidth];
    
    self.framingViewHeight = framingViewHeight;
    self.framingViewWidth = framingViewWidth;
    
    
    
    // blue box setup
    
    
    NSDictionary * viewsDictionary = @{@"blueBox1":self.blueBox1,@"blueBox2":self.blueBox2, @"blueBox3":self.blueBox3, @"purpleRectangle":self.purpleRectangle, @"orangeRectangle":self.orangeRectangle};
    
    //define bluebox1 size
    
    NSArray * constraint_H = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[blueBox1(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    
    
    NSArray * constraint_V = [NSLayoutConstraint
                              constraintsWithVisualFormat:@"V:[blueBox1(50)]"
                              options:0
                              metrics:nil
                              views:viewsDictionary];
    
    [self.blueBox1 addConstraints:constraint_H];
    [self.blueBox1 addConstraints:constraint_V];
    
    
    
    //define bluebox2 size
    
    NSArray * constraint_bluebox2_H = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"H:[blueBox2(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    
    
    NSArray * constraint_bluebox2_V = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"V:[blueBox2(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    [self.blueBox2 addConstraints:constraint_bluebox2_H];
    [self.blueBox2 addConstraints:constraint_bluebox2_V];
    
    
    //define bluebox3 size
    
    NSArray * constraint_bluebox3_H = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"H:[blueBox3(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    
    
    NSArray * constraint_bluebox3_V = [NSLayoutConstraint
                                       constraintsWithVisualFormat:@"V:[blueBox3(50)]"
                                       options:0
                                       metrics:nil
                                       views:viewsDictionary];
    
    [self.blueBox3 addConstraints:constraint_bluebox3_H];
    [self.blueBox3 addConstraints:constraint_bluebox3_V];
    
    
    
    
    // define blueBox positions
    
    NSArray * constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-25-[blueBox1]-50-[blueBox2]-65-[blueBox3]"
                                                                         options:NSLayoutFormatAlignAllLeft
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    
    NSArray * constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-325-[blueBox1]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    
    
    
    
    [self.framingView addConstraints:constraint_POS_V];
    [self.framingView addConstraints:constraint_POS_H];
    
    
    //purple box size
    
    NSArray * constraint_purpleRectangle_H = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"H:[purpleRectangle(225)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    
    
    NSArray * constraint_purpleRectangle_V = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"V:[purpleRectangle(50)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    [self.purpleRectangle addConstraints:constraint_purpleRectangle_H];
    [self.purpleRectangle addConstraints:constraint_purpleRectangle_V];
    
    
    // define purple box positions
    
    NSArray * constraint_purpleRectangle_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-230-[purpleRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    NSArray * constraint_purpleRectangle_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-450-[purpleRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    [self.framingView addConstraints:constraint_purpleRectangle_POS_V];
    [self.framingView addConstraints:constraint_purpleRectangle_POS_H];
    
    
    // orange rectangle setup size
    
    
    NSArray * constraint_orangeRectangle_H = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"H:[orangeRectangle(150)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    
    
    NSArray * constraint_orangeRectangle_V = [NSLayoutConstraint
                                              constraintsWithVisualFormat:@"V:[orangeRectangle(50)]"
                                              options:0
                                              metrics:nil
                                              views:viewsDictionary];
    
    [self.orangeRectangle addConstraints:constraint_orangeRectangle_H];
    [self.orangeRectangle addConstraints:constraint_orangeRectangle_V];
    
    
    // define orange positions
    
    NSArray * constraint_orangeRectangle_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-25-[orangeRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    NSArray * constraint_orangeRectangle_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-500-[orangeRectangle]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:viewsDictionary];
    
    [self.framingView addConstraints:constraint_orangeRectangle_POS_V];
    [self.framingView addConstraints:constraint_orangeRectangle_POS_H];
    

    
    
}




// buttons

- (IBAction)square:(id)sender {
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.framingView.backgroundColor = [UIColor whiteColor];
    self.blueBox1.backgroundColor = [UIColor whiteColor];
    self.blueBox2.backgroundColor = [UIColor whiteColor];
    self.blueBox3.backgroundColor = [UIColor whiteColor];
    self.purpleRectangle.backgroundColor = [UIColor whiteColor];
    self.orangeRectangle.backgroundColor = [UIColor whiteColor];
    
    [self makeshapes];
    
    [self squareButtonPress];

    
}


- (IBAction)potrait:(id)sender {
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.framingView.backgroundColor = [UIColor whiteColor];
    self.purpleRectangle.backgroundColor = [UIColor whiteColor];
    self.blueBox1.backgroundColor = [UIColor whiteColor];
    self.blueBox2.backgroundColor = [UIColor whiteColor];
    self.blueBox3.backgroundColor = [UIColor whiteColor];
    self.purpleRectangle.backgroundColor = [UIColor whiteColor];
    self.orangeRectangle.backgroundColor = [UIColor whiteColor];
    
    
    [self makeshapes];
    
    [self potraitButtonPress];

}

- (IBAction)landscape:(id)sender {

    self.view.backgroundColor = [UIColor whiteColor];
    self.framingView.backgroundColor = [UIColor whiteColor];
    self.purpleRectangle.backgroundColor = [UIColor whiteColor];
    self.blueBox1.backgroundColor = [UIColor whiteColor];
    self.blueBox2.backgroundColor = [UIColor whiteColor];
    self.blueBox3.backgroundColor = [UIColor whiteColor];
    self.orangeRectangle.backgroundColor = [UIColor whiteColor];
    
    [self makeshapes];

    [self landscapeButtonPress];
    
}



@end
