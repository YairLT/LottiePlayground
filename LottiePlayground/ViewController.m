//
//  ViewController.m
//  LottiePlayground
//
//  Created by zur tene on 20/05/2018.
//  Copyright © 2018 zur tene. All rights reserved.
//

#import "ViewController.h"

#import <Lottie/LOTAnimationView.h>

@interface ViewController ()

@property (readonly, nonatomic) UIView *wrapper;

@property (readonly, nonatomic) LOTAnimationView *animation;

@end

@implementation ViewController

//2018-07-29 15:44:05.820388+0300 LottiePlayground[82454:11169848] position - (960.000000, 540.000000, 22, IN (0.000000, 0.000000), OUT (1.000000, 0.000000))
//2018-07-29 15:44:05.820701+0300 LottiePlayground[82454:11169848] position - (1524.000000, 540.000000, 45, IN (0.400000, 1.000000), OUT (0.167000, 0.167000))
//2018-07-29 15:44:05.820935+0300 LottiePlayground[82454:11169848] position - (1524.000000, 540.000000, 50, IN (0.833000, 0.833000), OUT (1.000000, 0.000000))
//2018-07-29 15:44:05.821044+0300 LottiePlayground[82454:11169848] position - (1524.000000, -268.000000, 66, IN (0.400000, 1.000000), OUT (0.000000, 0.000000))

- (void)viewDidLoad {
  [super viewDidLoad];

  _wrapper = [[UIView alloc] initWithFrame:CGRectZero];
  [self.view addSubview:self.wrapper];
  _animation = [LOTAnimationView animationNamed:@"Lottie_Text_Bounce"];
  [self.wrapper addSubview:self.animation];

  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    [self.animation playWithCompletion:^(BOOL animationFinished) {
      NSLog(@"completed");
    }];
  });

}

- (void)viewDidLayoutSubviews {
  self.wrapper.frame = self.view.bounds;
  self.animation.frame = self.wrapper.bounds;
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
