//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/el/GreekStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisElGreekStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisElGreekStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisElGreekStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisElGreekStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisElGreekStemmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisElGreekStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisElGreekStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisElGreekStemmer))
#define OrgApacheLuceneAnalysisElGreekStemmer_

@class IOSCharArray;

/*!
 @brief A stemmer for Greek words, according to: <i>Development of a Stemmer for the
  Greek Language.
 </i> Georgios Ntais
 <p>
  NOTE: Input is expected to be casefolded for Greek (including folding of final
  sigma to sigma), and with diacritics removed. This can be achieved with 
  either <code>GreekLowerCaseFilter</code> or ICUFoldingFilter.
 */
@interface OrgApacheLuceneAnalysisElGreekStemmer : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Stems a word contained in a leading portion of a char[] array.
 The word is passed through a number of rules that modify its length.
 @param s A char[] array that contains the word to be stemmed.
 @param len The length of the char[] array.
 @return The new length of the stemmed word.
 */
- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisElGreekStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisElGreekStemmer_init(OrgApacheLuceneAnalysisElGreekStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisElGreekStemmer *new_OrgApacheLuceneAnalysisElGreekStemmer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisElGreekStemmer *create_OrgApacheLuceneAnalysisElGreekStemmer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisElGreekStemmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisElGreekStemmer")
