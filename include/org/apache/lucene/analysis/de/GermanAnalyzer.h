//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisDeGermanAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisDeGermanAnalyzer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisDeGermanAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisDeGermanAnalyzer))
#define OrgApacheLuceneAnalysisDeGermanAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief <code>Analyzer</code> for German language.
 <p>
  Supports an external list of stopwords (words that
  will not be indexed at all) and an external list of exclusions (word that will
  not be stemmed, but indexed).
  A default set of stopwords is used unless an alternative list is specified, but the
  exclusion list is empty by default. 
 </p>
   
 <p><b>NOTE</b>: This class uses the same <code>org.apache.lucene.util.Version</code>
  dependent settings as <code>StandardAnalyzer</code>.</p>
 */
@interface OrgApacheLuceneAnalysisDeGermanAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase
@property (readonly, copy, class) NSString *DEFAULT_STOPWORD_FILE NS_SWIFT_NAME(DEFAULT_STOPWORD_FILE);

#pragma mark Public

/*!
 @brief Builds an analyzer with the default stop words: 
 <code>getDefaultStopSet()</code>.
 */
- (instancetype __nonnull)init;

/*!
 @brief Builds an analyzer with the given stop words
 @param stopwords a stopword set
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

/*!
 @brief Builds an analyzer with the given stop words
 @param stopwords a stopword set
 @param stemExclusionSet a stemming exclusion set
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                              withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet;

/*!
 @brief Returns a set of default German-stopwords
 @return a set of default German-stopwords
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
          provided, <code>GermanNormalizationFilter</code> and <code>GermanLightStemFilter</code>
 */
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisDeGermanAnalyzer)

/*!
 @brief File containing default German stopwords.
 */
inline NSString *OrgApacheLuceneAnalysisDeGermanAnalyzer_get_DEFAULT_STOPWORD_FILE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisDeGermanAnalyzer_DEFAULT_STOPWORD_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisDeGermanAnalyzer, DEFAULT_STOPWORD_FILE, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisDeGermanAnalyzer_getDefaultStopSet(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisDeGermanAnalyzer_init(OrgApacheLuceneAnalysisDeGermanAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanAnalyzer *new_OrgApacheLuceneAnalysisDeGermanAnalyzer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanAnalyzer *create_OrgApacheLuceneAnalysisDeGermanAnalyzer_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisDeGermanAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanAnalyzer *new_OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanAnalyzer *create_OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisDeGermanAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanAnalyzer *new_OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanAnalyzer *create_OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisDeGermanAnalyzer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanAnalyzer")
