//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/FieldInfosFormat.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/FieldInfosFormat.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/FieldInfosFormat must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneCodecsFieldInfosFormat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsFieldInfosFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexFieldInfos *)readWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                      withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                             withNSString:(NSString *)segmentSuffix
                                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)iocontext {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                  withNSString:(NSString *)segmentSuffix
            withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexFieldInfos;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withNSString:withOrgApacheLuceneStoreIOContext:);
  methods[2].selector = @selector(writeWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withNSString:withOrgApacheLuceneIndexFieldInfos:withOrgApacheLuceneStoreIOContext:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "read", "LOrgApacheLuceneStoreDirectory;LOrgApacheLuceneIndexSegmentInfo;LNSString;LOrgApacheLuceneStoreIOContext;", "LJavaIoIOException;", "write", "LOrgApacheLuceneStoreDirectory;LOrgApacheLuceneIndexSegmentInfo;LNSString;LOrgApacheLuceneIndexFieldInfos;LOrgApacheLuceneStoreIOContext;" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsFieldInfosFormat = { "FieldInfosFormat", "org.apache.lucene.codecs", ptrTable, methods, NULL, 7, 0x401, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsFieldInfosFormat;
}

@end

void OrgApacheLuceneCodecsFieldInfosFormat_init(OrgApacheLuceneCodecsFieldInfosFormat *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsFieldInfosFormat)
