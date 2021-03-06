//
//  NorthWall.m
//  Asn2
//
//  Created by Renz on 3/11/19.
//  Copyright © 2019 Renz. All rights reserved.
//
#import "Cube.h"

@implementation Cube

const Vertex Vertices[] = {
    // Front
    {{1, -1, 1}, {1, 0}, {0, 0, 1}}, // 0
    {{1, 1, 1}, {1, 1}, {0, 0, 1}}, // 1
    {{-1, 1, 1}, {0, 1}, {0, 0, 1}}, // 2
    
    {{-1, 1, 1}, {0, 1}, {0, 0, 1}}, // 2
    {{-1, -1, 1}, {0, 0}, {0, 0, 1}}, // 3
    {{1, -1, 1}, {1, 0}, {0, 0, 1}}, // 0
    
    // Back
    {{-1, -1, -1}, {1, 0}, {0, 0, -1}}, // 4
    {{-1, 1, -1}, {1, 1}, {0, 0, -1}}, // 5
    {{1, 1, -1}, {0, 1}, {0, 0, -1}}, // 6
    
    {{1, 1, -1}, {0, 1}, {0, 0, -1}}, // 6
    {{1, -1, -1}, {0, 0}, {0, 0, -1}}, // 7
    {{-1, -1, -1}, {1, 0}, {0, 0, -1}}, // 4
    
    // Left
    {{-1, -1, 1}, {1, 0}, {-1, 0, 0}}, // 8
    {{-1, 1, 1}, {1, 1}, {-1, 0, 0}}, // 9
    {{-1, 1, -1}, {0, 1}, {-1, 0, 0}}, // 10
    
    {{-1, 1, -1}, {0, 1}, {-1, 0, 0}}, // 10
    {{-1, -1, -1}, {0, 0}, {-1, 0, 0}}, // 11
    {{-1, -1, 1}, {1, 0}, {-1, 0, 0}}, // 8
    
    // Right
    {{1, -1, -1}, {1, 0}, {1, 0, 0}}, // 12
    {{1, 1, -1}, {1, 1}, {1, 0, 0}}, // 13
    {{1, 1, 1}, {0, 1}, {1, 0, 0}}, // 14
    
    {{1, 1, 1}, {0, 1}, {1, 0, 0}}, // 14
    {{1, -1, 1}, {0, 0}, {1, 0, 0}}, // 15
    {{1, -1, -1}, {1, 0}, {1, 0, 0}}, // 12
    
    // Top
    {{1, 1, 1}, {1, 0}, {0, 1, 0}}, // 16
    {{1, 1, -1}, {1, 1}, {0, 1, 0}}, // 17
    {{-1, 1, -1},  {0, 1}, {0, 1, 0}}, // 18
    
    {{-1, 1, -1},  {0, 1}, {0, 1, 0}}, // 18
    {{-1, 1, 1}, {0, 0}, {0, 1, 0}}, // 19
    {{1, 1, 1}, {1, 0}, {0, 1, 0}}, // 16
    
    // Bottom
    {{-1, -1, 1}, {1, 0}, {0, -1, 0}}, // 20
    {{-1, -1, -1}, {1, 1}, {0, -1, 0}}, // 21
    {{1, -1, -1}, {0, 1}, {0, -1, 0}}, // 22
    
    {{1, -1, -1}, {0, 1}, {0, -1, 0}}, // 22
    {{1, -1, 1}, {0, 0}, {0, -1, 0}}, // 23
    {{-1, -1, 1}, {1, 0}, {0, -1, 0}}, // 20
};

const GLubyte Indices[] = {
    // Front
    0, 1, 2,
    2, 3, 0,
    // Back
    4, 5, 6,
    6, 7, 4,
    // Left
    8, 9, 10,
    10, 11, 8,
    // Right
    12, 13, 14,
    14, 15, 12,
    // Top
    16, 17, 18,
    18, 19, 16,
    // Bottom
    20, 21, 22,
    22, 23, 20
};

- (instancetype)initWithShader:(GLKBaseEffect *)shader {
    
    if ((self = [super initWithName:"Cube" shader:shader
                           vertices:(Vertex *)Vertices
                        vertexCount:sizeof(Vertices) / sizeof(Vertices[0])])) {
        
        self.diffuseColor = GLKVector4Make(1, 1, 1, 1);
        self.specularColor = GLKVector4Make(1, 1, 1, 1);
        self.shininess = 10;
        
        [self loadTexture:@"dungeon_01.png"];
        
    }
    return self;
}

- (void)updateWithDelta:(GLfloat)aDelta {
    self.rotationZ += M_PI * aDelta;
    //self.rotationY += M_PI * aDelta;
    //self.rotationX += M_PI * aDelta;
}

@end

/*
const Vertex Vertices2[] = {
    // Back
    {{-1, -1, -1}, {1, 0}, {0, 0, -1}}, // 0
    {{-1, 1, -1}, {1, 1}, {0, 0, -1}}, // 1
    {{1, 1, -1}, {0, 1}, {0, 0, -1}}, // 2
    
    {{1, 1, -1}, {0, 1}, {0, 0, -1}}, // 2
    {{1, -1, -1}, {0, 0}, {0, 0, -1}}, // 3
    {{-1, -1, -1}, {1, 0}, {0, 0, -1}}, // 0
};

const GLubyte Indices2[] = {
    // Right
    0, 1, 2,
    2, 3, 0
};

- (instancetype)initWithShader:(GLKBaseEffect *)shader {
    
    if ((self = [super initWithName:"NorthWall" shader:shader
                           vertices:(Vertex *)Vertices2
                        vertexCount:sizeof(Vertices2) / sizeof(Vertices2[0])])) {
        
        self.diffuseColor = GLKVector4Make(1, 1, 1, 1);
        self.specularColor = GLKVector4Make(1, 1, 1, 1);
        self.shininess = 10;
        self.scale = 5;
        
        [self loadTexture:@"dungeon_01.png"];
    }
    return self;
}

@end
*/
