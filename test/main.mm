//
//  main.m
//  test
//
//  Created by ByteDance on 2022/5/24.
//

#import <Foundation/Foundation.h>

@interface myThread : NSObject

@property (nonatomic, strong) NSThread * thread;

@end

@implementation myThread

-(void) start {
    _thread = [[NSThread alloc] initWithTarget:self selector:@selector(func) object:nil];
    [_thread start];
    NSLog(@"Hello, World!");
}

-(void) func {
    int num;
    while (true) {
        scanf("%d", &num);
        printf("input number =nnnnnn %d\n", num);
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        myThread * t = [[myThread alloc] init];
        [t start];
        while (true) {
            sleep(5);
            printf("5 second elapsed!\n");
        }
    }
    return 0;
}
