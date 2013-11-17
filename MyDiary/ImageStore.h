//
//  ImageStore.h
//  MyDiary
//
//  Created by chenchen on 13-9-15.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageStore : NSObject
{
    NSMutableDictionary *dictionary;
}
+ (ImageStore *)defaultImageStore;

- (void)setImage:(UIImage *)image forKey:(NSString *)string;
- (UIImage *)imageForKey:(NSString *)string;
- (void)deleteImageForKey:(NSString *)string;

- (NSString *)pathInDocumentDirectory:(NSString *)fileName;
@end
