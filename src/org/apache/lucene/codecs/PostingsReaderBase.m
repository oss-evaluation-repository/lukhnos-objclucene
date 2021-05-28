//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/PostingsReaderBase.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/BlockTermState.h"
#include "org/apache/lucene/codecs/PostingsReaderBase.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/IndexInput.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/PostingsReaderBase must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneCodecsPostingsReaderBase

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsPostingsReaderBase_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)termsIn
        withOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsBlockTermState *)newTermState {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)decodeTermWithLongArray:(IOSLongArray *)longs
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)state
                    withBoolean:(jboolean)absolute {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                        withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)state
                                           withOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                        withInt:(jint)flags {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)checkIntegrity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsBlockTermState;", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexPostingsEnum;", 0x401, 5, 6, 2, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(init__WithOrgApacheLuceneStoreIndexInput:withOrgApacheLuceneIndexSegmentReadState:);
  methods[2].selector = @selector(newTermState);
  methods[3].selector = @selector(decodeTermWithLongArray:withOrgApacheLuceneStoreDataInput:withOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneCodecsBlockTermState:withBoolean:);
  methods[4].selector = @selector(postingsWithOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneCodecsBlockTermState:withOrgApacheLuceneIndexPostingsEnum:withInt:);
  methods[5].selector = @selector(checkIntegrity);
  methods[6].selector = @selector(close);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "init", "LOrgApacheLuceneStoreIndexInput;LOrgApacheLuceneIndexSegmentReadState;", "LJavaIoIOException;", "decodeTerm", "[JLOrgApacheLuceneStoreDataInput;LOrgApacheLuceneIndexFieldInfo;LOrgApacheLuceneCodecsBlockTermState;Z", "postings", "LOrgApacheLuceneIndexFieldInfo;LOrgApacheLuceneCodecsBlockTermState;LOrgApacheLuceneIndexPostingsEnum;I" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsPostingsReaderBase = { "PostingsReaderBase", "org.apache.lucene.codecs", ptrTable, methods, NULL, 7, 0x401, 7, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsPostingsReaderBase;
}

@end

void OrgApacheLuceneCodecsPostingsReaderBase_init(OrgApacheLuceneCodecsPostingsReaderBase *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsPostingsReaderBase)
