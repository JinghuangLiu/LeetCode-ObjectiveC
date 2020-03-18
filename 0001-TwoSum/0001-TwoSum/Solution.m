//
//  Solution.m
//  0001-TwoSum
//
//  Created by 刘靖煌 on 2020/3/17.
//  Copyright © 2020 liujinghuang. All rights reserved.
//

#import "Solution.h"

@implementation Solution

+ (NSArray *)twoSum:(NSArray *)numbers target:(NSInteger)target WithApproachType:(TwoSumApproachType)approachType{
    
    switch (approachType) {
            /// 暴力法
        case TwoSumApproachTypeBruteForce:
            {
                for (int i = 0; i < numbers.count; i++) {
                    
                    for (int j = i + 1; j < numbers.count; j++) {
                        
                        NSInteger numberI = [numbers[i] longValue];
                        NSInteger numberJ = [numbers[j] longValue];
                        
                        if (numberJ == (target - numberI)) {
                            return [NSArray arrayWithObjects:@(i), @(j), nil];
                        }
                    }
                }
            }
            break;
            /// 两遍哈希表
        case TwoSumApproachTypeTwoPassHashTable:
        {
            NSMutableDictionary *dic = [NSMutableDictionary dictionary];
            
            /// 把所有的数据存到一个字典中，这里不考虑输入的数组有相同的数字的情况。
            for (int i = 0; i < numbers.count; i++) {
                [dic setObject:@(i) forKey:numbers[i]];
            }
            
            for (int i = 0; i < numbers.count; i++) {
                NSInteger complement = target - [numbers[i] longValue];
                if ([dic.allKeys containsObject:@(complement)] && [[dic objectForKey:@(complement)] longValue] != i) {
                    return [NSArray arrayWithObjects:@(i), [dic objectForKey:@(complement)], nil];
                }
            }
        }
            break;
            /// 一遍哈希表
        case TwoSumApproachTypeOnePassHashTable:
        {
            NSMutableDictionary *dic = [NSMutableDictionary dictionary];
            
            for (int i = 0; i < numbers.count; i++) {
                NSInteger complement = target - [numbers[i] longValue];
                if ([dic.allKeys containsObject:@(complement)]) {
                    return [NSArray arrayWithObjects:@(i), [dic objectForKey:@(complement)], nil];
                }
                [dic setObject:@(i) forKey:numbers[i]];
            }
        }
            break;
        default:
            break;
    }

    return [NSArray arrayWithObject:@"No two sum solution."];
}

@end
