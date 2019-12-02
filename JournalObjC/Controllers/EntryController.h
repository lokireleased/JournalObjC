//
//  EntryController.h
//  JournalObjC
//
//  Created by tyson ericksen on 12/2/19.
//  Copyright © 2019 tyson ericksen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

//shared instance
+(EntryController *) shared;

//source of truth
@property (nonatomic, strong) NSMutableArray *entries;

//methods
-(void)addEntry:(Entry *)entry;
-(void)removeEntry:(Entry *)entry;
-(void)saveToPersistentStorage;
-(void)loadFromPersistentStorage;

@end

NS_ASSUME_NONNULL_END
