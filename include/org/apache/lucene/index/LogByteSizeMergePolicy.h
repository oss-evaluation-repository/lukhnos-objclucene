//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/LogByteSizeMergePolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy")
#ifdef RESTRICT_OrgApacheLuceneIndexLogByteSizeMergePolicy
#define INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexLogByteSizeMergePolicy

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexLogByteSizeMergePolicy_) && (INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy || defined(INCLUDE_OrgApacheLuceneIndexLogByteSizeMergePolicy))
#define OrgApacheLuceneIndexLogByteSizeMergePolicy_

#define RESTRICT_OrgApacheLuceneIndexLogMergePolicy 1
#define INCLUDE_OrgApacheLuceneIndexLogMergePolicy 1
#include "org/apache/lucene/index/LogMergePolicy.h"

@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexSegmentCommitInfo;

/*!
 @brief This is a <code>LogMergePolicy</code> that measures size of a
   segment as the total byte size of the segment's files.
 */
@interface OrgApacheLuceneIndexLogByteSizeMergePolicy : OrgApacheLuceneIndexLogMergePolicy
@property (readonly, class) jdouble DEFAULT_MIN_MERGE_MB NS_SWIFT_NAME(DEFAULT_MIN_MERGE_MB);
@property (readonly, class) jdouble DEFAULT_MAX_MERGE_MB NS_SWIFT_NAME(DEFAULT_MAX_MERGE_MB);
@property (readonly, class) jdouble DEFAULT_MAX_MERGE_MB_FOR_FORCED_MERGE NS_SWIFT_NAME(DEFAULT_MAX_MERGE_MB_FOR_FORCED_MERGE);

#pragma mark Public

/*!
 @brief Sole constructor, setting all settings to their
   defaults.
 */
- (instancetype __nonnull)init;

/*!
 @brief Returns the largest segment (measured by total byte
   size of the segment's files, in MB) that may be merged
   with other segments.
 - seealso: #setMaxMergeMB
 */
- (jdouble)getMaxMergeMB;

/*!
 @brief Returns the largest segment (measured by total byte
   size of the segment's files, in MB) that may be merged
   with other segments during forceMerge.
 - seealso: #setMaxMergeMBForForcedMerge
 */
- (jdouble)getMaxMergeMBForForcedMerge;

/*!
 @brief Get the minimum size for a segment to remain
   un-merged.
 - seealso: #setMinMergeMB
 */
- (jdouble)getMinMergeMB;

/*!
 @brief <p>Determines the largest segment (measured by total
   byte size of the segment's files, in MB) that may be
   merged with other segments.
 Small values (e.g., less
   than 50 MB) are best for interactive indexing, as this
   limits the length of pauses while indexing to a few
   seconds.  Larger values are best for batched indexing
   and speedier searches.</p>
   
 <p>Note that <code>setMaxMergeDocs</code> is also
   used to check whether a segment is too large for
   merging (it's either or).</p>
 */
- (void)setMaxMergeMBWithDouble:(jdouble)mb;

/*!
 @brief <p>Determines the largest segment (measured by total
   byte size of the segment's files, in MB) that may be
   merged with other segments during forceMerge.
 Setting
   it low will leave the index with more than 1 segment,
   even if <code>IndexWriter.forceMerge</code> is called.
 */
- (void)setMaxMergeMBForForcedMergeWithDouble:(jdouble)mb;

/*!
 @brief Sets the minimum size for the lowest level segments.
 Any segments below this size are considered to be on
  the same level (even if they vary drastically in size)
  and will be merged whenever there are mergeFactor of
  them.  This effectively truncates the "long tail" of
  small segments that would otherwise be created into a
  single level.  If you set this too large, it could
  greatly increase the merging cost during indexing (if
  you flush many small segments).
 */
- (void)setMinMergeMBWithDouble:(jdouble)mb;

#pragma mark Protected

- (jlong)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                   withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLogByteSizeMergePolicy)

/*!
 @brief Default minimum segment size.
 @@see setMinMergeMB
 */
inline jdouble OrgApacheLuceneIndexLogByteSizeMergePolicy_get_DEFAULT_MIN_MERGE_MB(void);
#define OrgApacheLuceneIndexLogByteSizeMergePolicy_DEFAULT_MIN_MERGE_MB 1.6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogByteSizeMergePolicy, DEFAULT_MIN_MERGE_MB, jdouble)

/*!
 @brief Default maximum segment size.A segment of this size
   or larger will never be merged.
 @@see setMaxMergeMB
 */
inline jdouble OrgApacheLuceneIndexLogByteSizeMergePolicy_get_DEFAULT_MAX_MERGE_MB(void);
#define OrgApacheLuceneIndexLogByteSizeMergePolicy_DEFAULT_MAX_MERGE_MB 2048.0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogByteSizeMergePolicy, DEFAULT_MAX_MERGE_MB, jdouble)

/*!
 @brief Default maximum segment size.A segment of this size
   or larger will never be merged during forceMerge.
 @@see setMaxMergeMBForForceMerge
 */
inline jdouble OrgApacheLuceneIndexLogByteSizeMergePolicy_get_DEFAULT_MAX_MERGE_MB_FOR_FORCED_MERGE(void);
#define OrgApacheLuceneIndexLogByteSizeMergePolicy_DEFAULT_MAX_MERGE_MB_FOR_FORCED_MERGE 9.223372036854776E18
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogByteSizeMergePolicy, DEFAULT_MAX_MERGE_MB_FOR_FORCED_MERGE, jdouble)

FOUNDATION_EXPORT void OrgApacheLuceneIndexLogByteSizeMergePolicy_init(OrgApacheLuceneIndexLogByteSizeMergePolicy *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexLogByteSizeMergePolicy *new_OrgApacheLuceneIndexLogByteSizeMergePolicy_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexLogByteSizeMergePolicy *create_OrgApacheLuceneIndexLogByteSizeMergePolicy_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLogByteSizeMergePolicy)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexLogByteSizeMergePolicy")
