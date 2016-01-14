//
//  WarCraftIII_Tests_03.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "Footman.h"
#import "Barracks.h"


@interface Barracks()
- (Footman *)trainFootman;
- (int)food;
- (int)gold;
@end

@interface WarCraftIII_Tests_03 : XCTestCase

@end

@implementation WarCraftIII_Tests_03 {
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

// Now that our Barracks and Footman classes are initializable, lets allow the player to train a footman from their barracks
// This of course costs the player some resources

-(void)testTrainFootmanCosts135Gold
{
    [_barracks trainFootman];
    int result = _barracks.gold;
    int expected = 865; // Starts with 1000
    XCTAssertEqual((int)expected, (int)result, @"training footman should cost 135 gold");
}

-(void)testTrainFootmanCosts2Food
{
    [_barracks trainFootman];
    int result = _barracks.food;
    int expected = 78; // Starts with 80
    XCTAssertEqual((int)expected, (int)result, @"training footman should cost 2 food");
}

-(void)testTrainFootmanProducesAFootmanUnit
{
    id result = [[_barracks trainFootman] class];
	id expected = [Footman class];
    XCTAssertEqualObjects(expected, result, @"barracks should produce a footman when training a footman");
}

@end
