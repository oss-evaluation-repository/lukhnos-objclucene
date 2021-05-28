//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/FixedBitSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet")
#ifdef RESTRICT_OrgApacheLuceneUtilFixedBitSet
#define INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFixedBitSet

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilFixedBitSet_) && (INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet || defined(INCLUDE_OrgApacheLuceneUtilFixedBitSet))
#define OrgApacheLuceneUtilFixedBitSet_

#define RESTRICT_OrgApacheLuceneUtilBitSet 1
#define INCLUDE_OrgApacheLuceneUtilBitSet 1
#include "org/apache/lucene/util/BitSet.h"

#define RESTRICT_OrgApacheLuceneUtilMutableBits 1
#define INCLUDE_OrgApacheLuceneUtilMutableBits 1
#include "org/apache/lucene/util/MutableBits.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSLongArray;
@class OrgApacheLuceneSearchDocIdSetIterator;

/*!
 @brief BitSet of fixed length (numBits), backed by accessible (<code>getBits</code>)
  long[], accessed with an int index, implementing <code>Bits</code> and 
 <code>DocIdSet</code>.If you need to manage more than 2.1B bits, use 
 <code>LongBitSet</code>.
 */
@interface OrgApacheLuceneUtilFixedBitSet : OrgApacheLuceneUtilBitSet < OrgApacheLuceneUtilMutableBits, OrgApacheLuceneUtilAccountable >

#pragma mark Public

/*!
 @brief Creates a new LongBitSet.
 The internally allocated long array will be exactly the size needed to accommodate the numBits specified.
 @param numBits the number of bits needed
 */
- (instancetype __nonnull)initWithInt:(jint)numBits;

/*!
 @brief Creates a new LongBitSet using the provided long[] array as backing store.
 The storedBits array must be large enough to accommodate the numBits specified, but may be larger.
  In that case the 'extra' or 'ghost' bits must be clear (or they may provoke spurious side-effects)
 @param storedBits the array to use as backing store
 @param numBits the number of bits actually needed
 */
- (instancetype __nonnull)initWithLongArray:(IOSLongArray *)storedBits
                                    withInt:(jint)numBits;

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter;

/*!
 @brief this = this AND other
 */
- (void)and__WithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter;

/*!
 @brief this = this AND NOT other
 */
- (void)andNotWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

/*!
 @brief Returns the popcount or cardinality of "a and not b" or
  "intersection(a, not(b))".Neither set is modified.
 */
+ (jlong)andNotCountWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)a
                    withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)b;

/*!
 @brief returns the number of 64 bit words it would take to hold numBits
 */
+ (jint)bits2wordsWithInt:(jint)numBits;

/*!
 @brief Returns number of set bits.NOTE: this visits every
   long in the backing bits array, and the result is not
   internally cached!
 */
- (jint)cardinality;

- (void)clearWithInt:(jint)index;

- (void)clearWithInt:(jint)startIndex
             withInt:(jint)endIndex;

- (OrgApacheLuceneUtilFixedBitSet *)java_clone;

/*!
 @brief If the given <code>FixedBitSet</code> is large enough to hold <code>numBits+1</code>,
  returns the given bits, otherwise returns a new <code>FixedBitSet</code> which
  can hold the requested number of bits.
 <p>
  <b>NOTE:</b> the returned bitset reuses the underlying <code>long[]</code> of
  the given <code>bits</code> if possible. Also, calling <code>length()</code> on the
  returned bits may return a value greater than <code>numBits</code>.
 */
+ (OrgApacheLuceneUtilFixedBitSet *)ensureCapacityWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)bits
                                                                             withInt:(jint)numBits;

- (jboolean)isEqual:(id)o;

/*!
 @brief Flip the bit at the provided index.
 */
- (void)flipWithInt:(jint)index;

/*!
 @brief Flips a range of bits
 @param startIndex lower index
 @param endIndex one-past the last bit to flip
 */
- (void)flipWithInt:(jint)startIndex
            withInt:(jint)endIndex;

- (jboolean)getWithInt:(jint)index;

- (jboolean)getAndClearWithInt:(jint)index;

- (jboolean)getAndSetWithInt:(jint)index;

/*!
 @brief Expert.
 */
- (IOSLongArray *)getBits;

- (NSUInteger)hash;

/*!
 @brief Returns the popcount or cardinality of the intersection of the two sets.
 Neither set is modified.
 */
+ (jlong)intersectionCountWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)a
                          withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)b;

/*!
 @brief returns true if the sets have any elements in common
 */
- (jboolean)intersectsWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

- (jint)length;

- (jint)nextSetBitWithInt:(jint)index;

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter;

/*!
 @brief this = this OR other
 */
- (void)or__WithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

- (jint)prevSetBitWithInt:(jint)index;

- (jlong)ramBytesUsed;

/*!
 @brief Scans the backing store to check if all bits are clear.
 The method is deliberately not called "isEmpty" to emphasize it is not low cost (as isEmpty usually is).
 @return true if all bits are clear.
 */
- (jboolean)scanIsEmpty;

- (void)setWithInt:(jint)index;

/*!
 @brief Sets a range of bits
 @param startIndex lower index
 @param endIndex one-past the last bit to set
 */
- (void)setWithInt:(jint)startIndex
           withInt:(jint)endIndex;

/*!
 @brief Returns the popcount or cardinality of the union of the two sets.Neither
  set is modified.
 */
+ (jlong)unionCountWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)a
                   withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)b;

/*!
 @brief Does in-place XOR of the bits provided by the iterator.
 */
- (void)xor__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter;

/*!
 @brief this = this XOR other
 */
- (void)xor__WithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilFixedBitSet)

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *OrgApacheLuceneUtilFixedBitSet_ensureCapacityWithOrgApacheLuceneUtilFixedBitSet_withInt_(OrgApacheLuceneUtilFixedBitSet *bits, jint numBits);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilFixedBitSet_bits2wordsWithInt_(jint numBits);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilFixedBitSet_intersectionCountWithOrgApacheLuceneUtilFixedBitSet_withOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *a, OrgApacheLuceneUtilFixedBitSet *b);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilFixedBitSet_unionCountWithOrgApacheLuceneUtilFixedBitSet_withOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *a, OrgApacheLuceneUtilFixedBitSet *b);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilFixedBitSet_andNotCountWithOrgApacheLuceneUtilFixedBitSet_withOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *a, OrgApacheLuceneUtilFixedBitSet *b);

FOUNDATION_EXPORT void OrgApacheLuceneUtilFixedBitSet_initWithInt_(OrgApacheLuceneUtilFixedBitSet *self, jint numBits);

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(jint numBits) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *create_OrgApacheLuceneUtilFixedBitSet_initWithInt_(jint numBits);

FOUNDATION_EXPORT void OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(OrgApacheLuceneUtilFixedBitSet *self, IOSLongArray *storedBits, jint numBits);

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *new_OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(IOSLongArray *storedBits, jint numBits) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *create_OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(IOSLongArray *storedBits, jint numBits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFixedBitSet)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet")
