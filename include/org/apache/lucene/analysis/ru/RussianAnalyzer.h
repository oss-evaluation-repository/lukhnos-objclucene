//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ru/RussianAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisRuRussianAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisRuRussianAnalyzer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisRuRussianAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisRuRussianAnalyzer))
#define OrgApacheLuceneAnalysisRuRussianAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief <code>Analyzer</code> for Russian language.
 <p>
  Supports an external list of stopwords (words that
  will not be indexed at all).
  A default set of stopwords is used unless an alternative list is specified.
 */
@interface OrgApacheLuceneAnalysisRuRussianAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase
@property (readonly, copy, class) NSString *DEFAULT_STOPWORD_FILE NS_SWIFT_NAME(DEFAULT_STOPWORD_FILE);

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Builds an analyzer with the given stop words
 @param stopwords a stopword set
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

/*!
 @brief Builds an analyzer with the given stop words
 @param stopwords a stopword set
 @param stemExclusionSet a set of words not to be stemmed
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                              withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet;

/*!
 @brief Returns an unmodifiable instance of the default stop-words set.
 @return an unmodifiable instance of the default stop-words set.
 */
+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

/*!
 @brief Creates
  <code>org.apache.lucene.analysis.Analyzer.TokenStreamComponents</code>
  used to tokenize all the text in the provided <code>Reader</code>.
 @return <code>org.apache.lucene.analysis.Analyzer.TokenStreamComponents</code>
          built from a <code>StandardTokenizer</code> filtered with
          <code>StandardFilter</code>, <code>LowerCaseFilter</code>, <code>StopFilter</code>
          , <code>SetKeywordMarkerFilter</code> if a stem exclusion set is
          provided, and <code>SnowballFilter</code>
 */
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisRuRussianAnalyzer)

/*!
 @brief File containing default Russian stopwords.
 */
inline NSString *OrgApacheLuceneAnalysisRuRussianAnalyzer_get_DEFAULT_STOPWORD_FILE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisRuRussianAnalyzer_DEFAULT_STOPWORD_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisRuRussianAnalyzer, DEFAULT_STOPWORD_FILE, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisRuRussianAnalyzer_getDefaultStopSet(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisRuRussianAnalyzer_init(OrgApacheLuceneAnalysisRuRussianAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianAnalyzer *new_OrgApacheLuceneAnalysisRuRussianAnalyzer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianAnalyzer *create_OrgApacheLuceneAnalysisRuRussianAnalyzer_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisRuRussianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisRuRussianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianAnalyzer *new_OrgApacheLuceneAnalysisRuRussianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianAnalyzer *create_OrgApacheLuceneAnalysisRuRussianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisRuRussianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisRuRussianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianAnalyzer *new_OrgApacheLuceneAnalysisRuRussianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianAnalyzer *create_OrgApacheLuceneAnalysisRuRussianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisRuRussianAnalyzer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianAnalyzer")
