//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSInteger num = [number integerValue];
    NSInteger doubleInt = num * 2;
    NSNumber *doubleNum = [NSNumber numberWithInt:doubleInt];
    return doubleNum;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *arraySortNumbers = [[NSMutableArray alloc] init];
    if (number<otherNumber){
        for (int n = number; n <= otherNumber; n++)
        {
            [arraySortNumbers addObject:[NSNumber numberWithInt:n]];
        }
        return arraySortNumbers;
    }
    else{
        for (int n = otherNumber; n <= number; n++)
        {
            [arraySortNumbers addObject:[NSNumber numberWithInt:n]];
        }
        return arraySortNumbers;
    }
    return @[];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *mutableArray = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [mutableArray sortUsingDescriptors:@[sortDescriptor]];
    return [mutableArray[0] longValue];
}

@end
