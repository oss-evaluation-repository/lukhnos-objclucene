//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/nio/CharBuffer.h"
#include "java/util/stream/IntStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.h"
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl () {
 @public
  IOSCharArray *termBuffer_;
  jint termLength_;
}

- (void)growTermBufferWithInt:(jint)newSize;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendNull;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, termBuffer_, IOSCharArray *)

inline jint OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_get_MIN_BUFFER_SIZE(void);
inline jint OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_set_MIN_BUFFER_SIZE(jint value);
inline jint *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_getRef_MIN_BUFFER_SIZE(void);
static jint OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE = 10;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, MIN_BUFFER_SIZE, jint)

__attribute__((unused)) static IOSCharArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize);

__attribute__((unused)) static void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize);

__attribute__((unused)) static id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, id<JavaLangCharSequence> csq, jint start, jint end);

__attribute__((unused)) static id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self);

@implementation OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)copyBufferWithCharArray:(IOSCharArray *)buffer
                        withInt:(jint)offset
                        withInt:(jint)length {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(self, length);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, offset, termBuffer_, 0, length);
  termLength_ = length;
}

- (IOSCharArray *)buffer {
  return termBuffer_;
}

- (IOSCharArray *)resizeBufferWithInt:(jint)newSize {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, newSize);
}

- (void)growTermBufferWithInt:(jint)newSize {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(self, newSize);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)setLengthWithInt:(jint)length {
  if (length > ((IOSCharArray *) nil_chk(termBuffer_))->size_) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$IC", @"length ", length, @" exceeds the size of the termBuffer (", termBuffer_->size_, ')'));
  termLength_ = length;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)setEmpty {
  termLength_ = 0;
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)getBytesRef {
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(builder_)) copyCharsWithCharArray:termBuffer_ withInt:0 withInt:termLength_];
  return [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(builder_)) get];
}

- (jint)java_length {
  return termLength_;
}

- (jchar)charAtWithInt:(jint)index {
  if (index >= termLength_) @throw create_JavaLangIndexOutOfBoundsException_init();
  return IOSCharArray_Get(nil_chk(termBuffer_), index);
}

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  if (start > termLength_ || end > termLength_) @throw create_JavaLangIndexOutOfBoundsException_init();
  return [NSString java_stringWithCharacters:termBuffer_ offset:start length:end - start];
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  if (csq == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(self, csq, 0, [csq java_length]);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                                                      withInt:(jint)start
                                                                                      withInt:(jint)end {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(self, csq, start, end);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithChar:(jchar)c {
  *IOSCharArray_GetRef(nil_chk(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + 1)), termLength_++) = c;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithNSString:(NSString *)s {
  if (s == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = [s java_length];
  [s java_getChars:0 sourceEnd:len destination:OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len) destinationBegin:termLength_];
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangStringBuilder:(JavaLangStringBuilder *)s {
  if (s == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = [s java_length];
  [s getCharsWithInt:0 withInt:len withCharArray:OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len) withInt:termLength_];
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)ta {
  if (ta == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = [ta java_length];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([ta buffer], 0, OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len), termLength_, len);
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendNull {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
}

- (NSUInteger)hash {
  jint code = termLength_;
  code = code * 31 + OrgApacheLuceneUtilArrayUtil_hashCodeWithCharArray_withInt_withInt_(termBuffer_, 0, termLength_);
  return code;
}

- (void)clear {
  termLength_ = 0;
}

- (OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)java_clone {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *t = (OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) cast_chk([super java_clone], [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl class]);
  JreStrongAssignAndConsume(&((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) nil_chk(t))->termBuffer_, [IOSCharArray newArrayWithLength:self->termLength_]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termBuffer_, 0, t->termBuffer_, 0, self->termLength_);
  JreStrongAssignAndConsume(&t->builder_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  [t->builder_ copyBytesWithOrgApacheLuceneUtilBytesRef:[builder_ get]];
  return t;
}

- (jboolean)isEqual:(id)other {
  if (JreObjectEqualsEquals(other, self)) {
    return true;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl class]]) {
    OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *o = ((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) other);
    if (termLength_ != ((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) nil_chk(o))->termLength_) return false;
    for (jint i = 0; i < termLength_; i++) {
      if (IOSCharArray_Get(nil_chk(termBuffer_), i) != IOSCharArray_Get(o->termBuffer_, i)) {
        return false;
      }
    }
    return true;
  }
  return false;
}

- (NSString *)description {
  return [NSString java_stringWithCharacters:termBuffer_ offset:0 length:termLength_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() withNSString:@"term" withId:[self description]];
  [reflector reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_() withNSString:@"bytes" withId:[self getBytesRef]];
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) cast_check(target, OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(t)) copyBufferWithCharArray:termBuffer_ withInt:0 withInt:termLength_];
}

- (id<JavaUtilStreamIntStream>)chars {
  return JavaLangCharSequence_chars(self);
}

- (id<JavaUtilStreamIntStream>)codePoints {
  return JavaLangCharSequence_codePoints(self);
}

- (void)dealloc {
  RELEASE_(termBuffer_);
  RELEASE_(builder_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 0, 1, -1, -1, -1, -1 },
    { NULL, "[C", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "[C", 0x11, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 5, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 6, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x11, 7, 3, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x11, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 10, 11, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 10, 12, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 10, 13, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 10, 14, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 10, 15, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 10, 16, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 17, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl;", 0x1, 18, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 21, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 22, 23, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 24, 25, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(copyBufferWithCharArray:withInt:withInt:);
  methods[2].selector = @selector(buffer);
  methods[3].selector = @selector(resizeBufferWithInt:);
  methods[4].selector = @selector(growTermBufferWithInt:);
  methods[5].selector = @selector(setLengthWithInt:);
  methods[6].selector = @selector(setEmpty);
  methods[7].selector = @selector(getBytesRef);
  methods[8].selector = @selector(java_length);
  methods[9].selector = @selector(charAtWithInt:);
  methods[10].selector = @selector(subSequenceFrom:to:);
  methods[11].selector = @selector(appendWithJavaLangCharSequence:);
  methods[12].selector = @selector(appendWithJavaLangCharSequence:withInt:withInt:);
  methods[13].selector = @selector(appendWithChar:);
  methods[14].selector = @selector(appendWithNSString:);
  methods[15].selector = @selector(appendWithJavaLangStringBuilder:);
  methods[16].selector = @selector(appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:);
  methods[17].selector = @selector(appendNull);
  methods[18].selector = @selector(hash);
  methods[19].selector = @selector(clear);
  methods[20].selector = @selector(java_clone);
  methods[21].selector = @selector(isEqual:);
  methods[22].selector = @selector(description);
  methods[23].selector = @selector(reflectWithWithOrgApacheLuceneUtilAttributeReflector:);
  methods[24].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_BUFFER_SIZE", "I", .constantValue.asLong = 0, 0xa, -1, 26, -1, -1 },
    { "termBuffer_", "[C", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termLength_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "builder_", "LOrgApacheLuceneUtilBytesRefBuilder;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "copyBuffer", "[CII", "resizeBuffer", "I", "growTermBuffer", "setLength", "length", "charAt", "subSequence", "II", "append", "LJavaLangCharSequence;", "LJavaLangCharSequence;II", "C", "LNSString;", "LJavaLangStringBuilder;", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", "hashCode", "clone", "equals", "LNSObject;", "toString", "reflectWith", "LOrgApacheLuceneUtilAttributeReflector;", "copyTo", "LOrgApacheLuceneUtilAttributeImpl;", &OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl = { "CharTermAttributeImpl", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, fields, 7, 0x1, 25, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  JreStrongAssignAndConsume(&self->termBuffer_, [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)]);
  self->termLength_ = 0;
  JreStrongAssignAndConsume(&self->builder_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
}

OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, init)
}

OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, init)
}

IOSCharArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize) {
  if (((IOSCharArray *) nil_chk(self->termBuffer_))->size_ < newSize) {
    IOSCharArray *newCharBuffer = [IOSCharArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(newSize, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termBuffer_, 0, newCharBuffer, 0, ((IOSCharArray *) nil_chk(self->termBuffer_))->size_);
    JreStrongAssign(&self->termBuffer_, newCharBuffer);
  }
  return self->termBuffer_;
}

void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize) {
  if (((IOSCharArray *) nil_chk(self->termBuffer_))->size_ < newSize) {
    JreStrongAssignAndConsume(&self->termBuffer_, [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(newSize, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)]);
  }
}

