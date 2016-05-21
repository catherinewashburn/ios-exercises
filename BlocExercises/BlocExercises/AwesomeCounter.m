//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *stringOrder = [@"" mutableCopy];
    BOOL areTheyEqual = number == otherNumber;
    BOOL firstSmall = number < otherNumber;
    
    if (areTheyEqual){
        stringOrder = [NSMutableString stringWithFormat:@"%ld",number];
    } else if (firstSmall){
        for (NSInteger n = number; n <= otherNumber; n++){
            NSString *nextNumber = [NSString stringWithFormat:@"%ld",n];
            [stringOrder appendString:nextNumber];
        }
    } else {
        for (NSInteger n = otherNumber; n <= number; n++){
            NSString *nextNumber = [NSString stringWithFormat:@"%ld",n];
            [stringOrder appendString:nextNumber];
        }
    }
    return stringOrder;
}

@end
