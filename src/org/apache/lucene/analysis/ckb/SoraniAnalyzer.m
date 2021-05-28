//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ckb/SoraniAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/RuntimeException.h"
#include "java/nio/charset/Charset.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/ckb/SoraniAnalyzer.h"
#include "org/apache/lucene/analysis/ckb/SoraniNormalizationFilter.h"
#include "org/apache/lucene/analysis/ckb/SoraniStemFilter.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/ckb/SoraniAnalyzer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisCkbSoraniAnalyzer () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCkbSoraniAnalyzer, stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

/*!
 @brief Atomically loads the DEFAULT_STOP_SET in a lazy fashion once the outer class 
  accesses the static final set the first time
 .;
 */
@interface OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder)

inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_get_DEFAULT_STOP_SET(void);
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DEFAULT_STOPWORD_FILE = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisCkbSoraniAnalyzer

+ (NSString *)DEFAULT_STOPWORD_FILE {
  return OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DEFAULT_STOPWORD_FILE;
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisCkbSoraniAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCkbSoraniAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet {
  OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *source;
  if ([((OrgApacheLuceneUtilVersion *) nil_chk([self getVersion])) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_7_0)]) {
    source = create_OrgApacheLuceneAnalysisStandardStandardTokenizer_init();
  }
  else {
    source = create_OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40_init();
  }
  OrgApacheLuceneAnalysisTokenStream *result = create_OrgApacheLuceneAnalysisStandardStandardFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source);
  result = create_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  result = create_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  result = create_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_);
  if (![((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(stemExclusionSet_)) isEmpty]) result = create_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stemExclusionSet_);
  result = create_OrgApacheLuceneAnalysisCkbSoraniStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, result);
}

- (void)dealloc {
  RELEASE_(stemExclusionSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneAnalysisUtilCharArraySet;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getDefaultStopSet);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[3].selector = @selector(initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[4].selector = @selector(createComponentsWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "stemExclusionSet_", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "DEFAULT_STOPWORD_FILE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisUtilCharArraySet;", "LOrgApacheLuceneAnalysisUtilCharArraySet;LOrgApacheLuceneAnalysisUtilCharArraySet;", "createComponents", "LNSString;", &OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DEFAULT_STOPWORD_FILE, "LOrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCkbSoraniAnalyzer = { "SoraniAnalyzer", "org.apache.lucene.analysis.ckb", ptrTable, methods, fields, 7, 0x11, 5, 2, -1, 5, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCkbSoraniAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCkbSoraniAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET);
}

void OrgApacheLuceneAnalysisCkbSoraniAnalyzer_init(OrgApacheLuceneAnalysisCkbSoraniAnalyzer *self) {
  OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET));
}

OrgApacheLuceneAnalysisCkbSoraniAnalyzer *new_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer, init)
}

OrgApacheLuceneAnalysisCkbSoraniAnalyzer *create_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer, init)
}

void OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCkbSoraniAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET));
}

OrgApacheLuceneAnalysisCkbSoraniAnalyzer *new_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

OrgApacheLuceneAnalysisCkbSoraniAnalyzer *create_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

void OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCkbSoraniAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclusionSet)));
}

OrgApacheLuceneAnalysisCkbSoraniAnalyzer *new_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

OrgApacheLuceneAnalysisCkbSoraniAnalyzer *create_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCkbSoraniAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x18, -1, 0, -1, -1 },
  };
  static const void *ptrTable[] = { &OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, "LOrgApacheLuceneAnalysisCkbSoraniAnalyzer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder = { "DefaultSetHolder", "org.apache.lucene.analysis.ckb", ptrTable, methods, fields, 7, 0xa, 1, 1, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_class_(), OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DEFAULT_STOPWORD_FILE, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8))));
      }
      @catch (JavaIoIOException *ex) {
        @throw create_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set");
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder)
  }
}

@end

void OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder, init)
}

OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCkbSoraniAnalyzer_DefaultSetHolder)
