//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pattern/PatternTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/pattern/PatternTokenizer.h"
#include "org/apache/lucene/analysis/pattern/PatternTokenizerFactory.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/pattern/PatternTokenizerFactory must not be compiled with ARC (-fobjc-arc)"
#endif

NSString *OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_PATTERN = @"pattern";
NSString *OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_GROUP = @"group";

@implementation OrgApacheLuceneAnalysisPatternPatternTokenizerFactory

+ (NSString *)PATTERN {
  return OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_PATTERN;
}

+ (NSString *)GROUP {
  return OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_GROUP;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisPatternPatternTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  return create_OrgApacheLuceneAnalysisPatternPatternTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withJavaUtilRegexPattern_withInt_(factory, pattern_, group_);
}

- (void)dealloc {
  RELEASE_(pattern_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisPatternPatternTokenizer;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createWithOrgApacheLuceneUtilAttributeFactory:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PATTERN", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "GROUP", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "pattern_", "LJavaUtilRegexPattern;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "group_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "create", "LOrgApacheLuceneUtilAttributeFactory;", &OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_PATTERN, &OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_GROUP };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPatternPatternTokenizerFactory = { "PatternTokenizerFactory", "org.apache.lucene.analysis.pattern", ptrTable, methods, fields, 7, 0x1, 2, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisPatternPatternTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPatternPatternTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->pattern_, [self getPatternWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_PATTERN]);
  self->group_ = [self getIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_GROUP withInt:-1];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisPatternPatternTokenizerFactory *new_OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPatternPatternTokenizerFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisPatternPatternTokenizerFactory *create_OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPatternPatternTokenizerFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPatternPatternTokenizerFactory)
