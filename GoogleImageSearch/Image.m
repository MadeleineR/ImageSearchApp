//
//  Image.m
//  GoogleImageSearch
//
//  Created by Client7 on 09.12.15.
//  Copyright © 2015 fhtw. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Image.h"

@implementation Image

- (id)initWithTitle:(NSString *)title_
               url:(NSString *)url_
{
    if( self = [super init] )
    {
        _title = title_;
        _url = url_;
    }
    
    return self;
}


@end