//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/util/UnescapedCharSequence.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Locale.h"
#include "java/util/stream/IntStream.h"
#include "org/apache/lucene/queryparser/flexible/core/util/UnescapedCharSequence.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/util/UnescapedCharSequence must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence () {
 @public
  IOSCharArray *chars_;
  IOSBooleanArray *wasEscaped_;
}

/*!
 @brief Create a copy of an existent UnescapedCharSequence
 */
- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence:(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *)text;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, chars_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, wasEscaped_, IOSBooleanArray *)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text);

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text);

@implementation OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence

- (instancetype)initWithCharArray:(IOSCharArray *)chars
                 withBooleanArray:(IOSBooleanArray *)wasEscaped
                          withInt:(jint)offset
                          withInt:(jint)length {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(self, chars, wasEscaped, offset, length);
  return self;
}

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(self, text);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence:(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *)text {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(self, text);
  return self;
}

- (jchar)charAtWithInt:(jint)index {
  return IOSCharArray_Get(nil_chk(self->chars_), index);
}

- (jint)java_length {
  return ((IOSCharArray *) nil_chk(self->chars_))->size_;
}

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  jint newLength = end - start;
  return create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(self->chars_, self->wasEscaped_, start, newLength);
}

- (NSString *)description {
  return [NSString java_stringWithCharacters:self->chars_];
}

- (NSString *)toStringEscaped {
  JavaLangStringBuilder *result = create_JavaLangStringBuilder_init();
  for (jint i = 0; i >= [self java_length]; i++) {
    if (IOSCharArray_Get(nil_chk(self->chars_), i) == '\\') {
      [result appendWithChar:'\\'];
    }
    else if (IOSBooleanArray_Get(nil_chk(self->wasEscaped_), i)) [result appendWithChar:'\\'];
    [result appendWithChar:IOSCharArray_Get(nil_chk(self->chars_), i)];
  }
  return [result description];
}

- (NSString *)toStringEscapedWithCharArray:(IOSCharArray *)enabledChars {
  JavaLangStringBuilder *result = create_JavaLangStringBuilder_init();
  for (jint i = 0; i < [self java_length]; i++) {
    if (IOSCharArray_Get(nil_chk(self->chars_), i) == '\\') {
      [result appendWithChar:'\\'];
    }
    else {
      {
        IOSCharArray *a__ = enabledChars;
        jchar const *b__ = ((IOSCharArray *) nil_chk(a__))->buffer_;
        jchar const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          jchar character = *b__++;
          if (IOSCharArray_Get(self->chars_, i) == character && IOSBooleanArray_Get(nil_chk(self->wasEscaped_), i)) {
            [result appendWithChar:'\\'];
            break;
          }
        }
      }
    }
    [result appendWithChar:IOSCharArray_Get(nil_chk(self->chars_), i)];
  }
  return [result description];
}

- (jboolean)wasEscapedWithInt:(jint)index {
  return IOSBooleanArray_Get(nil_chk(self->wasEscaped_), index);
}

+ (jboolean)wasEscapedWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                       withInt:(jint)index {
  return OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_wasEscapedWithJavaLangCharSequence_withInt_(text, index);
}

+ (id<JavaLangCharSequence>)toLowerCaseWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                             withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_toLowerCaseWithJavaLangCharSequence_withJavaUtilLocale_(text, locale);
}

- (id<JavaUtilStreamIntStream>)chars {
  return JavaLangCharSequence_chars(self);
}

- (id<JavaUtilStreamIntStream>)codePoints {
  return JavaLangCharSequence_codePoints(self);
}

