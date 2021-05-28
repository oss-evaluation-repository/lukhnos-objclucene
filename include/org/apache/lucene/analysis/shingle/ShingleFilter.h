//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/shingle/ShingleFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisShingleShingleFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisShingleShingleFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisShingleShingleFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilter || defined(INCLUDE_OrgApacheLuceneAnalysisShingleShingleFilter))
#define OrgApacheLuceneAnalysisShingleShingleFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief <p>A ShingleFilter constructs shingles (token n-grams) from a token stream.
 In other words, it creates combinations of tokens as a single token. 
 <p>For example, the sentence "please divide this sentence into shingles"
  might be tokenized into shingles "please divide", "divide this",
  "this sentence", "sentence into", and "into shingles". 
 <p>This filter handles position increments &gt; 1 by inserting filler tokens
  (tokens with termtext "_"). It does not handle a position increment of 0.
 */
@interface OrgApacheLuceneAnalysisShingleShingleFilter : OrgApacheLuceneAnalysisTokenFilter {
 @public
  /*!
   @brief true if no shingles have been output yet (for outputUnigramsIfNoShingles).
   */
  jboolean noShingleOutput_;
}
@property (readonly, copy, class) NSString *DEFAULT_FILLER_TOKEN NS_SWIFT_NAME(DEFAULT_FILLER_TOKEN);
@property (readonly, class) jint DEFAULT_MAX_SHINGLE_SIZE NS_SWIFT_NAME(DEFAULT_MAX_SHINGLE_SIZE);
@property (readonly, class) jint DEFAULT_MIN_SHINGLE_SIZE NS_SWIFT_NAME(DEFAULT_MIN_SHINGLE_SIZE);
@property (readonly, copy, class) NSString *DEFAULT_TOKEN_TYPE NS_SWIFT_NAME(DEFAULT_TOKEN_TYPE);
@property (readonly, copy, class) NSString *DEFAULT_TOKEN_SEPARATOR NS_SWIFT_NAME(DEFAULT_TOKEN_SEPARATOR);

#pragma mark Public

/*!
 @brief Construct a ShingleFilter with default shingle size: 2.
 @param input input stream
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

/*!
 @brief Constructs a ShingleFilter with the specified shingle size from the 
 <code>TokenStream</code> <code>input</code>
 @param input input stream
 @param maxShingleSize maximum shingle size produced by the filter.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                             withInt:(jint)maxShingleSize;

/*!
 @brief Constructs a ShingleFilter with the specified shingle size from the 
 <code>TokenStream</code> <code>input</code>
 @param input input stream
 @param minShingleSize minimum shingle size produced by the filter.
 @param maxShingleSize maximum shingle size produced by the filter.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                             withInt:(jint)minShingleSize
                                                             withInt:(jint)maxShingleSize;

/*!
 @brief Construct a ShingleFilter with the specified token type for shingle tokens
  and the default shingle size: 2
 @param input input stream
 @param tokenType token type for shingle tokens
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                        withNSString:(NSString *)tokenType;

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

/*!
 @brief Sets the string to insert for each position at which there is no token
  (i.e., when position increment is greater than one).
 @param fillerToken string to insert at each position where there is no token
 */
- (void)setFillerTokenWithNSString:(NSString *)fillerToken;

/*!
 @brief Set the max shingle size (default: 2)
 @param maxShingleSize max size of output shingles
 */
- (void)setMaxShingleSizeWithInt:(jint)maxShingleSize;

/*!
 @brief <p>Set the min shingle size (default: 2).
 <p>This method requires that the passed in minShingleSize is not greater
  than maxShingleSize, so make sure that maxShingleSize is set before
  calling this method. 
 <p>The unigram output option is independent of the min shingle size.
 @param minShingleSize min size of output shingles
 */
- (void)setMinShingleSizeWithInt:(jint)minShingleSize;

/*!
 @brief Shall the output stream contain the input tokens (unigrams) as well as
  shingles?
 (default: true.)
 @param outputUnigrams Whether or not the output stream shall contain  the input tokens (unigrams)
 */
- (void)setOutputUnigramsWithBoolean:(jboolean)outputUnigrams;

/*!
 @brief <p>Shall we override the behavior of outputUnigrams==false for those
  times when no shingles are available (because there are fewer than
  minShingleSize tokens in the input stream)?
 (default: false.) 
 <p>Note that if outputUnigrams==true, then unigrams are always output,
  regardless of whether any shingles are available.
 @param outputUnigramsIfNoShingles Whether or not to output a single  unigram when no shingles are available.
 */
- (void)setOutputUnigramsIfNoShinglesWithBoolean:(jboolean)outputUnigramsIfNoShingles;

/*!
 @brief Sets the string to use when joining adjacent tokens to form a shingle
 @param tokenSeparator used to separate input stream tokens in output shingles
 */
- (void)setTokenSeparatorWithNSString:(NSString *)tokenSeparator;

/*!
 @brief Set the type of the shingle tokens produced by this filter.
 (default: "shingle")
 @param tokenType token tokenType
 */
- (void)setTokenTypeWithNSString:(NSString *)tokenType;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisShingleShingleFilter)

/*!
 @brief filler token for when positionIncrement is more than 1
 */
inline NSString *OrgApacheLuceneAnalysisShingleShingleFilter_get_DEFAULT_FILLER_TOKEN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_FILLER_TOKEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisShingleShingleFilter, DEFAULT_FILLER_TOKEN, NSString *)

/*!
 @brief default maximum shingle size is 2.
 */
inline jint OrgApacheLuceneAnalysisShingleShingleFilter_get_DEFAULT_MAX_SHINGLE_SIZE(void);
#define OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MAX_SHINGLE_SIZE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisShingleShingleFilter, DEFAULT_MAX_SHINGLE_SIZE, jint)

/*!
 @brief default minimum shingle size is 2.
 */
inline jint OrgApacheLuceneAnalysisShingleShingleFilter_get_DEFAULT_MIN_SHINGLE_SIZE(void);
#define OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MIN_SHINGLE_SIZE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisShingleShingleFilter, DEFAULT_MIN_SHINGLE_SIZE, jint)

/*!
 @brief default token type attribute value is "shingle"
 */
inline NSString *OrgApacheLuceneAnalysisShingleShingleFilter_get_DEFAULT_TOKEN_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisShingleShingleFilter, DEFAULT_TOKEN_TYPE, NSString *)

/*!
 @brief The default string to use when joining adjacent tokens to form a shingle
 */
inline NSString *OrgApacheLuceneAnalysisShingleShingleFilter_get_DEFAULT_TOKEN_SEPARATOR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_SEPARATOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisShingleShingleFilter, DEFAULT_TOKEN_SEPARATOR, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint minShingleSize, jint maxShingleSize);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilter *new_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minShingleSize, jint maxShingleSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilter *create_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minShingleSize, jint maxShingleSize);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint maxShingleSize);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilter *new_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint maxShingleSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilter *create_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint maxShingleSize);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilter *new_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilter *create_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withNSString_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisTokenStream *input, NSString *tokenType);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilter *new_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withNSString_(OrgApacheLuceneAnalysisTokenStream *input, NSString *tokenType) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilter *create_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withNSString_(OrgApacheLuceneAnalysisTokenStream *input, NSString *tokenType);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisShingleShingleFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilter")
