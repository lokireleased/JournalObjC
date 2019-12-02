//
//  JournalTableViewController.m
//  JournalObjC
//
//  Created by tyson ericksen on 12/2/19.
//  Copyright © 2019 tyson ericksen. All rights reserved.
//

#import "JournalTableViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface JournalTableViewController ()

@end

@implementation JournalTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EntryController.shared.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryListCell" forIndexPath:indexPath];
    
    NSString *entry = EntryController.shared.entries[indexPath.row];
    
    cell.textLabel.text = entry;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Entry *entry = EntryController.shared.entries[indexPath.row];
        [EntryController.shared removeEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//          if segue.identifier == "toDetailView" {
//              if let indexPath = tableView.indexPathForSelectedRow {
//                  if let destinationVC = segue.destination as? DetailViewController {
//                      let entry = EntryConroller.sharedInstance.entries[indexPath.row]
//                      destinationVC.entry = entry}

    UIViewController *nextVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    MyCustomSegue *segue = [[MyCustomSegue alloc] initWithIdentifier:@"toDetailView" source:self desitination:nextVC];
    [self prepareForSegue:segue sender:sender];
    [segue perform];
}
@end
