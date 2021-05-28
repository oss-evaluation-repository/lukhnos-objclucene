//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MultiDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexMultiDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexMultiDocValues

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexMultiDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues || defined(INCLUDE_OrgApacheLuceneIndexMultiDocValues))
#define OrgApacheLuceneIndexMultiDocValues_

@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief A wrapper for CompositeIndexReader providing access to DocValues.
 <p><b>NOTE</b>: for multi readers, you'll get better
  performance by gathering the sub readers using 
 <code>IndexReader.getContext()</code> to get the
  atomic leaves and then operate per-LeafReader,
  instead of using this class.  
 <p><b>NOTE</b>: This is very costly.
 */
@interface OrgApacheLuceneIndexMultiDocValues : NSObject

#pragma mark Public

/*!
 @brief Returns a BinaryDocValues for a reader's docvalues (potentially merging on-the-fly)
 <p>
  This is a slow way to access binary values.
 Instead, access them per-segment
  with <code>LeafReader.getBinaryDocValues(String)</code>
  </p>
 */
+ (OrgApacheLuceneIndexBinaryDocValues *)getBinaryValuesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                               withNSString:(NSString *)field;

/*!
 @brief Returns a Bits for a reader's docsWithField (potentially merging on-the-fly)
 <p>
  This is a slow way to access this bitset.
 Instead, access them per-segment
  with <code>LeafReader.getDocsWithField(String)</code>
  </p>
 */
+ (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                      withNSString:(NSString *)field;

/*!
 @brief Returns a NumericDocValues for a reader's norms (potentially merging on-the-fly).
 <p>
  This is a slow way to access normalization values. Instead, access them per-segment
  with <code>LeafReader.getNormValues(String)</code>
  </p>
 */
+ (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                              withNSString:(NSString *)field;

/*!
 @brief Returns a NumericDocValues for a reader's docvalues (potentially merging on-the-fly)
 <p>
  This is a slow way to access numeric values.
 Instead, access them per-segment
  with <code>LeafReader.getNumericDocValues(String)</code>
  </p>
 */
+ (OrgApacheLuceneIndexNumericDocValues *)getNumericValuesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                                 withNSString:(NSString *)field;

/*!
 @brief Returns a SortedNumericDocValues for a reader's docvalues (potentially merging on-the-fly)
 <p>
  This is a slow way to access sorted numeric values.
 Instead, access them per-segment
  with <code>LeafReader.getSortedNumericDocValues(String)</code>
  </p>
 */
+ (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericValuesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                                             withNSString:(NSString *)field;

/*!
 @brief Returns a SortedSetDocValues for a reader's docvalues (potentially doing extremely slow things).
 <p>
  This is an extremely slow way to access sorted values. Instead, access them per-segment
  with <code>LeafReader.getSortedSetDocValues(String)</code>
  </p>
 */
+ (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetValuesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                                     withNSString:(NSString *)field;

/*!
 @brief Returns a SortedDocValues for a reader's docvalues (potentially doing extremely slow things).
 <p>
  This is an extremely slow way to access sorted values. Instead, access them per-segment
  with <code>LeafReader.getSortedDocValues(String)</code>
  </p>
 */
+ (OrgApacheLuceneIndexSortedDocValues *)getSortedValuesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                               withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiDocValues)

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneIndexMultiDocValues_getNormValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneIndexIndexReader *r, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneIndexMultiDocValues_getNumericValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneIndexIndexReader *r, NSString *field);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexMultiDocValues_getDocsWithFieldWithOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneIndexIndexReader *r, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValues *OrgApacheLuceneIndexMultiDocValues_getBinaryValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneIndexIndexReader *r, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedNumericDocValues *OrgApacheLuceneIndexMultiDocValues_getSortedNumericValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneIndexIndexReader *r, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneIndexMultiDocValues_getSortedValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneIndexIndexReader *r, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedSetDocValues *OrgApacheLuceneIndexMultiDocValues_getSortedSetValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneIndexIndexReader *r, NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiDocValues)

#endif

#if !defined (OrgApacheLuceneIndexMultiDocValues_OrdinalMap_) && (INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues || defined(INCLUDE_OrgApacheLuceneIndexMultiDocValues_OrdinalMap))
#define OrgApacheLuceneIndexMultiDocValues_OrdinalMap_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap;
@class OrgApacheLuceneUtilLongValues;
@class OrgApacheLuceneUtilPackedPackedLongValues;
@protocol JavaUtilCollection;

/*!
 @brief maps per-segment ordinals to/from global ordinal space
 */
@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  id owner_;
  OrgApacheLuceneUtilPackedPackedLongValues *globalOrdDeltas_;
  OrgApacheLuceneUtilPackedPackedLongValues *firstSegments_;
  IOSObjectArray *segmentToGlobalOrds_;
  OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *segmentMap_;
  jlong ramBytesUsed_;
}

#pragma mark Public

/*!
 @brief Create an ordinal map that uses the number of unique values of each 
 <code>SortedDocValues</code> instance as a weight.
 - seealso: #build(Object, TermsEnum[], long[], float)
 */
+ (OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)buildWithId:(id)owner
                  withOrgApacheLuceneIndexSortedDocValuesArray:(IOSObjectArray *)values
                                                     withFloat:(jfloat)acceptableOverheadRatio;

/*!
 @brief Create an ordinal map that uses the number of unique values of each 
 <code>SortedSetDocValues</code> instance as a weight.
 - seealso: #build(Object, TermsEnum[], long[], float)
 */
+ (OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)buildWithId:(id)owner
               withOrgApacheLuceneIndexSortedSetDocValuesArray:(IOSObjectArray *)values
                                                     withFloat:(jfloat)acceptableOverheadRatio;

/*!
 @brief Creates an ordinal map that allows mapping ords to/from a merged
  space from <code>subs</code>.
 @param owner a cache key
 @param subs TermsEnums that support <code>TermsEnum.ord()</code> . They need
               not be dense (e.g. can be FilteredTermsEnums}.
 @param weights a weight for each sub. This is ideally correlated with              the number of unique terms that each sub introduces compared
               to the other subs
 @throw IOExceptionif an I/O error occurred.
 */
+ (OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)buildWithId:(id)owner
                        withOrgApacheLuceneIndexTermsEnumArray:(IOSObjectArray *)subs
                                                 withLongArray:(IOSLongArray *)weights
                                                     withFloat:(jfloat)acceptableOverheadRatio;

- (id<JavaUtilCollection>)getChildResources;

/*!
 @brief Given a global ordinal, returns the index of the first
  segment that contains this term.
 */
- (jint)getFirstSegmentNumberWithLong:(jlong)globalOrd;

/*!
 @brief Given global ordinal, returns the ordinal of the first segment which contains
  this ordinal (the corresponding to the segment return <code>getFirstSegmentNumber</code>).
 */
- (jlong)getFirstSegmentOrdWithLong:(jlong)globalOrd;

/*!
 @brief Given a segment number, return a <code>LongValues</code> instance that maps
  segment ordinals to global ordinals.
 */
- (OrgApacheLuceneUtilLongValues *)getGlobalOrdsWithInt:(jint)segmentIndex;

/*!
 @brief Returns the total number of unique terms in global ord space.
 */
- (jlong)getValueCount;

- (jlong)ramBytesUsed;

#pragma mark Package-Private

- (instancetype __nonnull)initWithId:(id)owner
withOrgApacheLuceneIndexTermsEnumArray:(IOSObjectArray *)subs
withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *)segmentMap
                           withFloat:(jfloat)acceptableOverheadRatio;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexMultiDocValues_OrdinalMap)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_OrdinalMap, owner_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_OrdinalMap, globalOrdDeltas_, OrgApacheLuceneUtilPackedPackedLongValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_OrdinalMap, firstSegments_, OrgApacheLuceneUtilPackedPackedLongValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_OrdinalMap, segmentToGlobalOrds_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_OrdinalMap, segmentMap_, OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *)

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_OrdinalMap *OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexSortedDocValuesArray_withFloat_(id owner, IOSObjectArray *values, jfloat acceptableOverheadRatio);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_OrdinalMap *OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexSortedSetDocValuesArray_withFloat_(id owner, IOSObjectArray *values, jfloat acceptableOverheadRatio);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_OrdinalMap *OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexTermsEnumArray_withLongArray_withFloat_(id owner, IOSObjectArray *subs, IOSLongArray *weights, jfloat acceptableOverheadRatio);

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiDocValues_OrdinalMap_initWithId_withOrgApacheLuceneIndexTermsEnumArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_withFloat_(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *self, id owner, IOSObjectArray *subs, OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *segmentMap, jfloat acceptableOverheadRatio);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_OrdinalMap *new_OrgApacheLuceneIndexMultiDocValues_OrdinalMap_initWithId_withOrgApacheLuceneIndexTermsEnumArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_withFloat_(id owner, IOSObjectArray *subs, OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *segmentMap, jfloat acceptableOverheadRatio) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_OrdinalMap *create_OrgApacheLuceneIndexMultiDocValues_OrdinalMap_initWithId_withOrgApacheLuceneIndexTermsEnumArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_withFloat_(id owner, IOSObjectArray *subs, OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *segmentMap, jfloat acceptableOverheadRatio);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiDocValues_OrdinalMap)

