//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/DefaultSimilarity.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity))
#define OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_

#define RESTRICT_OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity 1
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity 1
#include "org/apache/lucene/search/similarities/TFIDFSimilarity.h"

@class OrgApacheLuceneIndexFieldInvertState;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Expert: Default scoring implementation which <code>encodes</code>
  norm values as a single byte before being stored.At search time,
  the norm byte value is read from the index 
 <code>directory</code> and 
 <code>decoded</code> back to a float <i>norm</i> value.
 This encoding/decoding, while reducing index size, comes with the price of
  precision loss - it is not guaranteed that <i>decode(encode(x)) = x</i>. For
  instance, <i>decode(encode(0.89)) = 0.875</i>.
  <p>
  Compression of norm values to a single byte saves memory at search time,
  because once a field is referenced at search time, its norms - for all
  documents - are maintained in memory. 
 <p>
  The rationale supporting such lossy compression of norm values is that given
  the difficulty (and inaccuracy) of users to express their true information
  need by a query, only big differences matter. <br>
  &nbsp;<br>
  Last, note that search time is too late to modify this <i>norm</i> part of
  scoring, e.g. by using a different <code>Similarity</code> for search.
 */
@interface OrgApacheLuceneSearchSimilaritiesDefaultSimilarity : OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity {
 @public
  /*!
   @brief True if overlap tokens (tokens with a position of increment of zero) are
  discounted from the document's length.
   */
  jboolean discountOverlaps_;
}

#pragma mark Public

/*!
 @brief Sole constructor: parameter-free
 */
- (instancetype __nonnull)init;

/*!
 @brief Implemented as <code>overlap / maxOverlap</code>.
 */
- (jfloat)coordWithInt:(jint)overlap
               withInt:(jint)maxOverlap;

/*!
 @brief Decodes the norm value, assuming it is a single byte.
 - seealso: #encodeNormValue(float)
 */
- (jfloat)decodeNormValueWithLong:(jlong)norm;

/*!
 @brief Encodes a normalization factor for storage in an index.
 <p>
  The encoding uses a three-bit mantissa, a five-bit exponent, and the
  zero-exponent point at 15, thus representing values from around 7x10^9 to
  2x10^-9 with about one significant decimal digit of accuracy. Zero is also
  represented. Negative numbers are rounded up to zero. Values too large to
  represent are rounded down to the largest representable value. Positive
  values too small to represent are rounded up to the smallest positive
  representable value.
 - seealso: org.apache.lucene.document.Field#setBoost(float)
 - seealso: org.apache.lucene.util.SmallFloat
 */
- (jlong)encodeNormValueWithFloat:(jfloat)f;

/*!
 @brief Returns true if overlap tokens are discounted from the document's length.
 - seealso: #setDiscountOverlaps
 */
- (jboolean)getDiscountOverlaps;

/*!
 @brief Implemented as <code>log(numDocs/(docFreq+1)) + 1</code>.
 */
- (jfloat)idfWithLong:(jlong)docFreq
             withLong:(jlong)numDocs;

/*!
 @brief Implemented as
   <code>state.getBoost()*lengthNorm(numTerms)</code>, where
   <code>numTerms</code> is <code>FieldInvertState.getLength()</code> if <code>setDiscountOverlaps</code>
  is false, else it's <code>FieldInvertState.getLength()</code>
  - <code>FieldInvertState.getNumOverlap()</code>
 .
 */
- (jfloat)lengthNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state;

/*!
 @brief Implemented as <code>1/sqrt(sumOfSquaredWeights)</code>.
 */
- (jfloat)queryNormWithFloat:(jfloat)sumOfSquaredWeights;

/*!
 @brief The default implementation returns <code>1</code>
 */
- (jfloat)scorePayloadWithInt:(jint)doc
                      withInt:(jint)start
                      withInt:(jint)end
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

/*!
 @brief Determines whether overlap tokens (Tokens with
   0 position increment) are ignored when computing
   norm.By default this is true, meaning overlap
   tokens do not count when computing norms.
 - seealso: #computeNorm
 */
- (void)setDiscountOverlapsWithBoolean:(jboolean)v;

/*!
 @brief Implemented as <code>1 / (distance + 1)</code>.
 */
- (jfloat)sloppyFreqWithInt:(jint)distance;

/*!
 @brief Implemented as <code>sqrt(freq)</code>.
 */
- (jfloat)tfWithFloat:(jfloat)freq;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesDefaultSimilarity *new_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesDefaultSimilarity *create_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity")
