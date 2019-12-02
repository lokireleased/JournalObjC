//
//  DetailViewController.m
//  JournalObjC
//
//  Created by tyson ericksen on 12/2/19.
//  Copyright © 2019 tyson ericksen. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController ()



@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
//    [self updateViews];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender
{
    NSString *entryTitle = _entryTitleLabel.text;
    NSString *entryBodyText = _entryBodyText.text;

    Entry *newEntry = [[Entry alloc] initWithTitle:entryTitle bodyText:entryBodyText];
    [EntryController.shared addEntry:newEntry];
    
//    navigationController?.popViewController(animated: true)
    
}
- (IBAction)cancelButtonTapped:(UIBarButtonItem *)sender
{
    _entryTitleLabel.text = @"";
    _entryBodyText.text = @"";
}

- (void)textFieldShouldReturn
{
    _entryBodyText.resignFirstResponder;
}

//- (void)updateViews: (Entry *)entry
//{
//    if (self) {
//        self.entryTitleLabel.text = entry.entry;
//        self.entryBodyText.text = entry.entry;
//    }
//}


@end
