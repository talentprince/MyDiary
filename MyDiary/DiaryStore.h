//
//  DiaryStore.h
//  MyDiary
//
//  Created by chenchen on 13-11-17.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Diary.h"

@interface DiaryStore : NSObject
{
    NSMutableArray *diaries;
}

+ (DiaryStore *)defaultStore;

- (NSArray *) diaries;
- (Diary *)createDiary;

- (NSString *)diaryArchivePath;

- (BOOL)saveChanges;

- (void)fetchDiary;
@end
