//
//  MerlinDoc.m
//  Merlin
//
//  Created by Kei Masuda on 2/23/13.
//  Copyright (c) 2013 ConnerKeiRyan. All rights reserved.
//

#import "MerlinDoc.h"
#import "MerlinData.h"

@implementation MerlinDoc

- (id)initWithTitle:(NSString*)title completed:(BOOL)completed thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage {
    if ((self = [super init])) {
        self.data = [[MerlinData alloc] initWithTitle:title completed:completed];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end