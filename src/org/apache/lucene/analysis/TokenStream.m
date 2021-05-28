//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/TokenStream.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Modifier.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/PackedTokenAttributeImpl.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeSource.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/TokenStream must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisTokenStream ()

- (jboolean)assertFinal;

@end

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisTokenStream_assertFinal(OrgApacheLuceneAnalysisTokenStream *self);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisTokenStream)

OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY;

@implementation OrgApacheLuceneAnalysisTokenStream

+ (OrgApacheLuceneUtilAttributeFactory *)DEFAULT_TOKEN_ATTRIBUTE_FACTORY {
  return OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenStream_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)input {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(self, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  return self;
}

- (jboolean)assertFinal {
  return OrgApacheLuceneAnalysisTokenStream_assertFinal(self);
}

- (jboolean)incrementToken {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)end {
  [self clearAttributes];
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt = JreRetainedLocalValue([self getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  if (posIncAtt != nil) {
    [posIncAtt setPositionIncrementWithInt:0];
  }
}

- (void)reset {
}

- (void)close {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilAttributeFactory:);
  methods[3].selector = @selector(assertFinal);
  methods[4].selector = @selector(incrementToken);
  methods[5].selector = @selector(end);
  methods[6].selector = @selector(reset);
  methods[7].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_TOKEN_ATTRIBUTE_FACTORY", "LOrgApacheLuceneUtilAttributeFactory;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilAttributeSource;", "LOrgApacheLuceneUtilAttributeFactory;", "LJavaIoIOException;", &OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenStream = { "TokenStream", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x401, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenStream;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisTokenStream class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY, OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(JreLoadStatic(OrgApacheLuceneUtilAttributeFactory, DEFAULT_ATTRIBUTE_FACTORY), OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl_class_()));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisTokenStream)
  }
}

@end

void OrgApacheLuceneAnalysisTokenStream_init(OrgApacheLuceneAnalysisTokenStream *self) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(self, OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY);
  JreAssert(OrgApacheLuceneAnalysisTokenStream_assertFinal(self), @"org/apache/lucene/analysis/TokenStream.java:99 condition failed: assert assertFinal();");
}

void OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisTokenStream *self, OrgApacheLuceneUtilAttributeSource *input) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_(self, input);
  JreAssert(OrgApacheLuceneAnalysisTokenStream_assertFinal(self), @"org/apache/lucene/analysis/TokenStream.java:107 condition failed: assert assertFinal();");
}

void OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisTokenStream *self, OrgApacheLuceneUtilAttributeFactory *factory) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  JreAssert(OrgApacheLuceneAnalysisTokenStream_assertFinal(self), @"org/apache/lucene/analysis/TokenStream.java:115 condition failed: assert assertFinal();");
}

jboolean OrgApacheLuceneAnalysisTokenStream_assertFinal(OrgApacheLuceneAnalysisTokenStream *self) {
  @try {
    IOSClass *clazz = [self java_getClass];
    if (![clazz desiredAssertionStatus]) return true;
    JreAssert([clazz isAnonymousClass] || ([clazz getModifiers] & (JavaLangReflectModifier_FINAL | JavaLangReflectModifier_PRIVATE)) != 0 || JavaLangReflectModifier_isFinalWithInt_([((JavaLangReflectMethod *) nil_chk([clazz getMethod:@"incrementToken" parameterTypes:[IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]])) getModifiers]), @"TokenStream implementation classes or at least their incrementToken() implementation must be final");
    return true;
  }
  @catch (JavaLangNoSuchMethodException *nsme) {
    return false;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenStream)
