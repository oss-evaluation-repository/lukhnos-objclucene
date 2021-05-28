//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKBigramFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKBigramFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCjkCJKBigramFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKBigramFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKBigramFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCjkCJKBigramFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCjkCJKBigramFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKBigramFilter || defined(INCLUDE_OrgApacheLuceneAnalysisCjkCJKBigramFilter))
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class IOSIntArray;
@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Forms bigrams of CJK terms that are generated from StandardTokenizer
  or ICUTokenizer.
 <p>
  CJK types are set by these tokenizers, but you can also use  
 <code>CJKBigramFilter(TokenStream, int)</code> to explicitly control which
  of the CJK scripts are turned into bigrams. 
 <p>
  By default, when a CJK character has no adjacent characters to form
  a bigram, it is output in unigram form. If you want to always output
  both unigrams and bigrams, set the <code>outputUnigrams</code>
  flag in <code>CJKBigramFilter.CJKBigramFilter(TokenStream, int, boolean)</code>.
  This can be used for a combined unigram+bigram approach. 
 <p>
  In all cases, all non-CJK input is passed thru unmodified.
 */
@interface OrgApacheLuceneAnalysisCjkCJKBigramFilter : OrgApacheLuceneAnalysisTokenFilter {
 @public
  IOSIntArray *buffer_;
  IOSIntArray *startOffset_;
  IOSIntArray *endOffset_;
  jint bufferLen_;
  jint index_;
  jint lastEndOffset_;
}
@property (readonly, class) jint HAN NS_SWIFT_NAME(HAN);
@property (readonly, class) jint HIRAGANA NS_SWIFT_NAME(HIRAGANA);
@property (readonly, class) jint KATAKANA NS_SWIFT_NAME(KATAKANA);
@property (readonly, class) jint HANGUL NS_SWIFT_NAME(HANGUL);
@property (readonly, copy, class) NSString *DOUBLE_TYPE NS_SWIFT_NAME(DOUBLE_TYPE);
@property (readonly, copy, class) NSString *SINGLE_TYPE NS_SWIFT_NAME(SINGLE_TYPE);

#pragma mark Public

/*!
 @brief Calls <code>CJKBigramFilter(in, HAN | HIRAGANA | KATAKANA | HANGUL)</code>
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

/*!
 @brief Calls <code>CJKBigramFilter(in, flags, false)</code>
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                             withInt:(jint)flags;

/*!
 @brief Create a new CJKBigramFilter, specifying which writing systems should be bigrammed,
  and whether or not unigrams should also be output.
 @param flags OR'ed set from <code>CJKBigramFilter.HAN</code> , <code>CJKBigramFilter.HIRAGANA</code> , 
          <code>CJKBigramFilter.KATAKANA</code> , <code>CJKBigramFilter.HANGUL</code>
 @param outputUnigrams true if unigrams for the selected writing systems should also be output.         when this is false, this is only done when there are no adjacent characters to form
          a bigram.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                             withInt:(jint)flags
                                                         withBoolean:(jboolean)outputUnigrams;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCjkCJKBigramFilter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, buffer_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, startOffset_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCjkCJKBigramFilter, endOffset_, IOSIntArray *)

/*!
 @brief bigram flag for Han Ideographs
 */
inline jint OrgApacheLuceneAnalysisCjkCJKBigramFilter_get_HAN(void);
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_HAN 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCjkCJKBigramFilter, HAN, jint)

/*!
 @brief bigram flag for Hiragana
 */
inline jint OrgApacheLuceneAnalysisCjkCJKBigramFilter_get_HIRAGANA(void);
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_HIRAGANA 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCjkCJKBigramFilter, HIRAGANA, jint)

/*!
 @brief bigram flag for Katakana
 */
inline jint OrgApacheLuceneAnalysisCjkCJKBigramFilter_get_KATAKANA(void);
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_KATAKANA 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCjkCJKBigramFilter, KATAKANA, jint)

/*!
 @brief bigram flag for Hangul
 */
inline jint OrgApacheLuceneAnalysisCjkCJKBigramFilter_get_HANGUL(void);
#define OrgApacheLuceneAnalysisCjkCJKBigramFilter_HANGUL 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCjkCJKBigramFilter, HANGUL, jint)

/*!
 @brief when we emit a bigram, it's then marked as this type
 */
inline NSString *OrgApacheLuceneAnalysisCjkCJKBigramFilter_get_DOUBLE_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisCjkCJKBigramFilter_DOUBLE_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisCjkCJKBigramFilter, DOUBLE_TYPE, NSString *)

/*!
 @brief when we emit a unigram, it's then marked as this type
 */
inline NSString *OrgApacheLuceneAnalysisCjkCJKBigramFilter_get_SINGLE_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisCjkCJKBigramFilter_SINGLE_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisCjkCJKBigramFilter, SINGLE_TYPE, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCjkCJKBigramFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *new_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *create_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisCjkCJKBigramFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint flags);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *new_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint flags) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *create_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint flags);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisCjkCJKBigramFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint flags, jboolean outputUnigrams);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *new_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint flags, jboolean outputUnigrams) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKBigramFilter *create_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint flags, jboolean outputUnigrams);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCjkCJKBigramFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKBigramFilter")
