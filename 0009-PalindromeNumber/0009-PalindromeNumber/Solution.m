//
//  Solution.m
//  0009-PalindromeNumber
//
//  Created by 刘靖煌 on 2020/3/18.
//  Copyright © 2020 刘靖煌. All rights reserved.
//

#import "Solution.h"

@implementation Solution

+ (BOOL)isPalindrome:(int)x{
    /// 当 x < 0 时，x 不是回文数。
    ///
    if (x < 0 || (x % 10 == 0 && x != 0)) {
        return NO;
    }
    
    int revertedNumber = 0;
    while (x > revertedNumber) {
        revertedNumber = revertedNumber * 10 + x % 10;
        x /= 10;
    }
    
    /// 当数字长度为奇数时，我们可以通过 revertedNumber/10 去除处于中位的数字。
    return x == revertedNumber || x == revertedNumber/10;
}

@end
