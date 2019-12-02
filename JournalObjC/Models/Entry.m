//
//  Entry.m
//  JournalObjC
//
//  Created by tyson ericksen on 12/2/19.
//  Copyright © 2019 tyson ericksen. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title bodyText: (NSString *)bodyText
{
    self = [super init];
    if (self != nil) {
        _title = title;
        _bodyText = bodyText;
    }
    return self;
}

@end
