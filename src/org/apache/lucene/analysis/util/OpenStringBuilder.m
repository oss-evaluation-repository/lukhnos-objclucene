//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/OpenStringBuilder.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Appendable.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/stream/IntStream.h"
#include "org/apache/lucene/analysis/util/OpenStringBuilder.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/util/OpenStringBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisUtilOpenStringBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisUtilOpenStringBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithInt_(self, size);
  return self;
}

- (instancetype)initWithCharArray:(IOSCharArray *)arr
                          withInt:(jint)len {
  OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithCharArray_withInt_(self, arr, len);
  return self;
}

- (void)setLengthWithInt:(jint)len {
  self->len_ = len;
}

- (void)setWithCharArray:(IOSCharArray *)arr
                 withInt:(jint)end {
  JreStrongAssign(&self->buf_, arr);
  self->len_ = end;
}

- (IOSCharArray *)getArray {
  return buf_;
}

- (jint)size {
  return len_;
}

- (jint)java_length {
  return len_;
}

- (jint)capacity {
  return ((IOSCharArray *) nil_chk(buf_))->size_;
}

- (id<JavaLangAppendable>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  return [self appendWithJavaLangCharSequence:csq withInt:0 withInt:[((id<JavaLangCharSequence>) nil_chk(csq)) java_length]];
}

- (id<JavaLangAppendable>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                 withInt:(jint)start
                                                 withInt:(jint)end {
  [self reserveWithInt:end - start];
  for (jint i = start; i < end; i++) {
    [self unsafeWriteWithChar:[((id<JavaLangCharSequence>) nil_chk(csq)) charAtWithInt:i]];
  }
  return self;
}

- (id<JavaLangAppendable>)appendWithChar:(jchar)c {
  [self writeWithChar:c];
  return self;
}

- (jchar)charAtWithInt:(jint)index {
  return IOSCharArray_Get(nil_chk(buf_), index);
}

- (void)setCharAtWithInt:(jint)index
                withChar:(jchar)ch {
  *IOSCharArray_GetRef(nil_chk(buf_), index) = ch;
}

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)unsafeWriteWithChar:(jchar)b {
  *IOSCharArray_GetRef(nil_chk(buf_), len_++) = b;
}

- (void)unsafeWriteWithInt:(jint)b {
  [self unsafeWriteWithChar:(jchar) b];
}

- (void)unsafeWriteWithCharArray:(IOSCharArray *)b
                         withInt:(jint)off
                         withInt:(jint)len {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, off, buf_, self->len_, len);
  self->len_ += len;
}

- (void)resizeWithInt:(jint)len {
  IOSCharArray *newbuf = [IOSCharArray arrayWithLength:JavaLangMath_maxWithInt_withInt_(JreLShift32(((IOSCharArray *) nil_chk(buf_))->size_, 1), len)];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf_, 0, newbuf, 0, [self size]);
  JreStrongAssign(&buf_, newbuf);
}

- (void)reserveWithInt:(jint)num {
  if (len_ + num > ((IOSCharArray *) nil_chk(buf_))->size_) [self resizeWithInt:len_ + num];
}

- (void)writeWithChar:(jchar)b {
  if (len_ >= ((IOSCharArray *) nil_chk(buf_))->size_) {
    [self resizeWithInt:len_ + 1];
  }
  [self unsafeWriteWithChar:b];
}

- (void)writeWithInt:(jint)b {
  [self writeWithChar:(jchar) b];
}

- (void)writeWithCharArray:(IOSCharArray *)b {
  [self writeWithCharArray:b withInt:0 withInt:((IOSCharArray *) nil_chk(b))->size_];
}

- (void)writeWithCharArray:(IOSCharArray *)b
                   withInt:(jint)off
                   withInt:(jint)len {
  [self reserveWithInt:len];
  [self unsafeWriteWithCharArray:b withInt:off withInt:len];
}

- (void)writeWithOrgApacheLuceneAnalysisUtilOpenStringBuilder:(OrgApacheLuceneAnalysisUtilOpenStringBuilder *)arr {
  [self writeWithCharArray:((OrgApacheLuceneAnalysisUtilOpenStringBuilder *) nil_chk(arr))->buf_ withInt:0 withInt:len_];
}

- (void)writeWithNSString:(NSString *)s {
  [self reserveWithInt:[((NSString *) nil_chk(s)) java_length]];
  [s java_getChars:0 sourceEnd:[s java_length] destination:buf_ destinationBegin:len_];
  len_ += [s java_length];
}

- (void)flush {
}

- (void)reset {
  len_ = 0;
}

- (IOSCharArray *)toCharArray {
  IOSCharArray *newbuf = [IOSCharArray arrayWithLength:[self size]];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf_, 0, newbuf, 0, [self size]);
  return newbuf;
}

