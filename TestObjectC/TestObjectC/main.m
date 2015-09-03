//
//  main.m
//  TestObjectC
//
//  Created by Haihan Wang on 15/8/18.
//  Copyright (c) 2015年 malong tech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *nsArray = [[NSMutableArray alloc] init] ;//@[@"abc"];
        
        nsArray[0]=@"123";
        NSLog( nsArray[0]);
        nsArray[0]=@"ddd";
        NSLog( nsArray[0]);
        
        
        
        
    }
    return 0;
}
