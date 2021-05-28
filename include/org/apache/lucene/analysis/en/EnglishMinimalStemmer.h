//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/EnglishMinimalStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisEnEnglishMinimalStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer))
#define OrgApacheLuceneAnalysisEnEnglishMinimalStemmer_

@class IOSCharArray;

/*!
 @brief Minimal plural stemmer for English.
 <p>
  This stemmer implements the "S-Stemmer" from 
 <i>How Effective Is Suffixing?</i>
  Donna Harman.
 */
@interface OrgApacheLuceneAnalysisEnEnglishMinimalStemmer : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEnEnglishMinimalStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnEnglishMinimalStemmer_init(OrgApacheLuceneAnalysisEnEnglishMinimalStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishMinimalStemmer *new_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishMinimalStemmer *create_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnEnglishMinimalStemmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnEnglishMinimalStemmer")
