//
//  TestScene.m
//  Asn2
//
//  Created by Renz on 3/11/19.
//  Copyright © 2019 Renz. All rights reserved.
//

#import "TestScene.h"

//#import "RWMushroom.h"
#import "NorthWall.h"

@implementation TestScene {
    //RWMushroom* _mushroom;
    CGSize _gameArea;
    float _sceneOffset;
    NorthWall *_northWall;
}
/*
- (instancetype)initWithShader:(GLKBaseEffect *)shader {
    if ((self = [super initWithName:"TestScene" shader:shader vertices:nil vertexCount:0])) {
        
        //Create the initial camera position
        _gameArea = CGSizeMake(27, 48);
        _sceneOffset = _gameArea.height/2/tanf(GLKMathDegreesToRadians(85/2));
        self.position = GLKVector3Make(-_gameArea.width/2, -_gameArea.height/2, -_sceneOffset - 10);
        
        //Create floor and add to scene
        _northWall = [[NorthWall alloc] initWithShader:shader];
        [self.children addObject:_northWall];
        
        //_mushroom = [[RWMushroom alloc] initWithShader:shader];
        //[self.children addObject:_mushroom];
        
        self.position = GLKVector3Make(0, -1, -10);
        
    }
    return self;
}*/

- (instancetype)initWithShader:(GLKBaseEffect *)shader {
    if ((self = [super initWithName:"TestScene" shader:shader vertices:nil vertexCount:0])) {
        
        _gameArea = CGSizeMake(27, 48);
        _sceneOffset = _gameArea.height/2/tanf(GLKMathDegreesToRadians(85/2));
        self.position = GLKVector3Make(-_gameArea.width/2, -_gameArea.height/2, -_sceneOffset - 10);
        
        //Create NorthWall
        _northWall = [[NorthWall alloc] initWithShader:shader];
        _northWall.position = GLKVector3Make(_gameArea.width/2, _gameArea.height/2, 0);
        //_northWall.matColour = GLKVector4Make(1, 1, 1, 1);
        [self.children addObject:_northWall];

        
        //self.position = GLKVector3Make(0, -1, -10);
        
    }
    return self;
}

@end
