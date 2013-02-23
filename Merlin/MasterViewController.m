//
//  MasterViewController.m
//  Merlin
//
//  Created by Kei Masuda on 2/23/13.
//  Copyright (c) 2013 ConnerKeiRyan. All rights reserved.
//

#import "MasterViewController.h"
#import "MerlinDoc.h"
#import "merlinData.h"

@interface MasterViewController ()

@end

@implementation MasterViewController
@synthesize tasks = _tasks;


- (NSMutableArray *)tasks {
    
    if (!_tasks) {
    // 1. Create the master View Controller
//    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
//    
//    // 2. Add the view controller to the Window's content view
//    [self.window.contentView addSubview:self.masterViewController.view];
//    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;
//    
    // Setup sample data
    MerlinDoc *task1 = [[MerlinDoc alloc] initWithTitle:@"Potato Bug" completed:TRUE thumbImage:[NSImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[NSImage imageNamed:@"potatoBug.jpg"]];
    MerlinDoc *task2 = [[MerlinDoc alloc] initWithTitle:@"House Centipede" completed:TRUE thumbImage:[NSImage imageNamed:@"centipedeThumb.jpg"] fullImage:[NSImage imageNamed:@"centipede.jpg"]];
    MerlinDoc *task3 = [[MerlinDoc alloc] initWithTitle:@"Wolf Spider" completed:FALSE thumbImage:[NSImage imageNamed:@"wolfSpiderThumb.jpg"] fullImage:[NSImage imageNamed:@"wolfSpider.jpg"]];
    MerlinDoc *task4 = [[MerlinDoc alloc] initWithTitle:@"Lady Bug" completed:FALSE thumbImage:[NSImage imageNamed:@"ladybugThumb.jpg"] fullImage:[NSImage imageNamed:@"ladybug.jpg"]];
     _tasks = [NSMutableArray arrayWithObjects:task1, task2, task3, task4, nil];
    }
    
    return _tasks;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    // Get a new ViewCell
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    
    // Since this is a single-column table view, this would not be necessary.
    // But it's a good practice to do it in order by remember it when a table is multicolumn.
    if( [tableColumn.identifier isEqualToString:@"TaskColumn"] )
    {
        MerlinDoc *taskDoc = [self.tasks objectAtIndex:row];
        cellView.imageView.image = taskDoc.thumbImage;
        cellView.textField.stringValue = taskDoc.data.title;
        return cellView;
    }
    return cellView;
}




- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [self.tasks count];
}

@end
