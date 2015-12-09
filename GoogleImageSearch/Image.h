//
//  Image.h
//  GoogleImageSearch
//
//  Created by Client7 on 09.12.15.
//  Copyright © 2015 fhtw. All rights reserved.
//

@interface Image : NSObject

@property NSString *title;
@property NSString *url;

- (id)initWithTitle:(NSString *)title_ url:(NSString *)url_;

@end
