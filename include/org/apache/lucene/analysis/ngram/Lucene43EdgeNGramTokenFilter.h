//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter))
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Tokenizes the given token into n-grams of given size(s), using pre-4.4 behavior.
 */
@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter : OrgApacheLuceneAnalysisTokenFilter
@property (readonly, class) jint DEFAULT_MAX_GRAM_SIZE NS_SWIFT_NAME(DEFAULT_MAX_GRAM_SIZE);
@property (readonly, class) jint DEFAULT_MIN_GRAM_SIZE NS_SWIFT_NAME(DEFAULT_MIN_GRAM_SIZE);

#pragma mark Public

/*!
 @brief Creates EdgeNGramTokenFilter that can generate n-grams in the sizes of the given range
 @param input<code>org.apache.lucene.analysis.TokenStream</code>  holding the input to be tokenized
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                             withInt:(jint)minGram
                                                             withInt:(jint)maxGram;

- (jboolean)incrementToken;

- (void)reset;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter)

inline jint OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_get_DEFAULT_MAX_GRAM_SIZE(void);
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_DEFAULT_MAX_GRAM_SIZE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter, DEFAULT_MAX_GRAM_SIZE, jint)

inline jint OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_get_DEFAULT_MIN_GRAM_SIZE(void);
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_DEFAULT_MIN_GRAM_SIZE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter, DEFAULT_MIN_GRAM_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter")
