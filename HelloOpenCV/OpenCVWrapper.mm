
#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#import "OpenCVWrapper.h"

@implementation OpenCVWrapper

+ (NSString *)openCVVersionString {
    return [NSString stringWithFormat:@"OpenCV Version %s",  CV_VERSION];
}

+ (UIImage *)makeGrayFromImage:(UIImage *)image {
    cv::Mat imageMat;
    UIImageToMat(image, imageMat);
    
    if(imageMat.channels() == 1)
        return image;
    
    cv::Mat grayMat;
    cv::cvtColor(imageMat, grayMat, CV_BGR2GRAY);
    
    return MatToUIImage(grayMat);
}

@end
