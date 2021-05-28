//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/collation/CollationKeyAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneCollationCollationKeyAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneCollationCollationKeyAnalyzer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCollationCollationKeyAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer || defined(INCLUDE_OrgApacheLuceneCollationCollationKeyAnalyzer))
#define OrgApacheLuceneCollationCollationKeyAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisAnalyzer 1
#define INCLUDE_OrgApacheLuceneAnalysisAnalyzer 1
#include "org/apache/lucene/analysis/Analyzer.h"

@class JavaTextCollator;
@class OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;

/*!
 @brief <p>
    Configures <code>KeywordTokenizer</code> with <code>CollationAttributeFactory</code>.
 </p>
  <p>
    Converts the token into its <code>java.text.CollationKey</code>, and then
    encodes the CollationKey directly to allow 
    it to be stored as an index term. 
 </p>
  <p>
    <strong>WARNING:</strong> Make sure you use exactly the same Collator at
    index and query time -- CollationKeys are only comparable when produced by
    the same Collator.  Since <code>java.text.RuleBasedCollator</code>s are not
    independently versioned, it is unsafe to search against stored
    CollationKeys unless the following are exactly the same (best practice is
    to store this information with the index and check that they remain the
    same at query time): 
 </p>
  <ol>
    <li>JVM vendor</li>
    <li>JVM version, including patch version</li>
    <li>
      The language (and country and variant, if specified) of the Locale
      used when constructing the collator via     
 <code>Collator.getInstance(java.util.Locale)</code>.
    </li>
    <li>
      The collation strength used - see <code>Collator.setStrength(int)</code>
    </li>
  </ol>  
 <p>
    The <code>ICUCollationKeyAnalyzer</code> in the analysis-icu package 
    uses ICU4J's Collator, which makes
    its version available, thus allowing collation to be versioned
    independently from the JVM.  ICUCollationKeyAnalyzer is also significantly
    faster and generates significantly shorter keys than CollationKeyAnalyzer.
    See <a href="http://site.icu-project.org/charts/collation-icu4j-sun">
 http://site.icu-project.org/charts/collation-icu4j-sun</a> for key
    generation timing and key length comparisons between ICU4J and
    java.text.Collator over several languages. 
 </p>
  <p>
    CollationKeys generated by java.text.Collators are not compatible
    with those those generated by ICU Collators.  Specifically, if you use 
    CollationKeyAnalyzer to generate index terms, do not use
    ICUCollationKeyAnalyzer on the query side, or vice versa. 
 </p>
 */
@interface OrgApacheLuceneCollationCollationKeyAnalyzer : OrgApacheLuceneAnalysisAnalyzer

#pragma mark Public

/*!
 @brief Create a new CollationKeyAnalyzer, using the specified collator.
 @param collator CollationKey generator
 */
- (instancetype __nonnull)initWithJavaTextCollator:(JavaTextCollator *)collator;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy:(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCollationCollationKeyAnalyzer)

FOUNDATION_EXPORT void OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(OrgApacheLuceneCollationCollationKeyAnalyzer *self, JavaTextCollator *collator);

FOUNDATION_EXPORT OrgApacheLuceneCollationCollationKeyAnalyzer *new_OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(JavaTextCollator *collator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCollationCollationKeyAnalyzer *create_OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(JavaTextCollator *collator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCollationCollationKeyAnalyzer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer")
