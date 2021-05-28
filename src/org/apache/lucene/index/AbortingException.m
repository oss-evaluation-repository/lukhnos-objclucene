//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/AbortingException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Throwable.h"
#include "org/apache/lucene/index/AbortingException.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/AbortingException must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexAbortingException ()

- (instancetype)initPackagePrivateWithJavaLangThrowable:(JavaLangThrowable *)cause;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexAbortingException_initPackagePrivateWithJavaLangThrowable_(OrgApacheLuceneIndexAbortingException *self, JavaLangThrowable *cause);

__attribute__((unused)) static OrgApacheLuceneIndexAbortingException *new_OrgApacheLuceneIndexAbortingException_initPackagePrivateWithJavaLangThrowable_(JavaLangThrowable *cause) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexAbortingException *create_OrgApacheLuceneIndexAbortingException_initPackagePrivateWithJavaLangThrowable_(JavaLangThrowable *cause);

@implementation OrgApacheLuceneIndexAbortingException

- (instancetype)initPackagePrivateWithJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheLuceneIndexAbortingException_initPackagePrivateWithJavaLangThrowable_(self, cause);
  return self;
}

+ (OrgApacheLuceneIndexAbortingException *)wrapWithJavaLangThrowable:(JavaLangThrowable *)t {
  return OrgApacheLuceneIndexAbortingException_wrapWithJavaLangThrowable_(t);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexAbortingException;", 0x9, 1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithJavaLangThrowable:);
  methods[1].selector = @selector(wrapWithJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaLangThrowable;", "wrap" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexAbortingException = { "AbortingException", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x0, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexAbortingException;
}

@end

void OrgApacheLuceneIndexAbortingException_initPackagePrivateWithJavaLangThrowable_(OrgApacheLuceneIndexAbortingException *self, JavaLangThrowable *cause) {
  JavaLangException_initWithJavaLangThrowable_(self, cause);
  JreAssert([cause isKindOfClass:[OrgApacheLuceneIndexAbortingException class]] == false, @"org/apache/lucene/index/AbortingException.java:26 condition failed: assert cause instanceof AbortingException == false;");
}

OrgApacheLuceneIndexAbortingException *new_OrgApacheLuceneIndexAbortingException_initPackagePrivateWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexAbortingException, initPackagePrivateWithJavaLangThrowable_, cause)
}

OrgApacheLuceneIndexAbortingException *create_OrgApacheLuceneIndexAbortingException_initPackagePrivateWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexAbortingException, initPackagePrivateWithJavaLangThrowable_, cause)
}

OrgApacheLuceneIndexAbortingException *OrgApacheLuceneIndexAbortingException_wrapWithJavaLangThrowable_(JavaLangThrowable *t) {
  OrgApacheLuceneIndexAbortingException_initialize();
  if ([t isKindOfClass:[OrgApacheLuceneIndexAbortingException class]]) {
    return (OrgApacheLuceneIndexAbortingException *) t;
  }
  else {
    return create_OrgApacheLuceneIndexAbortingException_initPackagePrivateWithJavaLangThrowable_(t);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexAbortingException)
