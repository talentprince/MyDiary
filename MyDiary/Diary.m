//
//  Diary.m
//  NoneARCMyDiary
//
//  Created by chenchen on 13-7-14.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "Diary.h"

@implementation Diary
- (id)init
{
    return [self initWithTitle:@" " content:@" "];
}

- (id)initWithTitle:(NSString *)theTitle content:(NSString *)theContent
{
    self = [super init];
    if(self) {
        [self setTitle:theTitle];
        [self setContent:theContent];
        
        _dateCreate = [[NSDate alloc] init];
    }
    return self;
}

+ (id)createDiary
{
    Diary *newDiary = [[Diary alloc] init];
    return newDiary;
}
@end
