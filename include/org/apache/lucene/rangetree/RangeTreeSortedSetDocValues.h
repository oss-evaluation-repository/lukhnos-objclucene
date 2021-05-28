//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/RangeTreeSortedSetDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues")
#ifdef RESTRICT_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues
#define INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_) && (INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues || defined(INCLUDE_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues))
#define OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_

#define RESTRICT_OrgApacheLuceneIndexSortedSetDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedSetDocValues 1
#include "org/apache/lucene/index/SortedSetDocValues.h"

@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneRangetreeRangeTreeReader;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues : OrgApacheLuceneIndexSortedSetDocValues {
 @public
  OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader_;
  OrgApacheLuceneIndexSortedSetDocValues *delegate_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneRangetreeRangeTreeReader:(OrgApacheLuceneRangetreeRangeTreeReader *)rangeTreeReader
                                             withOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)delegate;

- (OrgApacheLuceneRangetreeRangeTreeReader *)getRangeTreeReader;

- (jlong)getValueCount;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithLong:(jlong)ord;

- (jlong)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

- (jlong)nextOrd;

- (void)setDocumentWithInt:(jint)doc;

- (OrgApacheLuceneIndexTermsEnum *)termsEnum;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues, rangeTreeReader_, OrgApacheLuceneRangetreeRangeTreeReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues, delegate_, OrgApacheLuceneIndexSortedSetDocValues *)

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_initPackagePrivateWithOrgApacheLuceneRangetreeRangeTreeReader_withOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues *self, OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader, OrgApacheLuceneIndexSortedSetDocValues *delegate);

FOUNDATION_EXPORT OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues *new_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_initPackagePrivateWithOrgApacheLuceneRangetreeRangeTreeReader_withOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader, OrgApacheLuceneIndexSortedSetDocValues *delegate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues *create_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues_initPackagePrivateWithOrgApacheLuceneRangetreeRangeTreeReader_withOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneRangetreeRangeTreeReader *rangeTreeReader, OrgApacheLuceneIndexSortedSetDocValues *delegate);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues")
