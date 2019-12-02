//
//  EntryController.m
//  JournalObjC
//
//  Created by tyson ericksen on 12/2/19.
//  Copyright © 2019 tyson ericksen. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController

+ (EntryController *)shared
{
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        _entries = [self addEntry:entry];
//    }
//    return self;
//}

- (void)addEntry:(Entry *)entry
{
    [self.entries addObject:entry];
    
}

- (void)removeEntry:(Entry *)entry
{
    //get the index and then remove
//    [self.entries removeObjectAtIndex:];
    [self.entries removeObject:entry];
    
//    - (void)removeObjectAtIndex:(NSUInteger)index;
//    - (void)removeObject:(ObjectType)anObject;
}


-(void)saveToPersistentStorage
{
    
}

-(void)loadFromPersistentStorage
{
    
}
@end
