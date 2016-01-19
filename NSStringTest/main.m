//
//  main.m
//  NSStringTest
//
//  Created by SpiColorPendra on 16/1/19.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       // NSString的一些用法
        NSString* str = @"Hello";
        NSString* book = @"<疯狂iOS讲义>";
        // 在str后面追加固定的字符串，
        // 原来的字符串对象并不改变，只是将新生成的字符串重新赋给str指针变量
        str = [str stringByAppendingString:@",iOS!"];
        NSLog(@"%@",str);
        //获取字符串对应的C风格字符串，
        const char* cstr = [str UTF8String];
        NSLog(@"获取的C字符串: %s",cstr);
        //在str后面追加带变量的字符串,
        //原来的字符串对象并不改变 只是将新生成的字符串重新赋给str指针变量
        str = [str stringByAppendingFormat:@"%@是一本非常不错的图书.",book];
        NSLog(@"%@",str);
        NSLog(@"str的字符个数为: %lu",[str length]);
        NSLog(@"str按UTF-8字符集解码后字节数为:%lu",[str lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        //获取str的前10个字符串字符
        NSString* s1 = [str substringToIndex:10];
        NSLog(@"%@",s1);
        //获取str从第5个字符开始，与后面字符组成的字符串
        NSString* s2 = [str substringFromIndex:5];
        NSLog(@"%@",s2);
        //获取从第5个开始 ，到15个字符组成的字符串
        NSString* s3 = [str substringWithRange:NSMakeRange(5, 15)];
        NSLog(@"%@",s3);
        // 获取iOS在str中出现的位置
        NSRange pos = [str rangeOfString:@"iOS"];
        NSLog(@"iOS在str中出现的开始位置,%ld,长度为:%ld",pos.location,pos.length);
        //将str的所有字符转换为大写
        str = [str uppercaseString];
        NSLog(@"%@",str);
        // stringByAppendingString
        // UTF8String
        // stringByAppendingFormat
        // length
        // lengthOfBytesUsingEncoding
        // substringToIndex
        // substringFromIndex
        // substringWithRange : NSMakeRange
        // rangeOfString
        // uppercaseString
    
    }
    return 0;
}
