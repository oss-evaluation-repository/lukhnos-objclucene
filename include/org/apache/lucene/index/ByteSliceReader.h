//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ByteSliceReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexByteSliceReader")
#ifdef RESTRICT_OrgApacheLuceneIndexByteSliceReader
#define INCLUDE_ALL_OrgApacheLuceneIndexByteSliceReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexByteSliceReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexByteSliceReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexByteSliceReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexByteSliceReader || defined(INCLUDE_OrgApacheLuceneIndexByteSliceReader))
#define OrgApacheLuceneIndexByteSliceReader_

#define RESTRICT_OrgApacheLuceneStoreDataInput 1
#define INCLUDE_OrgApacheLuceneStoreDataInput 1
#include "org/apache/lucene/store/DataInput.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreDataOutput;
@class OrgApacheLuceneUtilByteBlockPool;

@interface OrgApacheLuceneIndexByteSliceReader : OrgApacheLuceneStoreDataInput {
 @public
  OrgApacheLuceneUtilByteBlockPool *pool_;
  jint bufferUpto_;
  IOSByteArray *buffer_;
  jint upto_;
  jint limit_;
  jint level_;
  jint bufferOffset_;
  jint endIndex_;
}

#pragma mark Public

- (jboolean)eof;

- (void)init__WithOrgApacheLuceneUtilByteBlockPool:(OrgApacheLuceneUtilByteBlockPool *)pool
                                           withInt:(jint)startIndex
                                           withInt:(jint)endIndex OBJC_METHOD_FAMILY_NONE;

- (void)nextSlice;

- (jbyte)readByte;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

- (jlong)writeToWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivate;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexByteSliceReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexByteSliceReader, pool_, OrgApacheLuceneUtilByteBlockPool *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexByteSliceReader, buffer_, IOSByteArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexByteSliceReader_initPackagePrivate(OrgApacheLuceneIndexByteSliceReader *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexByteSliceReader *new_OrgApacheLuceneIndexByteSliceReader_initPackagePrivate(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexByteSliceReader *create_OrgApacheLuceneIndexByteSliceReader_initPackagePrivate(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexByteSliceReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexByteSliceReader")
