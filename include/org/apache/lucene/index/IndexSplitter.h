//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/index/IndexSplitter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexSplitter")
#ifdef RESTRICT_OrgApacheLuceneIndexIndexSplitter
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexSplitter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexSplitter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexIndexSplitter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexIndexSplitter_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexSplitter || defined(INCLUDE_OrgApacheLuceneIndexIndexSplitter))
#define OrgApacheLuceneIndexIndexSplitter_

@class IOSObjectArray;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneStoreFSDirectory;
@class OrgLukhnosPortmobileFilePath;

/*!
 @brief Command-line tool that enables listing segments in an
  index, copying specific segments to another index, and
  deleting segments from an index.
 <p>This tool does file-level copying of segments files.
  This means it's unable to split apart a single segment
  into multiple segments.  For example if your index is a
  single segment, this tool won't help.  Also, it does basic
  file-level copying (using simple
  File{In,Out}putStream) so it will not work with non
  FSDirectory Directory impls.</p>
 */
@interface OrgApacheLuceneIndexIndexSplitter : NSObject {
 @public
  OrgApacheLuceneIndexSegmentInfos *infos_;
  OrgApacheLuceneStoreFSDirectory *fsDir_;
  OrgLukhnosPortmobileFilePath *dir_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)dir;

- (void)listSegments;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (void)removeWithNSStringArray:(IOSObjectArray *)segs;

- (void)splitWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)destDir
                            withNSStringArray:(IOSObjectArray *)segs;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexSplitter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexSplitter, infos_, OrgApacheLuceneIndexSegmentInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexSplitter, fsDir_, OrgApacheLuceneStoreFSDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexSplitter, dir_, OrgLukhnosPortmobileFilePath *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexSplitter_mainWithNSStringArray_(IOSObjectArray *args);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(OrgApacheLuceneIndexIndexSplitter *self, OrgLukhnosPortmobileFilePath *dir);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexSplitter *new_OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *dir) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexSplitter *create_OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *dir);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexSplitter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexSplitter")
