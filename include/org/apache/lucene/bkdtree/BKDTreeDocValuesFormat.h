//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/BKDTreeDocValuesFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat")
#ifdef RESTRICT_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat 1
#endif
#undef RESTRICT_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_) && (INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat || defined(INCLUDE_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat))
#define OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_

#define RESTRICT_OrgApacheLuceneCodecsDocValuesFormat 1
#define INCLUDE_OrgApacheLuceneCodecsDocValuesFormat 1
#include "org/apache/lucene/codecs/DocValuesFormat.h"

@class OrgApacheLuceneCodecsDocValuesConsumer;
@class OrgApacheLuceneCodecsDocValuesProducer;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSegmentWriteState;

/*!
 @brief A <code>DocValuesFormat</code> to efficiently index geo-spatial lat/lon points
  from <code>BKDPointField</code> for fast bounding-box (<code>BKDPointInBBoxQuery</code>)
  and polygon (<code>BKDPointInPolygonQuery</code>) queries.
 <p>This wraps <code>Lucene50DocValuesFormat</code>, but saves its own BKD tree
  structures to disk for fast query-time intersection. See <a href="https://www.cs.duke.edu/~pankaj/publications/papers/bkd-sstd.pdf">
 this paper</a>
  for details. 
 <p>The BKD tree slices up 2D (lat/lon) space into smaller and
  smaller rectangles, until the smallest rectangles have approximately
  between X/2 and X (X default is 1024) points in them, at which point
  such leaf cells are written as a block to disk, while the index tree
  structure records how space was sub-divided is loaded into HEAP
  at search time.  At search time, the tree is recursed based on whether
  each of left or right child overlap with the query shape, and once
  a leaf block is reached, all documents in that leaf block are collected
  if the cell is fully enclosed by the query shape, or filtered and then
  collected, if not. 
 <p>The index is also quite compact, because docs only appear once in
  the tree (no "prefix terms"). 
 <p>In addition to the files written by <code>Lucene50DocValuesFormat</code>, this format writes: 
 <ol>
    <li><tt>.kdd</tt>: BKD leaf data and index</li>
    <li><tt>.kdm</tt>: BKD metadata</li>
  </ol>
  
 <p>The disk format is experimental and free to change suddenly, and this code likely has new and exciting bugs!
 */
@interface OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat : OrgApacheLuceneCodecsDocValuesFormat
@property (readonly, copy, class) NSString *DATA_CODEC_NAME NS_SWIFT_NAME(DATA_CODEC_NAME);
@property (readonly, class) jint DATA_VERSION_START NS_SWIFT_NAME(DATA_VERSION_START);
@property (readonly, class) jint DATA_VERSION_CURRENT NS_SWIFT_NAME(DATA_VERSION_CURRENT);
@property (readonly, copy, class) NSString *DATA_EXTENSION NS_SWIFT_NAME(DATA_EXTENSION);
@property (readonly, copy, class) NSString *META_CODEC_NAME NS_SWIFT_NAME(META_CODEC_NAME);
@property (readonly, class) jint META_VERSION_START NS_SWIFT_NAME(META_VERSION_START);
@property (readonly, class) jint META_VERSION_CURRENT NS_SWIFT_NAME(META_VERSION_CURRENT);
@property (readonly, copy, class) NSString *META_EXTENSION NS_SWIFT_NAME(META_EXTENSION);

#pragma mark Public

/*!
 @brief Default constructor
 */
- (instancetype __nonnull)init;

/*!
 @brief Creates this with custom configuration.
 @param maxPointsInLeafNode Maximum number of points in each leaf cell.  Smaller values create a deeper tree with larger in-heap index and possibly     faster searching.  The default is 1024.
 @param maxPointsSortInHeap Maximum number of points where in-heap sort can be used.  When the number of points exceeds this, a (slower)     offline sort is used.  The default is 128 * 1024.
 */
- (instancetype __nonnull)initWithInt:(jint)maxPointsInLeafNode
                              withInt:(jint)maxPointsSortInHeap;

- (OrgApacheLuceneCodecsDocValuesConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (OrgApacheLuceneCodecsDocValuesProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat)

inline NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_get_DATA_CODEC_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_CODEC_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat, DATA_CODEC_NAME, NSString *)

inline jint OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_get_DATA_VERSION_START(void);
#define OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_VERSION_START 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat, DATA_VERSION_START, jint)

inline jint OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_get_DATA_VERSION_CURRENT(void);
#define OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_VERSION_CURRENT 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat, DATA_VERSION_CURRENT, jint)

inline NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_get_DATA_EXTENSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat, DATA_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_get_META_CODEC_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_CODEC_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat, META_CODEC_NAME, NSString *)

inline jint OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_get_META_VERSION_START(void);
#define OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_VERSION_START 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat, META_VERSION_START, jint)

inline jint OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_get_META_VERSION_CURRENT(void);
#define OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_VERSION_CURRENT 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat, META_VERSION_CURRENT, jint)

inline NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_get_META_EXTENSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat, META_EXTENSION, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_init(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *new_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *create_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_initWithInt_withInt_(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *self, jint maxPointsInLeafNode, jint maxPointsSortInHeap);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *new_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_initWithInt_withInt_(jint maxPointsInLeafNode, jint maxPointsSortInHeap) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *create_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_initWithInt_withInt_(jint maxPointsInLeafNode, jint maxPointsSortInHeap);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat")
