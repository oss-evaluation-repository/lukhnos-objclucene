//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/PorterStemFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/en/PorterStemFilter.h"
#include "org/apache/lucene/analysis/en/PorterStemFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/en/PorterStemFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisEnPorterStemFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisEnPorterStemFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisEnPorterStemFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisEnPorterStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisEnPorterStemFilter;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createWithOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "create", "LOrgApacheLuceneAnalysisTokenStream;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisEnPorterStemFilterFactory = { "PorterStemFilterFactory", "org.apache.lucene.analysis.en", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisEnPorterStemFilterFactory;
}

@end

void OrgApacheLuceneAnalysisEnPorterStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisEnPorterStemFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisEnPorterStemFilterFactory *new_OrgApacheLuceneAnalysisEnPorterStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisEnPorterStemFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisEnPorterStemFilterFactory *create_OrgApacheLuceneAnalysisEnPorterStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisEnPorterStemFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisEnPorterStemFilterFactory)
