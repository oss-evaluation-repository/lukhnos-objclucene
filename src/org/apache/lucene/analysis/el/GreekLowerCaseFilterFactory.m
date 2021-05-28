//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/el/GreekLowerCaseFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/el/GreekLowerCaseFilter.h"
#include "org/apache/lucene/analysis/el/GreekLowerCaseFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/el/GreekLowerCaseFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisElGreekLowerCaseFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  return create_OrgApacheLuceneAnalysisElGreekLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(inArg);
}

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisElGreekLowerCaseFilter;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createWithOrgApacheLuceneAnalysisTokenStream:);
  methods[2].selector = @selector(getMultiTermComponent);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "create", "LOrgApacheLuceneAnalysisTokenStream;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory = { "GreekLowerCaseFilterFactory", "org.apache.lucene.analysis.el", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory;
}

@end

void OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory *new_OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory *create_OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisElGreekLowerCaseFilterFactory)
