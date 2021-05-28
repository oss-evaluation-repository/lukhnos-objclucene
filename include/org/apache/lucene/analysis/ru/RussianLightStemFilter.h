//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ru/RussianLightStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisRuRussianLightStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisRuRussianLightStemFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisRuRussianLightStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisRuRussianLightStemFilter))
#define OrgApacheLuceneAnalysisRuRussianLightStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>RussianLightStemmer</code> to stem Russian
  words.
 <p>
  To prevent terms from being stemmed use an instance of 
 <code>SetKeywordMarkerFilter</code> or a custom <code>TokenFilter</code> that sets
  the <code>KeywordAttribute</code> before this <code>TokenStream</code>.
  </p>
 */
@interface OrgApacheLuceneAnalysisRuRussianLightStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisRuRussianLightStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisRuRussianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisRuRussianLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianLightStemFilter *new_OrgApacheLuceneAnalysisRuRussianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianLightStemFilter *create_OrgApacheLuceneAnalysisRuRussianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisRuRussianLightStemFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilter")
