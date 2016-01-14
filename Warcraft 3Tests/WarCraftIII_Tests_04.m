//
//  WarCraftIII_Tests_04.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "Barracks.h"
#import "Footman.h"

@interface Barracks()
- (int)gold;
- (int)food;
- (void)setGold:(int)gold;
- (void)setFood:(int)food;
- (BOOL)canTrainFootman;
- (Footman*)trainFootman;
@end

@interface WarCraftIII_Tests_04 : XCTestCase

@end

@implementation WarCraftIII_Tests_04
{
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

// A Barracks should only be able to train footmen if it has enough resources
// Introduce a new method that checks to see if there are enough resources to train one
// Of course, it should then also be leveraged by the trainFootman method

-(void)testcanTrainFootmanIfThereIsEnoughResources
{
    BOOL result = [_barracks canTrainFootman];
    XCTAssertTrue(result, @"barracks should initially be able to train footman");
}

-(void)testcanTrainFootmanFalseIfThereIsntEnoughFood
{
    _barracks.food = 1;
    BOOL result = [_barracks canTrainFootman];
    XCTAssertFalse(result, @"barracks shouldn't be able to train footman if there is less than 2 food");
}

-(void)testcanTrainFootmanFalseIfThereIsntEnoughGold
{
    _barracks.gold = 134;
    BOOL result = [_barracks canTrainFootman];
    XCTAssertFalse(result, @"barracks shouldn't be able to train footman if there is less than 135 gold");
}

-(void)testWillNotTrainFootmanWithoutEnoughResources
{
    _barracks.food = 1;
    Footman *result = [_barracks trainFootman];
    XCTAssertNil(result, @"barracks shouldn't be able to train footman if there is not enough resources");
}

-(void)testWillTrainFootmanWithEnoughResources
{
	_barracks.food = 2;
	_barracks.gold = 135;
    id result = [[_barracks trainFootman] class];
    id expected = [Footman class];
    XCTAssertEqualObjects(expected, result, @"barracks should train a footman with enough resources");
}

@end
