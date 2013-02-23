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
