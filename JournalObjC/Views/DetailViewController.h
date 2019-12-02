//
//  DetailViewController.h
//  JournalObjC
//
//  Created by tyson ericksen on 12/2/19.
//  Copyright © 2019 tyson ericksen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *entryTitleLabel;

@property (weak, nonatomic) IBOutlet UITextView *entryBodyText;


@property (nonatomic) Entry *detailViewLandingPad;


@end

NS_ASSUME_NONNULL_END