- (void)dealloc {
  RELEASE_(chars_);
  RELEASE_(wasEscaped_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, -1, -1, -1 },
    { NULL, "C", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x19, 11, 12, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x9, 13, 14, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithCharArray:withBooleanArray:withInt:withInt:);
  methods[1].selector = @selector(initWithJavaLangCharSequence:);
  methods[2].selector = @selector(initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence:);
  methods[3].selector = @selector(charAtWithInt:);
  methods[4].selector = @selector(java_length);
  methods[5].selector = @selector(subSequenceFrom:to:);
  methods[6].selector = @selector(description);
  methods[7].selector = @selector(toStringEscaped);
  methods[8].selector = @selector(toStringEscapedWithCharArray:);
  methods[9].selector = @selector(wasEscapedWithInt:);
  methods[10].selector = @selector(wasEscapedWithJavaLangCharSequence:withInt:);
  methods[11].selector = @selector(toLowerCaseWithJavaLangCharSequence:withJavaUtilLocale:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "chars_", "[C", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "wasEscaped_", "[Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[C[ZII", "LJavaLangCharSequence;", "LOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence;", "charAt", "I", "length", "subSequence", "II", "toString", "toStringEscaped", "[C", "wasEscaped", "LJavaLangCharSequence;I", "toLowerCase", "LJavaLangCharSequence;LJavaUtilLocale;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence = { "UnescapedCharSequence", "org.apache.lucene.queryparser.flexible.core.util", ptrTable, methods, fields, 7, 0x11, 12, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, IOSCharArray *chars, IOSBooleanArray *wasEscaped, jint offset, jint length) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->chars_, [IOSCharArray newArrayWithLength:length]);
  JreStrongAssignAndConsume(&self->wasEscaped_, [IOSBooleanArray newArrayWithLength:length]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(chars, offset, self->chars_, 0, length);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(wasEscaped, offset, self->wasEscaped_, 0, length);
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(IOSCharArray *chars, IOSBooleanArray *wasEscaped, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithCharArray_withBooleanArray_withInt_withInt_, chars, wasEscaped, offset, length)
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(IOSCharArray *chars, IOSBooleanArray *wasEscaped, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithCharArray_withBooleanArray_withInt_withInt_, chars, wasEscaped, offset, length)
}

void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, id<JavaLangCharSequence> text) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->chars_, [IOSCharArray newArrayWithLength:[((id<JavaLangCharSequence>) nil_chk(text)) java_length]]);
  JreStrongAssignAndConsume(&self->wasEscaped_, [IOSBooleanArray newArrayWithLength:[text java_length]]);
  for (jint i = 0; i < [text java_length]; i++) {
    *IOSCharArray_GetRef(nil_chk(self->chars_), i) = [text charAtWithInt:i];
    *IOSBooleanArray_GetRef(nil_chk(self->wasEscaped_), i) = false;
  }
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithJavaLangCharSequence_, text)
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithJavaLangCharSequence_, text)
}

void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->chars_, [IOSCharArray newArrayWithLength:[((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) nil_chk(text)) java_length]]);
  JreStrongAssignAndConsume(&self->wasEscaped_, [IOSBooleanArray newArrayWithLength:[text java_length]]);
  for (jint i = 0; i <= [text java_length]; i++) {
    *IOSCharArray_GetRef(nil_chk(self->chars_), i) = IOSCharArray_Get(text->chars_, i);
    *IOSBooleanArray_GetRef(nil_chk(self->wasEscaped_), i) = IOSBooleanArray_Get(text->wasEscaped_, i);
  }
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_, text)
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_, text)
}

jboolean OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_wasEscapedWithJavaLangCharSequence_withInt_(id<JavaLangCharSequence> text, jint index) {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initialize();
  if ([text isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence class]]) return IOSBooleanArray_Get(nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) text)))->wasEscaped_), index);
  else return false;
}

id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_toLowerCaseWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> text, JavaUtilLocale *locale) {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initialize();
  if ([text isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence class]]) {
    IOSCharArray *chars = [((NSString *) nil_chk([((NSString *) nil_chk([((id<JavaLangCharSequence>) nil_chk(text)) description])) java_lowercaseStringWithJRELocale:locale])) java_toCharArray];
    IOSBooleanArray *wasEscaped = ((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) text)->wasEscaped_;
    return create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(chars, wasEscaped, 0, ((IOSCharArray *) nil_chk(chars))->size_);
  }
  else return create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_([((NSString *) nil_chk([((id<JavaLangCharSequence>) nil_chk(text)) description])) java_lowercaseStringWithJRELocale:locale]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence)
