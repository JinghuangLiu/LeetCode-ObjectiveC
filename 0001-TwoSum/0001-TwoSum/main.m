//
//  main.m
//  0001-TwoSum
//
//  Created by 刘靖煌 on 2020/3/17.
//  Copyright © 2020 刘靖煌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Solution.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *result = [Solution twoSum:@[@(1), @(2), @(5), @(4), @(10)] target:9 WithApproachType:TwoSumApproachTypeBruteForce];
        NSLog(@"Result:%@",result);
        
    }
    return 0;
}