#endif

#if !defined (OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_) && (INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues || defined(INCLUDE_OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap))
#define OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSLongArray;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap : NSObject < OrgApacheLuceneUtilAccountable >

#pragma mark Public

- (id<JavaUtilCollection>)getChildResources;

- (jlong)ramBytesUsed;

#pragma mark Package-Private

- (instancetype __nonnull)initWithLongArray:(IOSLongArray *)weights;

- (jint)newToOldWithInt:(jint)segment OBJC_METHOD_FAMILY_NONE;

- (jint)oldToNewWithInt:(jint)segment;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_initWithLongArray_(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *self, IOSLongArray *weights);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *new_OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_initWithLongArray_(IOSLongArray *weights) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *create_OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_initWithLongArray_(IOSLongArray *weights);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap)

#endif

#if !defined (OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues || defined(INCLUDE_OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues))
#define OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues_

#define RESTRICT_OrgApacheLuceneIndexSortedDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedDocValues 1
#include "org/apache/lucene/index/SortedDocValues.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Implements SortedDocValues over n subs, using an OrdinalMap
 */
@interface OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues : OrgApacheLuceneIndexSortedDocValues {
 @public
  /*!
   @brief docbase for each leaf: parallel with <code>values</code>
   */
  IOSIntArray *docStarts_;
  /*!
   @brief leaf values
   */
  IOSObjectArray *values_;
  /*!
   @brief ordinal map mapping ords from <code>values</code> to global ord space
   */
  OrgApacheLuceneIndexMultiDocValues_OrdinalMap *mapping_;
}

#pragma mark Public

- (jint)getOrdWithInt:(jint)docID;

- (jint)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithInt:(jint)ord;

#pragma mark Package-Private

/*!
 @brief Creates a new MultiSortedDocValues over <code>values</code>
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexSortedDocValuesArray:(IOSObjectArray *)values
                                                              withIntArray:(IOSIntArray *)docStarts
                         withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)mapping;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues, docStarts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues, values_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues, mapping_, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues_initWithOrgApacheLuceneIndexSortedDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues *self, IOSObjectArray *values, IOSIntArray *docStarts, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *mapping);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues *new_OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues_initWithOrgApacheLuceneIndexSortedDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(IOSObjectArray *values, IOSIntArray *docStarts, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *mapping) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues *create_OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues_initWithOrgApacheLuceneIndexSortedDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(IOSObjectArray *values, IOSIntArray *docStarts, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *mapping);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues)

#endif

#if !defined (OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues || defined(INCLUDE_OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues))
#define OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues_

#define RESTRICT_OrgApacheLuceneIndexSortedSetDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedSetDocValues 1
#include "org/apache/lucene/index/SortedSetDocValues.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilLongValues;

/*!
 @brief Implements MultiSortedSetDocValues over n subs, using an OrdinalMap
 */
@interface OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues : OrgApacheLuceneIndexSortedSetDocValues {
 @public
  /*!
   @brief docbase for each leaf: parallel with <code>values</code>
   */
  IOSIntArray *docStarts_;
  /*!
   @brief leaf values
   */
  IOSObjectArray *values_;
  /*!
   @brief ordinal map mapping ords from <code>values</code> to global ord space
   */
  OrgApacheLuceneIndexMultiDocValues_OrdinalMap *mapping_;
  jint currentSubIndex_;
  OrgApacheLuceneUtilLongValues *currentGlobalOrds_;
}

#pragma mark Public

- (jlong)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithLong:(jlong)ord;

- (jlong)nextOrd;

- (void)setDocumentWithInt:(jint)docID;

#pragma mark Package-Private

/*!
 @brief Creates a new MultiSortedSetDocValues over <code>values</code>
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexSortedSetDocValuesArray:(IOSObjectArray *)values
                                                                 withIntArray:(IOSIntArray *)docStarts
                            withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)mapping;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues, docStarts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues, values_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues, mapping_, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues, currentGlobalOrds_, OrgApacheLuceneUtilLongValues *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues_initWithOrgApacheLuceneIndexSortedSetDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues *self, IOSObjectArray *values, IOSIntArray *docStarts, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *mapping);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues *new_OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues_initWithOrgApacheLuceneIndexSortedSetDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(IOSObjectArray *values, IOSIntArray *docStarts, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *mapping) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues *create_OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues_initWithOrgApacheLuceneIndexSortedSetDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(IOSObjectArray *values, IOSIntArray *docStarts, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *mapping);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexMultiDocValues")
