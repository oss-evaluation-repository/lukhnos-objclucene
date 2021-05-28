//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/EnglishPossessiveFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisEnEnglishPossessiveFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter || defined(INCLUDE_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter))
#define OrgApacheLuceneAnalysisEnEnglishPossessiveFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief TokenFilter that removes possessives (trailing 's) from words.
 */
@interface OrgApacheLuceneAnalysisEnEnglishPossessiveFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEnEnglishPossessiveFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnEnglishPossessiveFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisEnEnglishPossessiveFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishPossessiveFilter *new_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishPossessiveFilter *create_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnEnglishPossessiveFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishPossessiveFilter")
