//
//  main.m
//  0009-PalindromeNumber
//
//  Created by 刘靖煌 on 2020/3/18.
//  Copyright © 2020 刘靖煌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Solution.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL isPalindrome = [Solution isPalindrome:1234321];
        if (isPalindrome) {
            NSLog(@"It is Palindrome.");
        }
        else{
            NSLog(@"It is not Palindrome.");
        }
    }
    return 0;
}
