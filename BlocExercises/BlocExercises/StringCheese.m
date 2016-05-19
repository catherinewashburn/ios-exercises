//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favoriteCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        NSRange cheeseRange = [[cheeseName lowercaseString] rangeOfString:@" cheese"];
        NSString *cheeseNameOnly = [cheeseName substringToIndex:cheeseRange.location];
        return cheeseNameOnly;
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        NSString *cheeseNameOnly = cheeseName;
        return cheeseNameOnly;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *numberOfCheesesString = @"1 cheese";
        return numberOfCheesesString;
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *numberOfCheesesString = [NSString stringWithFormat:@"%ld cheeses",cheeseCount];
        return numberOfCheesesString;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
