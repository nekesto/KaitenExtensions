//
//  KXNSURLValueTransformer.m
//  KaitenExtensions
//
//  Created by David Avendasora on 6/9/12.
//  Copyright (c) 2012 Kaiten, Inc. All rights reserved.
//

#import "KXNSURLValueTransformer.h"

@implementation KXNSURLValueTransformer

+ (Class)transformedValueClass {
    return [NSData class];
}

+ (BOOL)allowsReverseTransformation {
    return YES;
}

- (id)transformedValue:(id)bookmark_ {
    if (bookmark_ == nil) {
        return bookmark_;
    } else {
        NSURL *url = [self urlFromBookmark:bookmark_];
        return url;
    }
}

- (id)reverseTransformedValue:(id)url_ {
    if (url_ == nil) {
        return url_;
    } else {
        NSData *bookmark = [self bookmarkFromURL:url_];
        return bookmark;
    }
}

- (NSData *)bookmarkFromURL:(NSURL *)url_ {
    NSData *bookmark = [url_ bookmarkDataWithOptions:NSURLBookmarkCreationPreferFileIDResolution
                      includingResourceValuesForKeys:NULL
                                       relativeToURL:NULL
                                               error:NULL];
    return bookmark;
}

- (NSURL *)urlFromBookmark:(NSData *)bookmark_ {
    NSURL *url = [NSURL URLByResolvingBookmarkData:bookmark_
                                           options:NSURLBookmarkResolutionWithoutUI
                                     relativeToURL:nil
                               bookmarkDataIsStale:NO
                                             error:nil];
    return url;
}

@end