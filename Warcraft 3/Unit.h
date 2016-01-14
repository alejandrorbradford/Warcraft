//
//  Unit.h
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Unit : NSObject


@property (assign) int healthPoints;
@property int attackPower;

- (instancetype)initWithHP:(int)hp AP:(int)ap;

- (void)damage:(int)damage;
- (void)attack:(Unit *)enemy withDamage:(int)damage;
@end


