//
//  ViewController.m
//  GoogleImageSearch
//
//  Created by Client7 on 25.11.15.
//  Copyright © 2015 fhtw. All rights reserved.
//

#import "ViewController.h"
#import "GBLoading.h"

typedef NS_ENUM(NSInteger) {
    UIStateLoading,
    UIStateCompleted,
} UIState;

@interface ViewController ()

@property (assign, nonatomic) UIState uiState;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", _url);
    
    self.uiState = UIStateLoading;
    
    [[GBLoading sharedLoading] loadResource:_url withBackgroundProcessor:^id(NSData *rawData) {
        return [UIImage imageWithData:rawData];
    } success:^(id object) {
        UIImage *loadedImage = (UIImage *)object;
        self.imageView.image = loadedImage;
        self.uiState = UIStateCompleted;
        NSLog(@"loading successful");
    } failure:^(BOOL isCancelled) {
        NSLog(@"failed to load");
        self.uiState = UIStateCompleted;
    }];
}

- (void)setUiState:(UIState)uiState {
    // we need to set our backing instance variable
    _uiState = uiState;
    
    // we should reconfigure the UI based on one of the possible states
    switch (uiState) {
            
        case UIStateLoading: {
            self.imageView.hidden = YES;
            [self.loadingIndicator startAnimating];
        } break;
            
        case UIStateCompleted: {
            self.imageView.hidden = NO;
            [self.loadingIndicator stopAnimating];
        } break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
