//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanLightStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanLightStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisDeGermanLightStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanLightStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanLightStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisDeGermanLightStemmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisDeGermanLightStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanLightStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisDeGermanLightStemmer))
#define OrgApacheLuceneAnalysisDeGermanLightStemmer_

@class IOSCharArray;

/*!
 @brief Light Stemmer for German.
 <p>
  This stemmer implements the "UniNE" algorithm in: 
 <i>Light Stemming Approaches for the French, Portuguese, German and Hungarian Languages</i>
  Jacques Savoy
 */
@interface OrgApacheLuceneAnalysisDeGermanLightStemmer : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisDeGermanLightStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisDeGermanLightStemmer_init(OrgApacheLuceneAnalysisDeGermanLightStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanLightStemmer *new_OrgApacheLuceneAnalysisDeGermanLightStemmer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanLightStemmer *create_OrgApacheLuceneAnalysisDeGermanLightStemmer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisDeGermanLightStemmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanLightStemmer")
