//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/StopAnalyzer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseTokenizer.h"
#include "org/apache/lucene/analysis/core/StopAnalyzer.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/lukhnos/portmobile/file/Path.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/core/StopAnalyzer must not be compiled with ARC (-fobjc-arc)"
#endif

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisCoreStopAnalyzer)

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCoreStopAnalyzer_ENGLISH_STOP_WORDS_SET;

@implementation OrgApacheLuceneAnalysisCoreStopAnalyzer

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)ENGLISH_STOP_WORDS_SET {
  return OrgApacheLuceneAnalysisCoreStopAnalyzer_ENGLISH_STOP_WORDS_SET;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCoreStopAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopWords {
  OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopWords);
  return self;
}

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)stopwordsFile {
  OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgLukhnosPortmobileFilePath_(self, stopwordsFile);
  return self;
}

- (instancetype)initWithJavaIoReader:(JavaIoReader *)stopwords {
  OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithJavaIoReader_(self, stopwords);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *source = create_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_init();
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, create_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(source, stopwords_));
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 2, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;", 0x4, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[2].selector = @selector(initWithOrgLukhnosPortmobileFilePath:);
  methods[3].selector = @selector(initWithJavaIoReader:);
  methods[4].selector = @selector(createComponentsWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ENGLISH_STOP_WORDS_SET", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisUtilCharArraySet;", "LOrgLukhnosPortmobileFilePath;", "LJavaIoIOException;", "LJavaIoReader;", "createComponents", "LNSString;", &OrgApacheLuceneAnalysisCoreStopAnalyzer_ENGLISH_STOP_WORDS_SET };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreStopAnalyzer = { "StopAnalyzer", "org.apache.lucene.analysis.core", ptrTable, methods, fields, 7, 0x11, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCoreStopAnalyzer;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisCoreStopAnalyzer class]) {
    {
      id<JavaUtilList> stopWords = JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"a", @"an", @"and", @"are", @"as", @"at", @"be", @"but", @"by", @"for", @"if", @"in", @"into", @"is", @"it", @"no", @"not", @"of", @"on", @"or", @"such", @"that", @"the", @"their", @"then", @"there", @"these", @"they", @"this", @"to", @"was", @"will", @"with" } count:33 type:NSString_class_()]);
      OrgApacheLuceneAnalysisUtilCharArraySet *stopSet = create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(stopWords, false);
      JreStrongAssign(&OrgApacheLuceneAnalysisCoreStopAnalyzer_ENGLISH_STOP_WORDS_SET, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(stopSet));
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisCoreStopAnalyzer)
  }
}

@end

void OrgApacheLuceneAnalysisCoreStopAnalyzer_init(OrgApacheLuceneAnalysisCoreStopAnalyzer *self) {
  OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, OrgApacheLuceneAnalysisCoreStopAnalyzer_ENGLISH_STOP_WORDS_SET);
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *new_OrgApacheLuceneAnalysisCoreStopAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCoreStopAnalyzer, init)
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *create_OrgApacheLuceneAnalysisCoreStopAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCoreStopAnalyzer, init)
}

void OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCoreStopAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopWords);
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *new_OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCoreStopAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopWords)
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *create_OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCoreStopAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopWords)
}

void OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgLukhnosPortmobileFilePath_(OrgApacheLuceneAnalysisCoreStopAnalyzer *self, OrgLukhnosPortmobileFilePath *stopwordsFile) {
  OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithOrgLukhnosPortmobileFilePath_(stopwordsFile));
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *new_OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *stopwordsFile) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCoreStopAnalyzer, initWithOrgLukhnosPortmobileFilePath_, stopwordsFile)
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *create_OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *stopwordsFile) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCoreStopAnalyzer, initWithOrgLukhnosPortmobileFilePath_, stopwordsFile)
}

void OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithJavaIoReader_(OrgApacheLuceneAnalysisCoreStopAnalyzer *self, JavaIoReader *stopwords) {
  OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithJavaIoReader_(stopwords));
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *new_OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithJavaIoReader_(JavaIoReader *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCoreStopAnalyzer, initWithJavaIoReader_, stopwords)
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *create_OrgApacheLuceneAnalysisCoreStopAnalyzer_initWithJavaIoReader_(JavaIoReader *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCoreStopAnalyzer, initWithJavaIoReader_, stopwords)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreStopAnalyzer)
