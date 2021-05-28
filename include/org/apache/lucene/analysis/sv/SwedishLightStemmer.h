//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sv/SwedishLightStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisSvSwedishLightStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisSvSwedishLightStemmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisSvSwedishLightStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisSvSwedishLightStemmer))
#define OrgApacheLuceneAnalysisSvSwedishLightStemmer_

@class IOSCharArray;

/*!
 @brief Light Stemmer for Swedish.
 <p>
  This stemmer implements the algorithm described in: 
 <i>Report on CLEF-2003 Monolingual Tracks</i>
  Jacques Savoy
 */
@interface OrgApacheLuceneAnalysisSvSwedishLightStemmer : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSvSwedishLightStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSvSwedishLightStemmer_init(OrgApacheLuceneAnalysisSvSwedishLightStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSvSwedishLightStemmer *new_OrgApacheLuceneAnalysisSvSwedishLightStemmer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSvSwedishLightStemmer *create_OrgApacheLuceneAnalysisSvSwedishLightStemmer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSvSwedishLightStemmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSvSwedishLightStemmer")
