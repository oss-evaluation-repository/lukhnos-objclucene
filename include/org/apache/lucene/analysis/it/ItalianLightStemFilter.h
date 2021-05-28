//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/it/ItalianLightStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisItItalianLightStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisItItalianLightStemFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisItItalianLightStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisItItalianLightStemFilter))
#define OrgApacheLuceneAnalysisItItalianLightStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>ItalianLightStemmer</code> to stem Italian
  words.
 <p>
  To prevent terms from being stemmed use an instance of 
 <code>SetKeywordMarkerFilter</code> or a custom <code>TokenFilter</code> that sets
  the <code>KeywordAttribute</code> before this <code>TokenStream</code>.
  </p>
 */
@interface OrgApacheLuceneAnalysisItItalianLightStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisItItalianLightStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisItItalianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisItItalianLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianLightStemFilter *new_OrgApacheLuceneAnalysisItItalianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisItItalianLightStemFilter *create_OrgApacheLuceneAnalysisItItalianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisItItalianLightStemFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisItItalianLightStemFilter")
