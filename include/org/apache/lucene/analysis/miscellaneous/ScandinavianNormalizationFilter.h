//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/ScandinavianNormalizationFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter))
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief This filter normalize use of the interchangeable Scandinavian characters æÆäÄöÖøØ
  and folded variants (aa, ao, ae, oe and oo) by transforming them to åÅæÆøØ.
 <p>
  It's a semantically less destructive solution than <code>ScandinavianFoldingFilter</code>,
  most useful when a person with a Norwegian or Danish keyboard queries a Swedish index
  and vice versa. This filter does <b>not</b>  the common Swedish folds of å and ä to a nor ö to o. 
 <p>
  blåbærsyltetøj == blåbärsyltetöj == blaabaarsyltetoej but not blabarsyltetoj
  räksmörgås == ræksmørgås == ræksmörgaos == raeksmoergaas but not raksmorgas
 - seealso: ScandinavianFoldingFilter
 */
@interface OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *new_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *create_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter")
