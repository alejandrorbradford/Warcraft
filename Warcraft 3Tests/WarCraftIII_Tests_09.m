//
//  WarCraftIII_Tests_09.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 7/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Barracks.h"
#import "Peasant.h"
#import "Unit.h"

@interface Barracks()
- (int)gold;
- (int)food;
- (void)setGold:(int)gold;
- (void)setFood:(int)food;
- (Peasant*)trainPeasant;
- (BOOL)canTrainPeasant;
@end

@interface WarCraftIII_Tests_09 : XCTestCase

@end

@implementation WarCraftIII_Tests_09
{
    Barracks *_barracks;
}

- (void)setUp
{
    [super setUp];
    _barracks = [Barracks new];
}

- (void)tearDown
{
    [super tearDown];
    _barracks = nil;
}

-(void)testTrainPeasantCost90Gold
{
    [_barracks trainPeasant];
    int result = _barracks.gold;
    int expected = 910;
    XCTAssertEqual((int)expected, result);
}

-(void)testTrainPeasantCost5Food
{
    [_barracks trainPeasant];
    int result = _barracks.food;
    int expected = 75;
    XCTAssertEqual((int)expected, result);
}

-(void)testTrainPeasantProducesAPeasant
{
    Peasant *peasant = [_barracks trainPeasant];
    XCTAssertTrue([peasant isKindOfClass:[Peasant class]], @"training a peasant should produce a peasant");
}

-(void)testCanTrainPeasantBeTrueIfThereIsEnoughResources
{
    BOOL result = [_barracks canTrainPeasant];
    XCTAssertTrue(result, @"barracks can be able to train peasant if there is enough resources");
}

-(void)testCanTrainPeasantBeFalseIfThereIsntEnoughFood
{
	_barracks.food = 4;
    BOOL result = [_barracks canTrainPeasant];
    XCTAssertFalse(result, @"barracks can't train a peasant if there is less than 5 food");
}

-(void)testCanTrainPeasantBeFalseIfThereIsntEnoughGold
{
	_barracks.gold = 89;
    BOOL result = [_barracks canTrainPeasant];
    XCTAssertFalse(result, @"barracks can't train a peasant if there is less than 90 gold");
}

-(void)testTrainPeasantDoesNotTrainPeasantIfThereIsNotEnoughResources
{
	_barracks.gold = 89;
	_barracks.food = 4;
    id result = [_barracks trainPeasant];
    XCTAssertNil(result, @"barracks shouldn't train a peasant if there isn't enough resources");
}

-(void)testTrainPeasantWillTrainIfThereIsEnoughResources
{
    Peasant *peasant = [_barracks trainPeasant];
    id result = [peasant class];
    XCTAssertEqualObjects(result, [Peasant class], @"barracks should be able to train a peasant if there is enough resources");
}


@end
