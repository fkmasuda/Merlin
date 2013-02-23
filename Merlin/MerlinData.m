//
//  MerlinData.m
//  Merlin
//
//  Created by Kei Masuda on 2/23/13.
//  Copyright (c) 2013 ConnerKeiRyan. All rights reserved.
//
#import "MerlinData.h"

@implementation MerlinData

- (id)initWithTitle:(NSString*)title rating:(BOOL)completed {
    if ((self = [super init])) {
        self.title = title;
        self.completed = completed;
    }
    return self;
}

@end