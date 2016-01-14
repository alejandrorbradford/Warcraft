//
//  WarCraftIII_Tests_02.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "Barracks.h"


@interface Barracks()
- (int)gold;
- (int)food;
@end

@interface WarCraftIII_Tests_02 : XCTestCase

@end

@implementation WarCraftIII_Tests_02{
    Barracks *_barracks;
}

- (void)setUp {
    [super setUp];
    _barracks = [Barracks new];
}

- (void)tearDown {
    [super tearDown];
    _barracks = nil;
}

// Resources allow you to create units. In our case (for simplicity), these resources will be stored directly within the barracks

-(void)testStartsOffWith1000GoldResources
{
    int result = _barracks.gold;
    int expected = 1000;
    XCTAssertEqual((int)expected, (int)result, @"barracks should start off with 1000 gold resources");
}

-(void)testStartsOffWith80FoodResources
{
    int result = _barracks.food;
    int expected = 80;
    XCTAssertEqual((int)expected, (int)result, @"barracks should start off with 80 food resources");
}

@end