id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, id<JavaLangCharSequence> csq, jint start, jint end) {
  if (csq == nil) csq = @"null";
  jint len = end - start;
  jint csqlen = [csq java_length];
  if (len < 0 || start > csqlen || end > csqlen) @throw create_JavaLangIndexOutOfBoundsException_init();
  if (len == 0) return self;
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, self->termLength_ + len);
  if (len > 4) {
    if ([csq isKindOfClass:[NSString class]]) {
      [((NSString *) csq) java_getChars:start sourceEnd:end destination:self->termBuffer_ destinationBegin:self->termLength_];
    }
    else if ([csq isKindOfClass:[JavaLangStringBuilder class]]) {
      [((JavaLangStringBuilder *) csq) getCharsWithInt:start withInt:end withCharArray:self->termBuffer_ withInt:self->termLength_];
    }
    else if ([OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() isInstance:csq]) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) cast_check(csq, OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_())) buffer], start, self->termBuffer_, self->termLength_, len);
    }
    else if ([csq isKindOfClass:[JavaNioCharBuffer class]] && [((JavaNioCharBuffer *) cast_chk(csq, [JavaNioCharBuffer class])) hasArray]) {
      JavaNioCharBuffer *cb = (JavaNioCharBuffer *) cast_chk(csq, [JavaNioCharBuffer class]);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([cb array], [cb arrayOffset] + [cb position] + start, self->termBuffer_, self->termLength_, len);
    }
    else if ([csq isKindOfClass:[JavaLangStringBuffer class]]) {
      [((JavaLangStringBuffer *) csq) getCharsWithInt:start withInt:end withCharArray:self->termBuffer_ withInt:self->termLength_];
    }
    else {
      while (start < end) *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = [csq charAtWithInt:start++];
      return self;
    }
    self->termLength_ += len;
    return self;
  }
  else {
    while (start < end) *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = [csq charAtWithInt:start++];
    return self;
  }
}

id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self) {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, self->termLength_ + 4);
  *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = 'n';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'u';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'l';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'l';
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl)
