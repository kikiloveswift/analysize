//
//  main.m
//  analysize
//
//  Created by kong on 16/1/18.
//  Copyright © 2016年 kong. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *urlString1 = @"%7B%22index%22:1,%22data%22:%22%7B%5C%22index%5C%22:1,%5C%22url%5C%22:%5C%22api35/Product/GetGroupProductPriceInfo%5C%22,%5C%22param%5C%22:%5C%22%7B%5C%5C%5C%22ProductID%5C%5C%5C%22:%5C%5C%5C%2242783%5C%5C%5C%22,%5C%5C%5C%22GroupID%5C%5C%5C%22:%5C%5C%5C%221360818%5C%5C%5C%22,%5C%5C%5C%22MemberId%5C%5C%5C%22:-1%7D%5C%22,%5C%22usecache%5C%22:1%7D%22%7D";
        //丢弃已经弃用的方法
        
        //解码
        NSString *string2 = [urlString1 stringByRemovingPercentEncoding];
        NSLog(@"string2 is %@",string2);
        
        //编码
        NSCharacterSet *set = [NSCharacterSet URLQueryAllowedCharacterSet];
        NSString *string3 = [string2 stringByAddingPercentEncodingWithAllowedCharacters:set];
        
        NSLog(@"string3 is %@",string3);
        if ([string3 isEqualToString:urlString1]) {
            NSLog(@"same***********");
    }
    return 0;
    }
}
