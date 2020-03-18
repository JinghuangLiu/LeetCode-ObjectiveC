//
//  Solution.h
//  0001-TwoSum
//
//  Created by 刘靖煌 on 2020/3/17.
//  Copyright © 2020 liujinghuang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TwoSumApproachType) {
    TwoSumApproachTypeBruteForce,
    TwoSumApproachTypeTwoPassHashTable,
    TwoSumApproachTypeOnePassHashTable,
};

NS_ASSUME_NONNULL_BEGIN

@interface Solution : NSObject

+ (NSArray *)twoSum:(NSArray *)numbers target:(NSInteger)target WithApproachType:(TwoSumApproachType)approachType;

@end

NS_ASSUME_NONNULL_END
