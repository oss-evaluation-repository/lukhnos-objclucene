//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/PostingsWriterBase.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/BlockTermState.h"
#include "org/apache/lucene/codecs/PostingsWriterBase.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/FixedBitSet.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/PostingsWriterBase must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneCodecsPostingsWriterBase

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsPostingsWriterBase_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)termsOut
        withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsBlockTermState *)writeTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                                withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum
                                               withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)docsSeen {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)encodeTermWithLongArray:(IOSLongArray *)longs
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)state
                    withBoolean:(jboolean)absolute {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jint)setFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsBlockTermState;", 0x401, 3, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 6, 2, -1, -1, -1 },
    { NULL, "I", 0x401, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(init__WithOrgApacheLuceneStoreIndexOutput:withOrgApacheLuceneIndexSegmentWriteState:);
  methods[2].selector = @selector(writeTermWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermsEnum:withOrgApacheLuceneUtilFixedBitSet:);
  methods[3].selector = @selector(encodeTermWithLongArray:withOrgApacheLuceneStoreDataOutput:withOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneCodecsBlockTermState:withBoolean:);
  methods[4].selector = @selector(setFieldWithOrgApacheLuceneIndexFieldInfo:);
  methods[5].selector = @selector(close);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "init", "LOrgApacheLuceneStoreIndexOutput;LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "writeTerm", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneIndexTermsEnum;LOrgApacheLuceneUtilFixedBitSet;", "encodeTerm", "[JLOrgApacheLuceneStoreDataOutput;LOrgApacheLuceneIndexFieldInfo;LOrgApacheLuceneCodecsBlockTermState;Z", "setField", "LOrgApacheLuceneIndexFieldInfo;" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsPostingsWriterBase = { "PostingsWriterBase", "org.apache.lucene.codecs", ptrTable, methods, NULL, 7, 0x401, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsPostingsWriterBase;
}

@end

void OrgApacheLuceneCodecsPostingsWriterBase_init(OrgApacheLuceneCodecsPostingsWriterBase *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsPostingsWriterBase)
