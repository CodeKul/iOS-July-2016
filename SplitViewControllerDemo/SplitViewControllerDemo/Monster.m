//
//  Monster.m
//  SplitViewControllerDemo
//
//  Created by Varun on 02/10/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "Monster.h"

@implementation Monster

+(Monster *)newMonsterWithName:(NSString *)name description:(NSString *)mydescription
                      iconName:(NSString *)iconName weapon:(Weapon)weapon {
    
    Monster *monster = [[Monster alloc] init];
    monster.name = name;
    monster.mydescription = mydescription;
    monster.iconName = iconName;
    monster.weapon = weapon;
    
    return monster;
}

-(UIImage *)weaponImage {
    
    switch (self.weapon) {
        case Blowgun:
            return [UIImage imageNamed:@"blowgun.png"];
            break;
        case Fire:
            return [UIImage imageNamed:@"fire.png"];
            break;
        case NinjaStar:
            return [UIImage imageNamed:@"ninjastar.png"];
            break;
        case Smoke:
            return [UIImage imageNamed:@"smoke.png"];
            break;
        case Sword:
            return [UIImage imageNamed:@"sword.png"];
        default:
            //Anything not named in the enum.
            return nil;
            break;
    }
}

@end