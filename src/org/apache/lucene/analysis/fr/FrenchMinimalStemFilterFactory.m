//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fr/FrenchMinimalStemFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/fr/FrenchMinimalStemFilter.h"
#include "org/apache/lucene/analysis/fr/FrenchMinimalStemFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/fr/FrenchMinimalStemFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createWithOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "create", "LOrgApacheLuceneAnalysisTokenStream;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory = { "FrenchMinimalStemFilterFactory", "org.apache.lucene.analysis.fr", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory;
}

@end

void OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory *new_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory *create_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory)
