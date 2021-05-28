//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hu/HungarianLightStemFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/hu/HungarianLightStemFilter.h"
#include "org/apache/lucene/analysis/hu/HungarianLightStemFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/hu/HungarianLightStemFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisHuHungarianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input);
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
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory = { "HungarianLightStemFilterFactory", "org.apache.lucene.analysis.hu", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory;
}

@end

void OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory *new_OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory *create_OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisHuHungarianLightStemFilterFactory)
