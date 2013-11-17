//
//  ImageStore.m
//  MyDiary
//
//  Created by chenchen on 13-9-15.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "ImageStore.h"

static ImageStore *defaultImageStore = nil;

@implementation ImageStore

+ (id)allocWithZone:(NSZone *)zone
{
    return [self defaultImageStore];
}

+ (ImageStore *)defaultImageStore
{
    if(!defaultImageStore) {
        defaultImageStore = [[super allocWithZone:NULL] init];
    }
    return defaultImageStore;
}

- (id)init
{
    if(defaultImageStore) {
        return defaultImageStore;
    }
    self = [super init];
    if(self) {
        dictionary = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)setImage:(UIImage *)image forKey:(NSString *)string
{
    NSString *imagePath = [self pathInDocumentDirectory:string];
    NSData *d = UIImageJPEGRepresentation(image, 0.5);
    [d writeToFile:imagePath atomically:YES];
    [dictionary setObject:image forKey:string];
}

-(UIImage *)imageForKey:(NSString *)string
{
    UIImage *image = [dictionary objectForKey:string];
    if(!image) {
        image = [UIImage imageWithContentsOfFile:[self pathInDocumentDirectory:string]];
        if(image) {
            [dictionary setObject:image forKey:string];
        }else {
            NSLog(@"error no such file : %@", [self pathInDocumentDirectory:string]);
        }
    }
    return [dictionary objectForKey:string];
}

-(void)deleteImageForKey:(NSString *)string
{
    if(!string) {
        return;
    }

    NSString *path = [self pathInDocumentDirectory:string];
    [[NSFileManager defaultManager] removeItemAtPath:path error:NULL];

    [dictionary removeObjectForKey:string];
}

- (NSString *)pathInDocumentDirectory:(NSString *)fileName
{
    NSArray *documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [documentDirectories objectAtIndex:0];
    return [documentDirectory stringByAppendingPathComponent:fileName];
}
@end
