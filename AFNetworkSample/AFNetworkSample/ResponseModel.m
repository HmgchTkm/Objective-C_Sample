//
//  ResponseModel.m
//  AFNetworkSample
//
//  Created by TakeomiHamaguchi on 2016/08/12.
//  Copyright © 2016年 TakeomiHamaguchi. All rights reserved.
//

#import "ResponseModel.h"

@implementation ResponseModel

+(NSDictionary *)JSONKeyPathsByPropertyKey{
  return @{
           @"question":@"question",
           @"published_at":@"published_at"
  };
}

@end

