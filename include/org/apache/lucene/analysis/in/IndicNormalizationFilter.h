//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/in/IndicNormalizationFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisInIndicNormalizationFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisInIndicNormalizationFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisInIndicNormalizationFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisInIndicNormalizationFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisInIndicNormalizationFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisInIndicNormalizationFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisInIndicNormalizationFilter || defined(INCLUDE_OrgApacheLuceneAnalysisInIndicNormalizationFilter))
#define OrgApacheLuceneAnalysisInIndicNormalizationFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>IndicNormalizer</code> to normalize text
  in Indian Languages.
 */
@interface OrgApacheLuceneAnalysisInIndicNormalizationFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisInIndicNormalizationFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisInIndicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisInIndicNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisInIndicNormalizationFilter *new_OrgApacheLuceneAnalysisInIndicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisInIndicNormalizationFilter *create_OrgApacheLuceneAnalysisInIndicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisInIndicNormalizationFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisInIndicNormalizationFilter")
