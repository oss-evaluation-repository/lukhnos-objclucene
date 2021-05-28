//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/CharsRef.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/Math.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Arrays.h"
#include "java/util/Comparator.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "java/util/stream/IntStream.h"
#include "org/apache/lucene/util/CharsRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/CharsRef must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wprotocol"

/*!
 */
inline id<JavaUtilComparator> OrgApacheLuceneUtilCharsRef_get_utf16SortedAsUTF8SortOrder(void);
static id<JavaUtilComparator> OrgApacheLuceneUtilCharsRef_utf16SortedAsUTF8SortOrder;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilCharsRef, utf16SortedAsUTF8SortOrder, id<JavaUtilComparator>)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilCharsRef__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilCharsRef__Annotations$1(void);

/*!
 */
@interface OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator : NSObject < JavaUtilComparator >

- (instancetype)init;

- (jint)compareWithId:(OrgApacheLuceneUtilCharsRef *)a
               withId:(OrgApacheLuceneUtilCharsRef *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator)

__attribute__((unused)) static void OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator_init(OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator *self);

__attribute__((unused)) static OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator *new_OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator *create_OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator_init(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator__Annotations$0(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilCharsRef)

IOSCharArray *OrgApacheLuceneUtilCharsRef_EMPTY_CHARS;

@implementation OrgApacheLuceneUtilCharsRef

+ (IOSCharArray *)EMPTY_CHARS {
  return OrgApacheLuceneUtilCharsRef_EMPTY_CHARS;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilCharsRef_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)capacity {
  OrgApacheLuceneUtilCharsRef_initWithInt_(self, capacity);
  return self;
}

- (instancetype)initWithCharArray:(IOSCharArray *)chars
                          withInt:(jint)offset
                          withInt:(jint)length {
  OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(self, chars, offset, length);
  return self;
}

- (instancetype)initWithNSString:(NSString *)string {
  OrgApacheLuceneUtilCharsRef_initWithNSString_(self, string);
  return self;
}

- (OrgApacheLuceneUtilCharsRef *)java_clone {
  return create_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(chars_, offset_, length_);
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 0;
  jint end = offset_ + length_;
  for (jint i = offset_; i < end; i++) {
    result = prime * result + IOSCharArray_Get(nil_chk(chars_), i);
  }
  return result;
}

- (jboolean)isEqual:(id)other {
  if (other == nil) {
    return false;
  }
  if ([other isKindOfClass:[OrgApacheLuceneUtilCharsRef class]]) {
    return [self charsEqualsWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *) other];
  }
  return false;
}

- (jboolean)charsEqualsWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)other {
  if (length_ == ((OrgApacheLuceneUtilCharsRef *) nil_chk(other))->length_) {
    jint otherUpto = other->offset_;
    IOSCharArray *otherChars = other->chars_;
    jint end = offset_ + length_;
    for (jint upto = offset_; upto < end; upto++, otherUpto++) {
      if (IOSCharArray_Get(nil_chk(chars_), upto) != IOSCharArray_Get(nil_chk(otherChars), otherUpto)) {
        return false;
      }
    }
    return true;
  }
  else {
    return false;
  }
}

- (jint)compareToWithId:(OrgApacheLuceneUtilCharsRef *)other {
  cast_chk(other, [OrgApacheLuceneUtilCharsRef class]);
  if (JreObjectEqualsEquals(self, other)) return 0;
  IOSCharArray *aChars = self->chars_;
  jint aUpto = self->offset_;
  IOSCharArray *bChars = ((OrgApacheLuceneUtilCharsRef *) nil_chk(other))->chars_;
  jint bUpto = other->offset_;
  jint aStop = aUpto + JavaLangMath_minWithInt_withInt_(self->length_, other->length_);
  while (aUpto < aStop) {
    jint aInt = IOSCharArray_Get(nil_chk(aChars), aUpto++);
    jint bInt = IOSCharArray_Get(nil_chk(bChars), bUpto++);
    if (aInt > bInt) {
      return 1;
    }
    else if (aInt < bInt) {
      return -1;
    }
  }
  return self->length_ - other->length_;
}

- (NSString *)description {
  return [NSString java_stringWithCharacters:chars_ offset:offset_ length:length_];
}

- (jint)java_length {
  return length_;
}

