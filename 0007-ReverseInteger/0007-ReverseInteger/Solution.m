//
//  Solution.m
//  0007-ReverseInteger
//
//  Created by 刘靖煌 on 2020/3/18.
//  Copyright © 2020 刘靖煌. All rights reserved.
//

#import "Solution.h"

@implementation Solution

+ (int)reverse:(int)x{
    int rev = 0;
    while (x != 0) {
        //取余：取出最小位数
        int pop = x%10;
        x /= 10;
        
        if (rev > INT_MAX/10 || (rev == INT_MAX/10 && pop > 7)) {
            return 0;
        }  /// 如果用 NSInteger 代替 int，这里就要考虑是用 INT_MAX 还是 LONG_MAX 了
        
        if (rev < INT_MIN/10 || (rev == INT_MIN/10 && pop < -8)) {
            return 0;
        }
        
        rev = rev*10 + pop;
    }
    return rev;
}

@end
