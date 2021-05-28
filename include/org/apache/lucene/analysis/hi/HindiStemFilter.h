//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hi/HindiStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisHiHindiStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisHiHindiStemFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisHiHindiStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisHiHindiStemFilter))
#define OrgApacheLuceneAnalysisHiHindiStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>HindiStemmer</code> to stem Hindi words.
 */
@interface OrgApacheLuceneAnalysisHiHindiStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisHiHindiStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHiHindiStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisHiHindiStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHiHindiStemFilter *new_OrgApacheLuceneAnalysisHiHindiStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHiHindiStemFilter *create_OrgApacheLuceneAnalysisHiHindiStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHiHindiStemFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisHiHindiStemFilter")
