//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ReadersAndUpdates.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexReadersAndUpdates")
#ifdef RESTRICT_OrgApacheLuceneIndexReadersAndUpdates
#define INCLUDE_ALL_OrgApacheLuceneIndexReadersAndUpdates 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexReadersAndUpdates 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexReadersAndUpdates

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexReadersAndUpdates_) && (INCLUDE_ALL_OrgApacheLuceneIndexReadersAndUpdates || defined(INCLUDE_OrgApacheLuceneIndexReadersAndUpdates))
#define OrgApacheLuceneIndexReadersAndUpdates_

@class OrgApacheLuceneIndexDocValuesFieldUpdates_Container;
@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneIndexSegmentReader;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneIndexReadersAndUpdates : NSObject {
 @public
  OrgApacheLuceneIndexSegmentCommitInfo *info_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                      withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info;

/*!
 @brief Init from a previously opened SegmentReader.
 <p>NOTE: steals incoming ref from reader.
 */
- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                          withOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)reader;

- (void)decRef;

- (jboolean)delete__WithInt:(jint)docID;

- (void)dropChanges;

/*!
 @brief Drops all merging updates.Called from IndexWriter after this segment
  finished merging (whether successfully or not).
 */
- (void)dropMergingUpdates;

- (void)dropReaders;

- (id<OrgApacheLuceneUtilBits>)getLiveDocs;

/*!
 @brief Returns updates that came in while this segment was merging.
 */
- (id<JavaUtilMap>)getMergingFieldUpdates;

- (jint)getPendingDeleteCount;

/*!
 @brief Returns a <code>SegmentReader</code>.
 */
- (OrgApacheLuceneIndexSegmentReader *)getReaderWithOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

/*!
 @brief Returns a ref to a clone.NOTE: you should decRef() the reader when you're
  done (ie do not call close()).
 */
- (OrgApacheLuceneIndexSegmentReader *)getReadOnlyCloneWithOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (id<OrgApacheLuceneUtilBits>)getReadOnlyLiveDocs;

- (void)incRef;

- (void)initWritableLiveDocs OBJC_METHOD_FAMILY_NONE;

- (jint)refCount;

- (void)release__WithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)sr;

- (NSString *)description;

- (jboolean)verifyDocCounts;

- (void)writeFieldUpdatesWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
   withOrgApacheLuceneIndexDocValuesFieldUpdates_Container:(OrgApacheLuceneIndexDocValuesFieldUpdates_Container *)dvUpdates;

- (jboolean)writeLiveDocsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

#pragma mark Package-Private

/*!
 @brief Returns a reader for merge.This method applies field updates if there are
  any and marks that this segment is currently merging.
 */
- (OrgApacheLuceneIndexSegmentReader *)getReaderForMergeWithOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexReadersAndUpdates)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexReadersAndUpdates, info_, OrgApacheLuceneIndexSegmentCommitInfo *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexReadersAndUpdates_initPackagePrivateWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentCommitInfo_(OrgApacheLuceneIndexReadersAndUpdates *self, OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentCommitInfo *info);

FOUNDATION_EXPORT OrgApacheLuceneIndexReadersAndUpdates *new_OrgApacheLuceneIndexReadersAndUpdates_initPackagePrivateWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentCommitInfo_(OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentCommitInfo *info) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexReadersAndUpdates *create_OrgApacheLuceneIndexReadersAndUpdates_initPackagePrivateWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentCommitInfo_(OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentCommitInfo *info);

FOUNDATION_EXPORT void OrgApacheLuceneIndexReadersAndUpdates_initPackagePrivateWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexReadersAndUpdates *self, OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentReader *reader);

FOUNDATION_EXPORT OrgApacheLuceneIndexReadersAndUpdates *new_OrgApacheLuceneIndexReadersAndUpdates_initPackagePrivateWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentReader *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexReadersAndUpdates *create_OrgApacheLuceneIndexReadersAndUpdates_initPackagePrivateWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentReader *reader);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexReadersAndUpdates)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexReadersAndUpdates")
