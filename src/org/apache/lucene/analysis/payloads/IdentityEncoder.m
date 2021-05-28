//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/IdentityEncoder.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/CharBuffer.h"
#include "java/nio/charset/Charset.h"
#include "org/apache/lucene/analysis/payloads/AbstractEncoder.h"
#include "org/apache/lucene/analysis/payloads/IdentityEncoder.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/payloads/IdentityEncoder must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisPayloadsIdentityEncoder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisPayloadsIdentityEncoder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset {
  OrgApacheLuceneAnalysisPayloadsIdentityEncoder_initWithJavaNioCharsetCharset_(self, charset);
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)encodeWithCharArray:(IOSCharArray *)buffer
                                             withInt:(jint)offset
                                             withInt:(jint)length {
  JavaNioByteBuffer *bb = [((JavaNioCharsetCharset *) nil_chk(charset_)) encodeWithJavaNioCharBuffer:JavaNioCharBuffer_wrapWithCharArray_withInt_withInt_(buffer, offset, length)];
  if ([((JavaNioByteBuffer *) nil_chk(bb)) hasArray]) {
    return create_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_([bb array], [bb arrayOffset] + [bb position], [bb remaining]);
  }
  else {
    IOSByteArray *b = [IOSByteArray arrayWithLength:[bb remaining]];
    [bb getWithByteArray:b];
    return create_OrgApacheLuceneUtilBytesRef_initWithByteArray_(b);
  }
}

- (void)dealloc {
  RELEASE_(charset_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaNioCharsetCharset:);
  methods[2].selector = @selector(encodeWithCharArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "charset_", "LJavaNioCharsetCharset;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaNioCharsetCharset;", "encode", "[CII" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPayloadsIdentityEncoder = { "IdentityEncoder", "org.apache.lucene.analysis.payloads", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisPayloadsIdentityEncoder;
}

@end

void OrgApacheLuceneAnalysisPayloadsIdentityEncoder_init(OrgApacheLuceneAnalysisPayloadsIdentityEncoder *self) {
  OrgApacheLuceneAnalysisPayloadsAbstractEncoder_init(self);
  JreStrongAssign(&self->charset_, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8));
}

OrgApacheLuceneAnalysisPayloadsIdentityEncoder *new_OrgApacheLuceneAnalysisPayloadsIdentityEncoder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPayloadsIdentityEncoder, init)
}

OrgApacheLuceneAnalysisPayloadsIdentityEncoder *create_OrgApacheLuceneAnalysisPayloadsIdentityEncoder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPayloadsIdentityEncoder, init)
}

void OrgApacheLuceneAnalysisPayloadsIdentityEncoder_initWithJavaNioCharsetCharset_(OrgApacheLuceneAnalysisPayloadsIdentityEncoder *self, JavaNioCharsetCharset *charset) {
  OrgApacheLuceneAnalysisPayloadsAbstractEncoder_init(self);
  JreStrongAssign(&self->charset_, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8));
  JreStrongAssign(&self->charset_, charset);
}

OrgApacheLuceneAnalysisPayloadsIdentityEncoder *new_OrgApacheLuceneAnalysisPayloadsIdentityEncoder_initWithJavaNioCharsetCharset_(JavaNioCharsetCharset *charset) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPayloadsIdentityEncoder, initWithJavaNioCharsetCharset_, charset)
}

OrgApacheLuceneAnalysisPayloadsIdentityEncoder *create_OrgApacheLuceneAnalysisPayloadsIdentityEncoder_initWithJavaNioCharsetCharset_(JavaNioCharsetCharset *charset) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPayloadsIdentityEncoder, initWithJavaNioCharsetCharset_, charset)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPayloadsIdentityEncoder)
