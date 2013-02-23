//
//  MerlinData.h
//  Merlin
//
//  Created by Kei Masuda on 2/23/13.
//  Copyright (c) 2013 ConnerKeiRyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MerlinData : NSObject

@property (strong) NSString *title;
@property (assign) BOOL completed;

- (id)initWithTitle:(NSString*)title completed:(BOOL)completed;

@end