//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/KeywordTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreKeywordTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreKeywordTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreKeywordTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreKeywordTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreKeywordTokenizer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCoreKeywordTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreKeywordTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisCoreKeywordTokenizer))
#define OrgApacheLuceneAnalysisCoreKeywordTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenizer 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class OrgApacheLuceneUtilAttributeFactory;

/*!
 @brief Emits the entire input as a single token.
 */
@interface OrgApacheLuceneAnalysisCoreKeywordTokenizer : OrgApacheLuceneAnalysisTokenizer
@property (readonly, class) jint DEFAULT_BUFFER_SIZE NS_SWIFT_NAME(DEFAULT_BUFFER_SIZE);

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                              withInt:(jint)bufferSize;

- (instancetype __nonnull)initWithInt:(jint)bufferSize;

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreKeywordTokenizer)

/*!
 @brief Default read buffer size
 */
inline jint OrgApacheLuceneAnalysisCoreKeywordTokenizer_get_DEFAULT_BUFFER_SIZE(void);
#define OrgApacheLuceneAnalysisCoreKeywordTokenizer_DEFAULT_BUFFER_SIZE 256
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCoreKeywordTokenizer, DEFAULT_BUFFER_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreKeywordTokenizer_init(OrgApacheLuceneAnalysisCoreKeywordTokenizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreKeywordTokenizer *new_OrgApacheLuceneAnalysisCoreKeywordTokenizer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreKeywordTokenizer *create_OrgApacheLuceneAnalysisCoreKeywordTokenizer_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreKeywordTokenizer_initWithInt_(OrgApacheLuceneAnalysisCoreKeywordTokenizer *self, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreKeywordTokenizer *new_OrgApacheLuceneAnalysisCoreKeywordTokenizer_initWithInt_(jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreKeywordTokenizer *create_OrgApacheLuceneAnalysisCoreKeywordTokenizer_initWithInt_(jint bufferSize);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_(OrgApacheLuceneAnalysisCoreKeywordTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreKeywordTokenizer *new_OrgApacheLuceneAnalysisCoreKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreKeywordTokenizer *create_OrgApacheLuceneAnalysisCoreKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint bufferSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreKeywordTokenizer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreKeywordTokenizer")
