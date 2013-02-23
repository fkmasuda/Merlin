//
//  MerlinDoc.h
//  Merlin
//
//  Created by Kei Masuda on 2/23/13.
//  Copyright (c) 2013 ConnerKeiRyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MerlinData;

@interface MerlinDoc : NSObject

@property (strong) MerlinData *data;
@property (strong) NSImage *thumbImage;
@property (strong) NSImage *fullImage;

- (id)initWithTitle:(NSString*)title completed:(BOOL)completed thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage;

@end