- (NSString *)description {
  return [NSString java_stringWithCharacters:buf_ offset:0 length:[self size]];
}

- (id<JavaUtilStreamIntStream>)chars {
  return JavaLangCharSequence_chars(self);
}

- (id<JavaUtilStreamIntStream>)codePoints {
  return JavaLangCharSequence_codePoints(self);
}

- (void)dealloc {
  RELEASE_(buf_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "[C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangAppendable;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LJavaLangAppendable;", 0x1, 5, 7, -1, -1, -1, -1 },
    { NULL, "LJavaLangAppendable;", 0x1, 5, 8, -1, -1, -1, -1 },
    { NULL, "C", 0x1, 9, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 16, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 18, 19, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 18, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 21, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "[C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 22, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(initWithCharArray:withInt:);
  methods[3].selector = @selector(setLengthWithInt:);
  methods[4].selector = @selector(setWithCharArray:withInt:);
  methods[5].selector = @selector(getArray);
  methods[6].selector = @selector(size);
  methods[7].selector = @selector(java_length);
  methods[8].selector = @selector(capacity);
  methods[9].selector = @selector(appendWithJavaLangCharSequence:);
  methods[10].selector = @selector(appendWithJavaLangCharSequence:withInt:withInt:);
  methods[11].selector = @selector(appendWithChar:);
  methods[12].selector = @selector(charAtWithInt:);
  methods[13].selector = @selector(setCharAtWithInt:withChar:);
  methods[14].selector = @selector(subSequenceFrom:to:);
  methods[15].selector = @selector(unsafeWriteWithChar:);
  methods[16].selector = @selector(unsafeWriteWithInt:);
  methods[17].selector = @selector(unsafeWriteWithCharArray:withInt:withInt:);
  methods[18].selector = @selector(resizeWithInt:);
  methods[19].selector = @selector(reserveWithInt:);
  methods[20].selector = @selector(writeWithChar:);
  methods[21].selector = @selector(writeWithInt:);
  methods[22].selector = @selector(writeWithCharArray:);
  methods[23].selector = @selector(writeWithCharArray:withInt:withInt:);
  methods[24].selector = @selector(writeWithOrgApacheLuceneAnalysisUtilOpenStringBuilder:);
  methods[25].selector = @selector(writeWithNSString:);
  methods[26].selector = @selector(flush);
  methods[27].selector = @selector(reset);
  methods[28].selector = @selector(toCharArray);
  methods[29].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buf_", "[C", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "len_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "[CI", "setLength", "set", "length", "append", "LJavaLangCharSequence;", "LJavaLangCharSequence;II", "C", "charAt", "setCharAt", "IC", "subSequence", "II", "unsafeWrite", "[CII", "resize", "reserve", "write", "[C", "LOrgApacheLuceneAnalysisUtilOpenStringBuilder;", "LNSString;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilOpenStringBuilder = { "OpenStringBuilder", "org.apache.lucene.analysis.util", ptrTable, methods, fields, 7, 0x1, 30, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisUtilOpenStringBuilder;
}

@end

void OrgApacheLuceneAnalysisUtilOpenStringBuilder_init(OrgApacheLuceneAnalysisUtilOpenStringBuilder *self) {
  OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithInt_(self, 32);
}

OrgApacheLuceneAnalysisUtilOpenStringBuilder *new_OrgApacheLuceneAnalysisUtilOpenStringBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilOpenStringBuilder, init)
}

OrgApacheLuceneAnalysisUtilOpenStringBuilder *create_OrgApacheLuceneAnalysisUtilOpenStringBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilOpenStringBuilder, init)
}

void OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithInt_(OrgApacheLuceneAnalysisUtilOpenStringBuilder *self, jint size) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buf_, [IOSCharArray newArrayWithLength:size]);
}

OrgApacheLuceneAnalysisUtilOpenStringBuilder *new_OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilOpenStringBuilder, initWithInt_, size)
}

OrgApacheLuceneAnalysisUtilOpenStringBuilder *create_OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilOpenStringBuilder, initWithInt_, size)
}

void OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithCharArray_withInt_(OrgApacheLuceneAnalysisUtilOpenStringBuilder *self, IOSCharArray *arr, jint len) {
  NSObject_init(self);
  [self setWithCharArray:arr withInt:len];
}

OrgApacheLuceneAnalysisUtilOpenStringBuilder *new_OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithCharArray_withInt_(IOSCharArray *arr, jint len) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilOpenStringBuilder, initWithCharArray_withInt_, arr, len)
}

OrgApacheLuceneAnalysisUtilOpenStringBuilder *create_OrgApacheLuceneAnalysisUtilOpenStringBuilder_initWithCharArray_withInt_(IOSCharArray *arr, jint len) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilOpenStringBuilder, initWithCharArray_withInt_, arr, len)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilOpenStringBuilder)
