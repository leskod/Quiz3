//
//  main.m
//  Quiz3
//
//  Created by Lesko, Dereck on 1/31/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // 1
        NSLog(@"Dereck");
        
        // 2
        NSString *firstName = @"Dereck";
        
        // 3
        NSLog(@"3.  firstName = %@",firstName);
        
        // 4
        NSNumber *myNumber = @200;
        
        // 5
        NSLog(@"5.  myNumber = %@", myNumber);
        
        // 6
        NSArray *fruits = @[@"Apple", @"Banana", @"Orange"];
        
        // 7
        for (NSString *fruit in fruits) {
            NSLog(@"7.  Fast Enum  %@ fruit", fruit);
        }
        
        // 8
        NSDictionary *fruitSweetness = @{
                                     @"Apple": @8,
                                     @"Banana": @3,
                                     @"Orange": @6
                                     };
        // 9
        NSLog(@"9.  Sweetness of Apple is %@", fruitSweetness[@"Apple"]);
        
        // 10
        NSUInteger myUInteger = 123;
        NSLog(@"10.  myUInteger = %lu", myUInteger);
        
        // 11
        NSNumber *myNumOne = @10;
        NSNumber *myNumTwo = @5;
        NSUInteger myUInteger1 = [myNumOne unsignedIntegerValue];
        NSUInteger myUInteger2 = [myNumTwo unsignedIntegerValue];
        NSUInteger myProduct = myUInteger1 * myUInteger2;
        NSLog(@"11.  myProduct =  %lu", myProduct);
        
        // 12
        NSString *lastName = @"Lesko";
        
        // 13
        NSString *fullName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        
        // 14
        NSLog(@"14.  fullName = %@", fullName);
        
        // 15
//        if([fruitSweetness[@"Apple"] integerValue] < 4){
//            NSLog(@"Not Sweet");
//        }else if ([fruitSweetness[@"Apple"] integerValue] > 7){
//            NSLog(@"Sweet");
//        } else {
//            NSLog(@"Somewhat sweet");
//        }
        
        for (NSString *theFruit in fruitSweetness) {
            //NSString *theSweetness = fruitSweetness[theFruit];
        
            NSLog(@"15. fruit %@", theFruit);
            if([fruitSweetness[theFruit] integerValue] < 4){
                NSLog(@"Not Sweet");
            }else if ([fruitSweetness[theFruit] integerValue] > 7){
                NSLog(@"Sweet");
            } else {
                NSLog(@"Somewhat sweet");
            }
        }
        
        // 16
        typedef enum {
            MON=1,
            TUE=2,
            WED=3,
            THU=4,
            FRI=5,
            SAT=6,
            SUN=7
        } DayOfWeek;
        
        // 17
        DayOfWeek *currentDay;
        
        // 18
        void (^myFirstBlock)(void) = ^{
            NSLog(@"Hello World");
        };
        myFirstBlock();
        
        // 19
        void (^mySecondBlock)(NSString *) = ^(NSString *strBlock){
            NSLog(@"%@", strBlock);
        };
        mySecondBlock(@"Hello");
        mySecondBlock(@"World");
        
        
        
        
        
    }
    return 0;
}

