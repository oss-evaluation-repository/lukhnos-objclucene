//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/KeepWordFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/KeepWordFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/KeepWordFilterFactory.h"
#include "org/apache/lucene/analysis/miscellaneous/Lucene43KeepWordFilter.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/Version.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/miscellaneous/KeepWordFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory () {
 @public
  jboolean ignoreCase_;
  NSString *wordFiles_;
  OrgApacheLuceneAnalysisUtilCharArraySet *words_;
  jboolean enablePositionIncrements_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory, wordFiles_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory, words_, OrgApacheLuceneAnalysisUtilCharArraySet *)

@implementation OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  if (wordFiles_ != nil) {
    JreStrongAssign(&words_, [self getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:wordFiles_ withBoolean:ignoreCase_]);
  }
}

- (jboolean)isIgnoreCase {
  return ignoreCase_;
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getWords {
  return words_;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if (words_ == nil) {
    return input;
  }
  else if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0)]) {
    return create_OrgApacheLuceneAnalysisMiscellaneousKeepWordFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(input, words_);
  }
  else {
    OrgApacheLuceneAnalysisTokenStream *filter = create_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(enablePositionIncrements_, input, words_);
    return filter;
  }
}

- (void)dealloc {
  RELEASE_(wordFiles_);
  RELEASE_(words_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisUtilCharArraySet;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(informWithOrgApacheLuceneAnalysisUtilResourceLoader:);
  methods[2].selector = @selector(isIgnoreCase);
  methods[3].selector = @selector(getWords);
  methods[4].selector = @selector(createWithOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ignoreCase_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "wordFiles_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "words_", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "enablePositionIncrements_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "inform", "LOrgApacheLuceneAnalysisUtilResourceLoader;", "LJavaIoIOException;", "create", "LOrgApacheLuceneAnalysisTokenStream;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory = { "KeepWordFilterFactory", "org.apache.lucene.analysis.miscellaneous", ptrTable, methods, fields, 7, 0x1, 5, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->wordFiles_, [self getWithJavaUtilMap:args withNSString:@"words"]);
  self->ignoreCase_ = [self getBooleanWithJavaUtilMap:args withNSString:@"ignoreCase" withBoolean:false];
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(self->luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_5_0_0)] == false) {
    jboolean defaultValue = [self->luceneMatchVersion_ onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0)];
    self->enablePositionIncrements_ = [self getBooleanWithJavaUtilMap:args withNSString:@"enablePositionIncrements" withBoolean:defaultValue];
    if (self->enablePositionIncrements_ == false && [self->luceneMatchVersion_ onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0)]) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"enablePositionIncrements=false is not supported anymore as of Lucene 4.4");
    }
  }
  else if ([((id<JavaUtilMap>) nil_chk(args)) containsKeyWithId:@"enablePositionIncrements"]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"enablePositionIncrements is not a valid option as of Lucene 5.0");
  }
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousKeepWordFilterFactory)
