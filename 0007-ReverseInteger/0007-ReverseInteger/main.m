//
//  main.m
//  0007-ReverseInteger
//
//  Created by 刘靖煌 on 2020/3/18.
//  Copyright © 2020 刘靖煌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Solution.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        int result = [Solution reverse:123456789];
        NSLog(@"Result:%i",result);
    }
    return 0;
}
