//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/PrefixAndSuffixAwareTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter))
#define OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenStream 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenStream 1
#include "org/apache/lucene/analysis/TokenStream.h"

@class OrgApacheLuceneAnalysisToken;
@class OrgApacheLuceneUtilAttributeFactory;
@class OrgApacheLuceneUtilAttributeSource;

/*!
 @brief Links two <code>PrefixAwareTokenFilter</code>.
 <p>
  <b>NOTE:</b> This filter might not behave correctly if used with custom Attributes, i.e. Attributes other than
  the ones located in org.apache.lucene.analysis.tokenattributes.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter : OrgApacheLuceneAnalysisTokenStream

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)prefix
                              withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                              withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)suffix;

- (void)close;

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

- (OrgApacheLuceneAnalysisToken *)updateInputTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)inputToken
                                                  withOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)lastPrefixToken;

- (OrgApacheLuceneAnalysisToken *)updateSuffixTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)suffixToken
                                                   withOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)lastInputToken;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *prefix, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisTokenStream *suffix);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter *new_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *prefix, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisTokenStream *suffix) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter *create_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *prefix, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisTokenStream *suffix);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPrefixAndSuffixAwareTokenFilter")
