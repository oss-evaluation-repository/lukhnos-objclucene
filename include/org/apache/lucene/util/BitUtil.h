//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BitUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilBitUtil")
#ifdef RESTRICT_OrgApacheLuceneUtilBitUtil
#define INCLUDE_ALL_OrgApacheLuceneUtilBitUtil 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilBitUtil 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilBitUtil

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilBitUtil_) && (INCLUDE_ALL_OrgApacheLuceneUtilBitUtil || defined(INCLUDE_OrgApacheLuceneUtilBitUtil))
#define OrgApacheLuceneUtilBitUtil_

@class IOSLongArray;

/*!
 @brief A variety of high efficiency bit twiddling routines.
 */
@interface OrgApacheLuceneUtilBitUtil : NSObject

#pragma mark Public

/*!
 @brief Return the number of bits sets in b.
 */
+ (jint)bitCountWithByte:(jbyte)b;

/*!
 @brief Return the list of bits which are set in b encoded as followed: 
 <code>(i >>> (4 * n)) & 0x0F</code> is the offset of the n-th set bit of
  the given byte plus one, or 0 if there are n or less bits set in the given
  byte.For example <code>bitList(12)</code> returns 0x43:<ul>
  <li><code>0x43 & 0x0F</code> is 3, meaning the the first bit set is at offset 3-1 = 2,</li>
  <li><code>(0x43 >>> 4) & 0x0F</code> is 4, meaning there is a second bit set at offset 4-1=3,</li>
  <li><code>(0x43 >>> 8) & 0x0F</code> is 0, meaning there is no more bit set in this byte.
 </li>
  </ul>
 */
+ (jint)bitListWithByte:(jbyte)b;

/*!
 @brief Deinterleaves long value back to two concatenated 32bit values
 */
+ (jlong)deinterleaveWithLong:(jlong)b;

/*!
 @brief flip flops odd with even bits
 */
+ (jlong)flipFlopWithLong:(jlong)b;

/*!
 @brief Interleaves the first 32 bits of each long value
  Adapted from: http://graphics.stanford.edu/~seander/bithacks.html#InterleaveBMN
 */
+ (jlong)interleaveWithLong:(jlong)v1
                   withLong:(jlong)v2;

/*!
 @brief returns the next highest power of two, or the current value if it's already a power of two or zero
 */
+ (jint)nextHighestPowerOfTwoWithInt:(jint)v;

/*!
 @brief returns the next highest power of two, or the current value if it's already a power of two or zero
 */
+ (jlong)nextHighestPowerOfTwoWithLong:(jlong)v;

/*!
 @brief Returns the popcount or cardinality of <code>A & ~B</code>.
 Neither array is modified.
 */
+ (jlong)pop_andnotWithLongArray:(IOSLongArray *)arr1
                   withLongArray:(IOSLongArray *)arr2
                         withInt:(jint)wordOffset
                         withInt:(jint)numWords;

/*!
 @brief Returns the number of set bits in an array of longs.
 */
+ (jlong)pop_arrayWithLongArray:(IOSLongArray *)arr
                        withInt:(jint)wordOffset
                        withInt:(jint)numWords;

/*!
 @brief Returns the popcount or cardinality of the two sets after an intersection.
 Neither array is modified.
 */
+ (jlong)pop_intersectWithLongArray:(IOSLongArray *)arr1
                      withLongArray:(IOSLongArray *)arr2
                            withInt:(jint)wordOffset
                            withInt:(jint)numWords;

/*!
 @brief Returns the popcount or cardinality of the union of two sets.
 Neither array is modified.
 */
+ (jlong)pop_unionWithLongArray:(IOSLongArray *)arr1
                  withLongArray:(IOSLongArray *)arr2
                        withInt:(jint)wordOffset
                        withInt:(jint)numWords;

/*!
 @brief Returns the popcount or cardinality of A ^ B
  Neither array is modified.
 */
+ (jlong)pop_xorWithLongArray:(IOSLongArray *)arr1
                withLongArray:(IOSLongArray *)arr2
                      withInt:(jint)wordOffset
                      withInt:(jint)numWords;

/*!
 @brief Decode an int previously encoded with <code>zigZagEncode(int)</code>.
 */
+ (jint)zigZagDecodeWithInt:(jint)i;

/*!
 @brief Decode a long previously encoded with <code>zigZagEncode(long)</code>.
 */
+ (jlong)zigZagDecodeWithLong:(jlong)l;

/*!
 @brief Same as <code>zigZagEncode(long)</code> but on integers.
 */
+ (jint)zigZagEncodeWithInt:(jint)i;

/*!
 @brief <a href="https://developers.google.com/protocol-buffers/docs/encoding#types">Zig-zag</a>
  encode the provided long.Assuming the input is a signed long whose
  absolute value can be stored on <tt>n</tt> bits, the returned value will
  be an unsigned long that can be stored on <tt>n+1</tt> bits.
 */
+ (jlong)zigZagEncodeWithLong:(jlong)l;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilBitUtil)

FOUNDATION_EXPORT jint OrgApacheLuceneUtilBitUtil_bitCountWithByte_(jbyte b);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilBitUtil_bitListWithByte_(jbyte b);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(IOSLongArray *arr, jint wordOffset, jint numWords);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_pop_intersectWithLongArray_withLongArray_withInt_withInt_(IOSLongArray *arr1, IOSLongArray *arr2, jint wordOffset, jint numWords);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_pop_unionWithLongArray_withLongArray_withInt_withInt_(IOSLongArray *arr1, IOSLongArray *arr2, jint wordOffset, jint numWords);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_pop_andnotWithLongArray_withLongArray_withInt_withInt_(IOSLongArray *arr1, IOSLongArray *arr2, jint wordOffset, jint numWords);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_pop_xorWithLongArray_withLongArray_withInt_withInt_(IOSLongArray *arr1, IOSLongArray *arr2, jint wordOffset, jint numWords);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilBitUtil_nextHighestPowerOfTwoWithInt_(jint v);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_nextHighestPowerOfTwoWithLong_(jlong v);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_interleaveWithLong_withLong_(jlong v1, jlong v2);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_deinterleaveWithLong_(jlong b);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_flipFlopWithLong_(jlong b);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilBitUtil_zigZagEncodeWithInt_(jint i);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(jlong l);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilBitUtil_zigZagDecodeWithInt_(jint i);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(jlong l);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBitUtil)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilBitUtil")
