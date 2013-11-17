//
//  Diary.h
//  NoneARCMyDiary
//
//  Created by chenchen on 13-7-14.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Diary : NSObject<NSCoding>

+ (id)createDiary;

- (id)initWithTitle:(NSString *)theTitle content:(NSString *)theContent;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, readonly, getter = dateCreate) NSDate *dateCreate;
@property (nonatomic, strong) NSString *photoKey;
@end
