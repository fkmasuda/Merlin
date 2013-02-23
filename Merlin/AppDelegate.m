//
//  AppDelegate.m
//  Merlin
//
//  Created by Kei Masuda on 2/23/13.
//  Copyright (c) 2013 ConnerKeiRyan. All rights reserved.
//

#import "AppDelegate.h"
#include "MasterViewController.h"

@interface  AppDelegate()
@property (nonatomic,strong) IBOutlet MasterViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // 1. Create the master View Controller
    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    
    // 2. Add the view controller to the Window's content view
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;
    
    // Setup sample data
    MerlinDoc *task1 = [[MerlinDoc alloc] initWithTitle:@"Potato Bug" completed:TRUE thumbImage:[NSImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[NSImage imageNamed:@"potatoBug.jpg"]];
    MerlinDoc *task2 = [[MerlinDoc alloc] initWithTitle:@"House Centipede" completed:TRUE thumbImage:[NSImage imageNamed:@"centipedeThumb.jpg"] fullImage:[NSImage imageNamed:@"centipede.jpg"]];
    MerlinDoc *task3 = [[MerlinDoc alloc] initWithTitle:@"Wolf Spider" completed:FALSE thumbImage:[NSImage imageNamed:@"wolfSpiderThumb.jpg"] fullImage:[NSImage imageNamed:@"wolfSpider.jpg"]];
    MerlinDoc *task4 = [[MerlinDoc alloc] initWithTitle:@"Lady Bug" completed:FALSE thumbImage:[NSImage imageNamed:@"ladybugThumb.jpg"] fullImage:[NSImage imageNamed:@"ladybug.jpg"]];
    NSMutableArray *tasks = [NSMutableArray arrayWithObjects:task1, task2, task3, task4, nil];
    
    self.masterViewController.tasks = tasks;
}

@end
