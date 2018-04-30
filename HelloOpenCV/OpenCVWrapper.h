
#import <UIKit/UIKit.h>

@interface OpenCVWrapper: NSObject

+ (NSString *)openCVVersionString;

+ (UIImage *)makeGrayFromImage:(UIImage *)image;

@end
