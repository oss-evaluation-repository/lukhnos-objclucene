//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/PackedReaderIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedReaderIterator")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedPackedReaderIterator
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedReaderIterator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedReaderIterator 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedPackedReaderIterator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilPackedPackedReaderIterator_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedReaderIterator || defined(INCLUDE_OrgApacheLuceneUtilPackedPackedReaderIterator))
#define OrgApacheLuceneUtilPackedPackedReaderIterator_

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl 1
#include "org/apache/lucene/util/packed/PackedInts.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneUtilLongsRef;
@class OrgApacheLuceneUtilPackedBulkOperation;
@class OrgApacheLuceneUtilPackedPackedInts_Format;

@interface OrgApacheLuceneUtilPackedPackedReaderIterator : OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl {
 @public
  jint packedIntsVersion_;
  OrgApacheLuceneUtilPackedPackedInts_Format *format_;
  OrgApacheLuceneUtilPackedBulkOperation *bulkOperation_;
  IOSByteArray *nextBlocks_;
  OrgApacheLuceneUtilLongsRef *nextValues_;
  jint iterations_;
  jint position_;
}

#pragma mark Public

- (OrgApacheLuceneUtilLongsRef *)nextWithInt:(jint)count;

- (jint)ord;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format:(OrgApacheLuceneUtilPackedPackedInts_Format *)format
                                                                                   withInt:(jint)packedIntsVersion
                                                                                   withInt:(jint)valueCount
                                                                                   withInt:(jint)bitsPerValue
                                                         withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                                                                   withInt:(jint)mem;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0
                              withInt:(jint)arg1
    withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPackedReaderIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedReaderIterator, format_, OrgApacheLuceneUtilPackedPackedInts_Format *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedReaderIterator, bulkOperation_, OrgApacheLuceneUtilPackedBulkOperation *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedReaderIterator, nextBlocks_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedReaderIterator, nextValues_, OrgApacheLuceneUtilLongsRef *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPackedReaderIterator_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedPackedReaderIterator *self, OrgApacheLuceneUtilPackedPackedInts_Format *format, jint packedIntsVersion, jint valueCount, jint bitsPerValue, OrgApacheLuceneStoreDataInput *inArg, jint mem);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedReaderIterator *new_OrgApacheLuceneUtilPackedPackedReaderIterator_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedPackedInts_Format *format, jint packedIntsVersion, jint valueCount, jint bitsPerValue, OrgApacheLuceneStoreDataInput *inArg, jint mem) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedReaderIterator *create_OrgApacheLuceneUtilPackedPackedReaderIterator_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedPackedInts_Format *format, jint packedIntsVersion, jint valueCount, jint bitsPerValue, OrgApacheLuceneStoreDataInput *inArg, jint mem);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPackedReaderIterator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedReaderIterator")
