//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BytesRefBuilder.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/BytesRefBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilBytesRefBuilder () {
 @public
  OrgApacheLuceneUtilBytesRef *ref_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefBuilder, ref_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneUtilBytesRefBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilBytesRefBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (IOSByteArray *)bytes {
  return ((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_;
}

- (jint)length {
  return ((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_;
}

- (void)setLengthWithInt:(jint)length {
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(self->ref_))->length_ = length;
}

- (jbyte)byteAtWithInt:(jint)offset {
  return IOSByteArray_Get(nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_), offset);
}

- (void)setByteAtWithInt:(jint)offset
                withByte:(jbyte)b {
  *IOSByteArray_GetRef(nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_), offset) = b;
}

- (void)growWithInt:(jint)capacity {
  JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_, OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(ref_->bytes_, capacity));
}

- (void)appendWithByte:(jbyte)b {
  [self growWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_ + 1];
  *IOSByteArray_GetRef(nil_chk(ref_->bytes_), ref_->length_++) = b;
}

- (void)appendWithByteArray:(IOSByteArray *)b
                    withInt:(jint)off
                    withInt:(jint)len {
  [self growWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_ + len];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, off, ref_->bytes_, ref_->length_, len);
  ref_->length_ += len;
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)ref {
  [self appendWithByteArray:((OrgApacheLuceneUtilBytesRef *) nil_chk(ref))->bytes_ withInt:ref->offset_ withInt:ref->length_];
}

- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)builder {
  [self appendWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(builder)) get]];
}

- (void)clear {
  [self setLengthWithInt:0];
}

- (void)copyBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)off
                       withInt:(jint)len {
  [self clear];
  [self appendWithByteArray:b withInt:off withInt:len];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)ref {
  [self clear];
  [self appendWithOrgApacheLuceneUtilBytesRef:ref];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)builder {
  [self clear];
  [self appendWithOrgApacheLuceneUtilBytesRefBuilder:builder];
}

- (void)copyCharsWithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  [self copyCharsWithJavaLangCharSequence:text withInt:0 withInt:[((id<JavaLangCharSequence>) nil_chk(text)) java_length]];
}

- (void)copyCharsWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                  withInt:(jint)off
                                  withInt:(jint)len {
  [self growWithInt:len * OrgApacheLuceneUtilUnicodeUtil_MAX_UTF8_BYTES_PER_CHAR];
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_ = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_(text, off, len, ref_->bytes_);
}

- (void)copyCharsWithCharArray:(IOSCharArray *)text
                       withInt:(jint)off
                       withInt:(jint)len {
  [self growWithInt:len * OrgApacheLuceneUtilUnicodeUtil_MAX_UTF8_BYTES_PER_CHAR];
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_ = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withByteArray_(text, off, len, ref_->bytes_);
}

- (OrgApacheLuceneUtilBytesRef *)get {
  JreAssert(((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->offset_ == 0, @"Modifying the offset of the returned ref is illegal");
  return ref_;
}

- (OrgApacheLuceneUtilBytesRef *)toBytesRef {
  return create_OrgApacheLuceneUtilBytesRef_initWithByteArray_(JavaUtilArrays_copyOfWithByteArray_withInt_(((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_, ref_->length_));
}

- (jboolean)isEqual:(id)obj {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (NSUInteger)hash {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)dealloc {
  RELEASE_(ref_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 15, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 18, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(bytes);
  methods[2].selector = @selector(length);
  methods[3].selector = @selector(setLengthWithInt:);
  methods[4].selector = @selector(byteAtWithInt:);
  methods[5].selector = @selector(setByteAtWithInt:withByte:);
  methods[6].selector = @selector(growWithInt:);
  methods[7].selector = @selector(appendWithByte:);
  methods[8].selector = @selector(appendWithByteArray:withInt:withInt:);
  methods[9].selector = @selector(appendWithOrgApacheLuceneUtilBytesRef:);
  methods[10].selector = @selector(appendWithOrgApacheLuceneUtilBytesRefBuilder:);
  methods[11].selector = @selector(clear);
  methods[12].selector = @selector(copyBytesWithByteArray:withInt:withInt:);
  methods[13].selector = @selector(copyBytesWithOrgApacheLuceneUtilBytesRef:);
  methods[14].selector = @selector(copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:);
  methods[15].selector = @selector(copyCharsWithJavaLangCharSequence:);
  methods[16].selector = @selector(copyCharsWithJavaLangCharSequence:withInt:withInt:);
  methods[17].selector = @selector(copyCharsWithCharArray:withInt:withInt:);
  methods[18].selector = @selector(get);
  methods[19].selector = @selector(toBytesRef);
  methods[20].selector = @selector(isEqual:);
  methods[21].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ref_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setLength", "I", "byteAt", "setByteAt", "IB", "grow", "append", "B", "[BII", "LOrgApacheLuceneUtilBytesRef;", "LOrgApacheLuceneUtilBytesRefBuilder;", "copyBytes", "copyChars", "LJavaLangCharSequence;", "LJavaLangCharSequence;II", "[CII", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBytesRefBuilder = { "BytesRefBuilder", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x1, 22, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilBytesRefBuilder;
}

@end

void OrgApacheLuceneUtilBytesRefBuilder_init(OrgApacheLuceneUtilBytesRefBuilder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->ref_, new_OrgApacheLuceneUtilBytesRef_init());
}

OrgApacheLuceneUtilBytesRefBuilder *new_OrgApacheLuceneUtilBytesRefBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRefBuilder, init)
}

OrgApacheLuceneUtilBytesRefBuilder *create_OrgApacheLuceneUtilBytesRefBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRefBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBytesRefBuilder)
