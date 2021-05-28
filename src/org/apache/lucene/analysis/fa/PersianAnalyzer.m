//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fa/PersianAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/ar/ArabicNormalizationFilter.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/fa/PersianAnalyzer.h"
#include "org/apache/lucene/analysis/fa/PersianCharFilter.h"
#include "org/apache/lucene/analysis/fa/PersianNormalizationFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/util/Version.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/fa/PersianAnalyzer must not be compiled with ARC (-fobjc-arc)"
#endif

/*!
 @brief Atomically loads the DEFAULT_STOP_SET in a lazy fashion once the outer class 
  accesses the static final set the first time
 .;
 */
@interface OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder)

inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_get_DEFAULT_STOP_SET(void);
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisFaPersianAnalyzer_DEFAULT_STOPWORD_FILE = @"stopwords.txt";
NSString *OrgApacheLuceneAnalysisFaPersianAnalyzer_STOPWORDS_COMMENT = @"#";

@implementation OrgApacheLuceneAnalysisFaPersianAnalyzer

+ (NSString *)DEFAULT_STOPWORD_FILE {
  return OrgApacheLuceneAnalysisFaPersianAnalyzer_DEFAULT_STOPWORD_FILE;
}

+ (NSString *)STOPWORDS_COMMENT {
  return OrgApacheLuceneAnalysisFaPersianAnalyzer_STOPWORDS_COMMENT;
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisFaPersianAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisFaPersianAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisFaPersianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
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
  OrgApacheLuceneAnalysisTokenStream *result = create_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source);
  result = create_OrgApacheLuceneAnalysisArArabicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  result = create_OrgApacheLuceneAnalysisFaPersianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, create_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_));
}

- (JavaIoReader *)initReaderWithNSString:(NSString *)fieldName
                        withJavaIoReader:(JavaIoReader *)reader {
  return create_OrgApacheLuceneAnalysisFaPersianCharFilter_initWithJavaIoReader_(reader);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneAnalysisUtilCharArraySet;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaIoReader;", 0x4, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getDefaultStopSet);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[3].selector = @selector(createComponentsWithNSString:);
  methods[4].selector = @selector(initReaderWithNSString:withJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "STOPWORDS_COMMENT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisUtilCharArraySet;", "createComponents", "LNSString;", "initReader", "LNSString;LJavaIoReader;", &OrgApacheLuceneAnalysisFaPersianAnalyzer_DEFAULT_STOPWORD_FILE, &OrgApacheLuceneAnalysisFaPersianAnalyzer_STOPWORDS_COMMENT, "LOrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFaPersianAnalyzer = { "PersianAnalyzer", "org.apache.lucene.analysis.fa", ptrTable, methods, fields, 7, 0x11, 5, 2, -1, 7, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisFaPersianAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisFaPersianAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisFaPersianAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET);
}

void OrgApacheLuceneAnalysisFaPersianAnalyzer_init(OrgApacheLuceneAnalysisFaPersianAnalyzer *self) {
  OrgApacheLuceneAnalysisFaPersianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET));
}

OrgApacheLuceneAnalysisFaPersianAnalyzer *new_OrgApacheLuceneAnalysisFaPersianAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFaPersianAnalyzer, init)
}

OrgApacheLuceneAnalysisFaPersianAnalyzer *create_OrgApacheLuceneAnalysisFaPersianAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFaPersianAnalyzer, init)
}

void OrgApacheLuceneAnalysisFaPersianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisFaPersianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
}

OrgApacheLuceneAnalysisFaPersianAnalyzer *new_OrgApacheLuceneAnalysisFaPersianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFaPersianAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

OrgApacheLuceneAnalysisFaPersianAnalyzer *create_OrgApacheLuceneAnalysisFaPersianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFaPersianAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFaPersianAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_init(self);
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
  static const void *ptrTable[] = { &OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, "LOrgApacheLuceneAnalysisFaPersianAnalyzer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder = { "DefaultSetHolder", "org.apache.lucene.analysis.fa", ptrTable, methods, fields, 7, 0xa, 1, 1, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(false, OrgApacheLuceneAnalysisFaPersianAnalyzer_class_(), OrgApacheLuceneAnalysisFaPersianAnalyzer_DEFAULT_STOPWORD_FILE, OrgApacheLuceneAnalysisFaPersianAnalyzer_STOPWORDS_COMMENT));
      }
      @catch (JavaIoIOException *ex) {
        @throw create_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set");
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder)
  }
}

@end

void OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder, init)
}

OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFaPersianAnalyzer_DefaultSetHolder)
