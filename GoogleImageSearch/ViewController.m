//
//  ViewController.m
//  GoogleImageSearch
//
//  Created by Client7 on 25.11.15.
//  Copyright © 2015 fhtw. All rights reserved.
//

#import "ViewController.h"
#import "GBLoading.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", _url);
    
    [[GBLoading sharedLoading] loadResource:@"http://..." withBackgroundProcessor:^id(NSData *rawData) {
        return [UIImage imageWithData:rawData];
    } success:^(id object) {
        UIImage *loadedImage = (UIImage *)object;
        self.imageView.image = loadedImage;
        //do something with loaded image
    } failure:^(BOOL isCancelled) {
        NSLog(@"failed to load");
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