- (jchar)charAtWithInt:(jint)index {
  if (index < 0 || index >= length_) {
    @throw create_JavaLangIndexOutOfBoundsException_init();
  }
  return IOSCharArray_Get(nil_chk(chars_), offset_ + index);
}

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  if (start < 0 || end > length_ || start > end) {
    @throw create_JavaLangIndexOutOfBoundsException_init();
  }
  return create_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(chars_, offset_ + start, end - start);
}

+ (id<JavaUtilComparator>)getUTF16SortedAsUTF8Comparator {
  return OrgApacheLuceneUtilCharsRef_getUTF16SortedAsUTF8Comparator();
}

+ (OrgApacheLuceneUtilCharsRef *)deepCopyOfWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)other {
  return OrgApacheLuceneUtilCharsRef_deepCopyOfWithOrgApacheLuceneUtilCharsRef_(other);
}

- (jboolean)isValid {
  if (chars_ == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"chars is null");
  }
  if (length_ < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I", @"length is negative: ", length_));
  }
  if (length_ > chars_->size_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I", @"length is out of bounds: ", length_, @",chars.length=", chars_->size_));
  }
  if (offset_ < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I", @"offset is negative: ", offset_));
  }
  if (offset_ > chars_->size_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I", @"offset out of bounds: ", offset_, @",chars.length=", chars_->size_));
  }
  if (offset_ + length_ < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I", @"offset+length is negative: offset=", offset_, @",length=", length_));
  }
  if (offset_ + length_ > chars_->size_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I$I", @"offset+length out of bounds: offset=", offset_, @",length=", length_, @",chars.length=", chars_->size_));
  }
  return true;
}

- (id<JavaUtilStreamIntStream>)chars {
  return JavaLangCharSequence_chars(self);
}

- (id<JavaUtilStreamIntStream>)codePoints {
  return JavaLangCharSequence_codePoints(self);
}

- (void)dealloc {
  RELEASE_(chars_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilCharsRef;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, 8, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x1, 12, 0, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x9, -1, -1, -1, 15, 16, -1 },
    { NULL, "LOrgApacheLuceneUtilCharsRef;", 0x9, 17, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(initWithCharArray:withInt:withInt:);
  methods[3].selector = @selector(initWithNSString:);
  methods[4].selector = @selector(java_clone);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(charsEqualsWithOrgApacheLuceneUtilCharsRef:);
  methods[8].selector = @selector(compareToWithId:);
  methods[9].selector = @selector(description);
  methods[10].selector = @selector(java_length);
  methods[11].selector = @selector(charAtWithInt:);
  methods[12].selector = @selector(subSequenceFrom:to:);
  methods[13].selector = @selector(getUTF16SortedAsUTF8Comparator);
  methods[14].selector = @selector(deepCopyOfWithOrgApacheLuceneUtilCharsRef:);
  methods[15].selector = @selector(isValid);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_CHARS", "[C", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "chars_", "[C", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "offset_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "length_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "utf16SortedAsUTF8SortOrder", "LJavaUtilComparator;", .constantValue.asLong = 0, 0x1a, -1, 19, 20, 21 },
  };
  static const void *ptrTable[] = { "I", "[CII", "LNSString;", "clone", "hashCode", "equals", "LNSObject;", "charsEquals", "LOrgApacheLuceneUtilCharsRef;", "compareTo", "toString", "length", "charAt", "subSequence", "II", "()Ljava/util/Comparator<Lorg/apache/lucene/util/CharsRef;>;", (void *)&OrgApacheLuceneUtilCharsRef__Annotations$0, "deepCopyOf", &OrgApacheLuceneUtilCharsRef_EMPTY_CHARS, &OrgApacheLuceneUtilCharsRef_utf16SortedAsUTF8SortOrder, "Ljava/util/Comparator<Lorg/apache/lucene/util/CharsRef;>;", (void *)&OrgApacheLuceneUtilCharsRef__Annotations$1, "LOrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator;", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/util/CharsRef;>;Ljava/lang/CharSequence;Ljava/lang/Cloneable;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCharsRef = { "CharsRef", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 16, 5, -1, 22, -1, 23, -1 };
  return &_OrgApacheLuceneUtilCharsRef;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilCharsRef class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilCharsRef_EMPTY_CHARS, [IOSCharArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilCharsRef_utf16SortedAsUTF8SortOrder, new_OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilCharsRef)
  }
}

@end

void OrgApacheLuceneUtilCharsRef_init(OrgApacheLuceneUtilCharsRef *self) {
  OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(self, OrgApacheLuceneUtilCharsRef_EMPTY_CHARS, 0, 0);
}

OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCharsRef, init)
}

OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCharsRef, init)
}

void OrgApacheLuceneUtilCharsRef_initWithInt_(OrgApacheLuceneUtilCharsRef *self, jint capacity) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->chars_, [IOSCharArray newArrayWithLength:capacity]);
}

OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithInt_(jint capacity) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCharsRef, initWithInt_, capacity)
}

OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithInt_(jint capacity) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCharsRef, initWithInt_, capacity)
}

void OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(OrgApacheLuceneUtilCharsRef *self, IOSCharArray *chars, jint offset, jint length) {
  NSObject_init(self);
  JreStrongAssign(&self->chars_, chars);
  self->offset_ = offset;
  self->length_ = length;
  JreAssert([self isValid], @"org/apache/lucene/util/CharsRef.java:62 condition failed: assert isValid();");
}

OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(IOSCharArray *chars, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCharsRef, initWithCharArray_withInt_withInt_, chars, offset, length)
}

OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(IOSCharArray *chars, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCharsRef, initWithCharArray_withInt_withInt_, chars, offset, length)
}

void OrgApacheLuceneUtilCharsRef_initWithNSString_(OrgApacheLuceneUtilCharsRef *self, NSString *string) {
  NSObject_init(self);
  JreStrongAssign(&self->chars_, [((NSString *) nil_chk(string)) java_toCharArray]);
  self->offset_ = 0;
  self->length_ = ((IOSCharArray *) nil_chk(self->chars_))->size_;
}

OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithNSString_(NSString *string) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCharsRef, initWithNSString_, string)
}

OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithNSString_(NSString *string) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCharsRef, initWithNSString_, string)
}

id<JavaUtilComparator> OrgApacheLuceneUtilCharsRef_getUTF16SortedAsUTF8Comparator() {
  OrgApacheLuceneUtilCharsRef_initialize();
  return OrgApacheLuceneUtilCharsRef_utf16SortedAsUTF8SortOrder;
}

OrgApacheLuceneUtilCharsRef *OrgApacheLuceneUtilCharsRef_deepCopyOfWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilCharsRef *other) {
  OrgApacheLuceneUtilCharsRef_initialize();
  return create_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(JavaUtilArrays_copyOfRangeWithCharArray_withInt_withInt_(((OrgApacheLuceneUtilCharsRef *) nil_chk(other))->chars_, other->offset_, other->offset_ + other->length_), 0, other->length_);
}

IOSObjectArray *OrgApacheLuceneUtilCharsRef__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilCharsRef__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCharsRef)

@implementation OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(OrgApacheLuceneUtilCharsRef *)a
               withId:(OrgApacheLuceneUtilCharsRef *)b {
  if (JreObjectEqualsEquals(a, b)) return 0;
  IOSCharArray *aChars = ((OrgApacheLuceneUtilCharsRef *) nil_chk(a))->chars_;
  jint aUpto = a->offset_;
  IOSCharArray *bChars = ((OrgApacheLuceneUtilCharsRef *) nil_chk(b))->chars_;
  jint bUpto = b->offset_;
  jint aStop = aUpto + JavaLangMath_minWithInt_withInt_(a->length_, b->length_);
  while (aUpto < aStop) {
    jchar aChar = IOSCharArray_Get(nil_chk(aChars), aUpto++);
    jchar bChar = IOSCharArray_Get(nil_chk(bChars), bUpto++);
    if (aChar != bChar) {
      if (aChar >= (jint) 0xd800 && bChar >= (jint) 0xd800) {
        if (aChar >= (jint) 0xe000) {
          aChar -= (jint) 0x800;
        }
        else {
          aChar += (jint) 0x2000;
        }
        if (bChar >= (jint) 0xe000) {
          bChar -= (jint) 0x800;
        }
        else {
          bChar += (jint) 0x2000;
        }
      }
      return (jint) aChar - (jint) bChar;
    }
  }
  return a->length_ - b->length_;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LOrgApacheLuceneUtilCharsRef;LOrgApacheLuceneUtilCharsRef;", "LOrgApacheLuceneUtilCharsRef;", "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/util/CharsRef;>;", (void *)&OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator = { "UTF16SortedAsUTF8Comparator", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0xa, 2, 0, 2, -1, -1, 3, 4 };
  return &_OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator;
}

@end

void OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator_init(OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator *new_OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator, init)
}

OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator *create_OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator, init)
}

IOSObjectArray *OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator)
