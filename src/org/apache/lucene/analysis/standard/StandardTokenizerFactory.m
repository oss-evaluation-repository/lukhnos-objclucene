//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/StandardTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/standard/StandardAnalyzer.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizerFactory.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/Version.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/standard/StandardTokenizerFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisStandardStandardTokenizerFactory () {
 @public
  jint maxTokenLength_;
}

@end

@implementation OrgApacheLuceneAnalysisStandardStandardTokenizerFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisStandardStandardTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_7_0)]) {
    OrgApacheLuceneAnalysisStandardStandardTokenizer *tokenizer = create_OrgApacheLuceneAnalysisStandardStandardTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(factory);
    [tokenizer setMaxTokenLengthWithInt:maxTokenLength_];
    return tokenizer;
  }
  else {
    OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40 *tokenizer40 = create_OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40_initWithOrgApacheLuceneUtilAttributeFactory_(factory);
    [tokenizer40 setMaxTokenLengthWithInt:maxTokenLength_];
    return tokenizer40;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenizer;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createWithOrgApacheLuceneUtilAttributeFactory:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "maxTokenLength_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "create", "LOrgApacheLuceneUtilAttributeFactory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardStandardTokenizerFactory = { "StandardTokenizerFactory", "org.apache.lucene.analysis.standard", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisStandardStandardTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisStandardStandardTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisStandardStandardTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  self->maxTokenLength_ = [self getIntWithJavaUtilMap:args withNSString:@"maxTokenLength" withInt:OrgApacheLuceneAnalysisStandardStandardAnalyzer_DEFAULT_MAX_TOKEN_LENGTH];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisStandardStandardTokenizerFactory *new_OrgApacheLuceneAnalysisStandardStandardTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardStandardTokenizerFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisStandardStandardTokenizerFactory *create_OrgApacheLuceneAnalysisStandardStandardTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardStandardTokenizerFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardStandardTokenizerFactory)
