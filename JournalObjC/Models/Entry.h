//
//  Entry.h
//  JournalObjC
//
//  Created by tyson ericksen on 12/2/19.
//  Copyright © 2019 tyson ericksen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

- (instancetype)initWithTitle:(NSString *)title bodyText: (NSString *)bodyText;

@property NSString *title;
@property NSTimeInterval *timeStamp;
@property NSString *bodyText;


@end 

NS_ASSUME_NONNULL_END
