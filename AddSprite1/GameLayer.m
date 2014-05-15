//
//  GameLayer.m
//  AddSprite1
//
//  Created by ivis on 13. 6. 29..
//  Copyright 2013년 __MyCompanyName__. All rights reserved.
//

#import "GameLayer.h"


@implementation GameLayer


+(CCScene *) scene
{
    //Scene 메서드 안에서 CCScene 객체(scene)를 만든다.
	CCScene *scene = [CCScene node];
    
    // GameLayer의 객체(layer)를 만든다.
	GameLayer *layer = [GameLayer node];
    
    //앞에서 만들어진 GameLayer의 객체(layer)를 CCscene의 자식(child)으로 넣는다.
	[scene addChild: layer];
    
    //scene을 return한다.
	return scene;
}

-(id) init
{
	if( (self=[super init])) {
        
        // sprite 객체인 back을 생성한다.(배경 이미지 파일과 위치를 지정한다.)
        CCSprite *back = [CCSprite spriteWithFile:@"back.png"];
        //   [back setAnchorPoint:ccp(0.5f, 0.5f)];
        [back setPosition:ccp(240, 160)];
        // z값을 0으로 지정하여 화면의 가장 밑부분에 객체가 위치하도록 한다.
        [self addChild:back z:0];
        
        // sprite 객체인 bird1을 생성한다.(객체의 이미지 파일과 위치를 지정해준다.)
        CCSprite *bird1 =
        [CCSprite spriteWithFile:@"blue_fly0001.png"];
        [bird1 setPosition:ccp(240, 160)];
        // z값을 1으로 지정하여 배경을 나타내는 객체 back보다 위쪽에 위치하도록 한다.
        [self addChild:bird1 z:1];
        
        // sprite 객체인 bird2을 생성한다.(객체의 이미지 파일과 위치를 지정해준다.)
        CCSprite *bird2 =
        [CCSprite spriteWithFile:@"blue_fly0001.png"];
        [bird2 setPosition:ccp(140, 160)];
        // z값을 1으로 지정하여 배경을 나타내는 객체 back보다 위쪽에 위치하도록 한다.
        [self addChild:bird2 z:1];
        
        // sprite 객체인 bird3을 생성한다.(객체의 이미지 파일과 위치를 지정해준다.)
        CCSprite *bird3 =
        [CCSprite spriteWithFile:@"blue_fly0001.png"];
        [bird3 setPosition:ccp(340, 160)];
        // z값을 1으로 지정하여 배경을 나타내는 객체 back보다 위쪽에 위치하도록 한다.
        [self addChild:bird3 z:1];

    }
	return self;
}

- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}


@end



