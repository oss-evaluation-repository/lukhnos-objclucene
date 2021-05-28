//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/AbstractBlockPackedWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter || defined(INCLUDE_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter))
#define OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_

@class IOSByteArray;
@class IOSLongArray;
@class OrgApacheLuceneStoreDataOutput;

@interface OrgApacheLuceneUtilPackedAbstractBlockPackedWriter : NSObject {
 @public
  OrgApacheLuceneStoreDataOutput *out_;
  IOSLongArray *values_;
  IOSByteArray *blocks_;
  jint off_;
  jlong ord_;
  jboolean finished_;
}
@property (readonly, class) jint MIN_BLOCK_SIZE NS_SWIFT_NAME(MIN_BLOCK_SIZE);
@property (readonly, class) jint MAX_BLOCK_SIZE NS_SWIFT_NAME(MAX_BLOCK_SIZE);
@property (readonly, class) jint MIN_VALUE_EQUALS_0 NS_SWIFT_NAME(MIN_VALUE_EQUALS_0);
@property (readonly, class) jint BPV_SHIFT NS_SWIFT_NAME(BPV_SHIFT);

#pragma mark Public

/*!
 @brief Sole constructor.
 @param blockSize the number of values of a single block, must be a multiple of  <tt> 64 </tt>
 */
- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                                                       withInt:(jint)blockSize;

/*!
 @brief Append a new long.
 */
- (void)addWithLong:(jlong)l;

/*!
 @brief Flush all buffered data to disk.This instance is not usable anymore
   after this method has been called until <code>reset(DataOutput)</code> has
   been called.
 */
- (void)finish;

/*!
 @brief Return the number of values which have been added.
 */
- (jlong)ord;

/*!
 @brief Reset this writer to wrap <code>out</code>.The block size remains unchanged.
 */
- (void)resetWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

#pragma mark Protected

- (void)flush;

- (void)writeValuesWithInt:(jint)bitsRequired;

#pragma mark Package-Private

- (void)addBlockOfZeros;

+ (void)writeVLongWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                            withLong:(jlong)i;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter, out_, OrgApacheLuceneStoreDataOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter, values_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter, blocks_, IOSByteArray *)

inline jint OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_get_MIN_BLOCK_SIZE(void);
#define OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MIN_BLOCK_SIZE 64
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter, MIN_BLOCK_SIZE, jint)

inline jint OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_get_MAX_BLOCK_SIZE(void);
#define OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MAX_BLOCK_SIZE 134217728
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter, MAX_BLOCK_SIZE, jint)

inline jint OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_get_MIN_VALUE_EQUALS_0(void);
#define OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MIN_VALUE_EQUALS_0 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter, MIN_VALUE_EQUALS_0, jint)

inline jint OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_get_BPV_SHIFT(void);
#define OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_BPV_SHIFT 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter, BPV_SHIFT, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_writeVLongWithOrgApacheLuceneStoreDataOutput_withLong_(OrgApacheLuceneStoreDataOutput *outArg, jlong i);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_initPackagePrivateWithOrgApacheLuceneStoreDataOutput_withInt_(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *self, OrgApacheLuceneStoreDataOutput *outArg, jint blockSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter")
