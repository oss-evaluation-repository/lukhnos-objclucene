//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked23.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked23")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked23
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked23 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked23 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked23

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilPackedBulkOperationPacked23_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked23 || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked23))
#define OrgApacheLuceneUtilPackedBulkOperationPacked23_

#define RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#define INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

/*!
 @brief Efficient sequential read/write of packed integers.
 */
@interface OrgApacheLuceneUtilPackedBulkOperationPacked23 : OrgApacheLuceneUtilPackedBulkOperationPacked

#pragma mark Public

- (instancetype __nonnull)initPackagePrivate;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithInt:(jint)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked23)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked23_initPackagePrivate(OrgApacheLuceneUtilPackedBulkOperationPacked23 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked23 *new_OrgApacheLuceneUtilPackedBulkOperationPacked23_initPackagePrivate(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked23 *create_OrgApacheLuceneUtilPackedBulkOperationPacked23_initPackagePrivate(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked23)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked23")
