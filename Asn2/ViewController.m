//
//  ViewController.m
//  Asn2
//
//  Created by Renz on 3/11/19.
//  Copyright © 2019 Renz. All rights reserved.
//

#import "ViewController.h"
#import "NorthWall.h"
#import "TestScene.h"
//#import "RWDirector.h"
//#import "RWGameScene.h"

@implementation ViewController {
    GLKBaseEffect* _shader;
    TestScene *_scene;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    GLKView *view = (GLKView *)self.view;
    view.drawableDepthFormat = GLKViewDrawableDepthFormat16;
    view.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    [EAGLContext setCurrentContext:view.context];
    
    glViewport(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [self setupScene];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    // Make background color cycle in a cool way
    
    /*
     float amount = 0.25 * sin(CACurrentMediaTime()) + 0.75;
    float amount2 = 0.25 * sin(CACurrentMediaTime()+M_PI_4) + 0.75;
    float amount3 = 0.25 * sin(CACurrentMediaTime()+M_PI_2) + 0.75;
    glClearColor(amount, amount2, amount3, 1.0);
    
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
     */
    
    glClearColor(0, 104.0/255.0, 55.0/255.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    
    GLKMatrix4 viewMatrix = GLKMatrix4Identity;
    //[[Director sharedInstance].scene renderWithParentModelViewMatrix:viewMatrix];
    
    //[[RWDirector sharedInstance].scene renderWithParentModelViewMatrix:GLKMatrix4Identity];
}

- (void)setupScene {
    _shader = [[GLKBaseEffect alloc] init];
    
    _shader.transform.projectionMatrix = GLKMatrix4MakePerspective(GLKMathRadiansToDegrees(85.0), self.view.frame.size.width/self.view.frame.size.height, 1, 150);
    _scene = [[TestScene alloc] initWithShader:_shader];
    // Set up scene and background music
    //[RWDirector sharedInstance].scene = [[RWGameScene alloc] initWithShader:_shader];
    //[RWDirector sharedInstance].view = self.view;
    //[[RWDirector sharedInstance] playBackgroundMusic:@"bulletstorm_bg_v1.mp3"];
    
}

- (void)update {
    //[[RWDirector sharedInstance].scene updateWithDelta:self.timeSinceLastUpdate];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //[[RWDirector sharedInstance].scene touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    //[[RWDirector sharedInstance].scene touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    //[[RWDirector sharedInstance].scene touchesEnded:touches withEvent:event];
}

@end
