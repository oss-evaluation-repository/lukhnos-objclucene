//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TopDocs.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/FieldDoc.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/TopFieldDocs.h"
#include "org/apache/lucene/util/PriorityQueue.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/TopDocs must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchTopDocs () {
 @public
  /*!
   @brief Stores the maximum score value encountered, needed for normalizing.
   */
  jfloat maxScore_;
}

/*!
 @brief Auxiliary method used by the <code>merge</code> impls.A sort value of null
   is used to indicate that docs should be sorted by score.
 */
+ (OrgApacheLuceneSearchTopDocs *)mergeAuxWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                withInt:(jint)start
                                                                withInt:(jint)size
                                  withOrgApacheLuceneSearchTopDocsArray:(IOSObjectArray *)shardHits;

@end

__attribute__((unused)) static OrgApacheLuceneSearchTopDocs *OrgApacheLuceneSearchTopDocs_mergeAuxWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchSort *sort, jint start, jint size, IOSObjectArray *shardHits);

@interface OrgApacheLuceneSearchTopDocs_ShardRef : NSObject {
 @public
  jint shardIndex_;
  jint hitIndex_;
}

- (instancetype)initWithInt:(jint)shardIndex;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopDocs_ShardRef)

__attribute__((unused)) static void OrgApacheLuceneSearchTopDocs_ShardRef_initWithInt_(OrgApacheLuceneSearchTopDocs_ShardRef *self, jint shardIndex);

__attribute__((unused)) static OrgApacheLuceneSearchTopDocs_ShardRef *new_OrgApacheLuceneSearchTopDocs_ShardRef_initWithInt_(jint shardIndex) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopDocs_ShardRef *create_OrgApacheLuceneSearchTopDocs_ShardRef_initWithInt_(jint shardIndex);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopDocs_ShardRef)

@interface OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue : OrgApacheLuceneUtilPriorityQueue {
 @public
  IOSObjectArray *shardHits_;
}

- (instancetype)initWithOrgApacheLuceneSearchTopDocsArray:(IOSObjectArray *)shardHits;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)first
                    withId:(OrgApacheLuceneSearchTopDocs_ShardRef *)second;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)pop;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)top;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)insertWithOverflowWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)arg0;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)addWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)arg0;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)getSentinelObject;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)updateTopWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)arg0;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)updateTop;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue, shardHits_, IOSObjectArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue_initWithOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue *self, IOSObjectArray *shardHits);

__attribute__((unused)) static OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue *new_OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue_initWithOrgApacheLuceneSearchTopDocsArray_(IOSObjectArray *shardHits) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue *create_OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue_initWithOrgApacheLuceneSearchTopDocsArray_(IOSObjectArray *shardHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue)

@interface OrgApacheLuceneSearchTopDocs_MergeSortQueue : OrgApacheLuceneUtilPriorityQueue {
 @public
  IOSObjectArray *shardHits_;
  IOSObjectArray *comparators_;
  IOSIntArray *reverseMul_;
}

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
            withOrgApacheLuceneSearchTopDocsArray:(IOSObjectArray *)shardHits;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)first
                    withId:(OrgApacheLuceneSearchTopDocs_ShardRef *)second;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)pop;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)top;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)insertWithOverflowWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)arg0;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)addWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)arg0;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)getSentinelObject;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)updateTopWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)arg0;

- (OrgApacheLuceneSearchTopDocs_ShardRef *)updateTop;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopDocs_MergeSortQueue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopDocs_MergeSortQueue, shardHits_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopDocs_MergeSortQueue, comparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopDocs_MergeSortQueue, reverseMul_, IOSIntArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchTopDocs_MergeSortQueue_initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchTopDocs_MergeSortQueue *self, OrgApacheLuceneSearchSort *sort, IOSObjectArray *shardHits);

__attribute__((unused)) static OrgApacheLuceneSearchTopDocs_MergeSortQueue *new_OrgApacheLuceneSearchTopDocs_MergeSortQueue_initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchSort *sort, IOSObjectArray *shardHits) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopDocs_MergeSortQueue *create_OrgApacheLuceneSearchTopDocs_MergeSortQueue_initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchSort *sort, IOSObjectArray *shardHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopDocs_MergeSortQueue)

@implementation OrgApacheLuceneSearchTopDocs

- (jfloat)getMaxScore {
  return maxScore_;
}

- (void)setMaxScoreWithFloat:(jfloat)maxScore {
  self->maxScore_ = maxScore;
}

- (instancetype)initWithInt:(jint)totalHits
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)scoreDocs {
  OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(self, totalHits, scoreDocs);
  return self;
}

- (instancetype)initWithInt:(jint)totalHits
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)scoreDocs
                  withFloat:(jfloat)maxScore {
  OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(self, totalHits, scoreDocs, maxScore);
  return self;
}

+ (OrgApacheLuceneSearchTopDocs *)mergeWithInt:(jint)topN
         withOrgApacheLuceneSearchTopDocsArray:(IOSObjectArray *)shardHits {
  return OrgApacheLuceneSearchTopDocs_mergeWithInt_withOrgApacheLuceneSearchTopDocsArray_(topN, shardHits);
}

+ (OrgApacheLuceneSearchTopDocs *)mergeWithInt:(jint)start
                                       withInt:(jint)topN
         withOrgApacheLuceneSearchTopDocsArray:(IOSObjectArray *)shardHits {
  return OrgApacheLuceneSearchTopDocs_mergeWithInt_withInt_withOrgApacheLuceneSearchTopDocsArray_(start, topN, shardHits);
}

+ (OrgApacheLuceneSearchTopFieldDocs *)mergeWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                  withInt:(jint)topN
                               withOrgApacheLuceneSearchTopFieldDocsArray:(IOSObjectArray *)shardHits {
  return OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(sort, topN, shardHits);
}

+ (OrgApacheLuceneSearchTopFieldDocs *)mergeWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                  withInt:(jint)start
                                                                  withInt:(jint)topN
                               withOrgApacheLuceneSearchTopFieldDocsArray:(IOSObjectArray *)shardHits {
  return OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(sort, start, topN, shardHits);
}

+ (OrgApacheLuceneSearchTopDocs *)mergeAuxWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                withInt:(jint)start
                                                                withInt:(jint)size
                                  withOrgApacheLuceneSearchTopDocsArray:(IOSObjectArray *)shardHits {
  return OrgApacheLuceneSearchTopDocs_mergeAuxWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopDocsArray_(sort, start, size, shardHits);
}

- (void)dealloc {
  RELEASE_(scoreDocs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopDocs;", 0x9, 4, 5, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopDocs;", 0x9, 4, 7, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopFieldDocs;", 0x9, 4, 8, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopFieldDocs;", 0x9, 4, 9, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopDocs;", 0xa, 10, 11, 6, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getMaxScore);
  methods[1].selector = @selector(setMaxScoreWithFloat:);
  methods[2].selector = @selector(initWithInt:withOrgApacheLuceneSearchScoreDocArray:);
  methods[3].selector = @selector(initWithInt:withOrgApacheLuceneSearchScoreDocArray:withFloat:);
  methods[4].selector = @selector(mergeWithInt:withOrgApacheLuceneSearchTopDocsArray:);
  methods[5].selector = @selector(mergeWithInt:withInt:withOrgApacheLuceneSearchTopDocsArray:);
  methods[6].selector = @selector(mergeWithOrgApacheLuceneSearchSort:withInt:withOrgApacheLuceneSearchTopFieldDocsArray:);
  methods[7].selector = @selector(mergeWithOrgApacheLuceneSearchSort:withInt:withInt:withOrgApacheLuceneSearchTopFieldDocsArray:);
  methods[8].selector = @selector(mergeAuxWithOrgApacheLuceneSearchSort:withInt:withInt:withOrgApacheLuceneSearchTopDocsArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "totalHits_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "scoreDocs_", "[LOrgApacheLuceneSearchScoreDoc;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "maxScore_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setMaxScore", "F", "I[LOrgApacheLuceneSearchScoreDoc;", "I[LOrgApacheLuceneSearchScoreDoc;F", "merge", "I[LOrgApacheLuceneSearchTopDocs;", "LJavaIoIOException;", "II[LOrgApacheLuceneSearchTopDocs;", "LOrgApacheLuceneSearchSort;I[LOrgApacheLuceneSearchTopFieldDocs;", "LOrgApacheLuceneSearchSort;II[LOrgApacheLuceneSearchTopFieldDocs;", "mergeAux", "LOrgApacheLuceneSearchSort;II[LOrgApacheLuceneSearchTopDocs;", "LOrgApacheLuceneSearchTopDocs_ShardRef;LOrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue;LOrgApacheLuceneSearchTopDocs_MergeSortQueue;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopDocs = { "TopDocs", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 9, 3, -1, 12, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTopDocs;
}

@end

void OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(OrgApacheLuceneSearchTopDocs *self, jint totalHits, IOSObjectArray *scoreDocs) {
  OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(self, totalHits, scoreDocs, JavaLangFloat_NaN);
}

OrgApacheLuceneSearchTopDocs *new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(jint totalHits, IOSObjectArray *scoreDocs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopDocs, initWithInt_withOrgApacheLuceneSearchScoreDocArray_, totalHits, scoreDocs)
}

OrgApacheLuceneSearchTopDocs *create_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(jint totalHits, IOSObjectArray *scoreDocs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopDocs, initWithInt_withOrgApacheLuceneSearchScoreDocArray_, totalHits, scoreDocs)
}

void OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(OrgApacheLuceneSearchTopDocs *self, jint totalHits, IOSObjectArray *scoreDocs, jfloat maxScore) {
  NSObject_init(self);
  self->totalHits_ = totalHits;
  JreStrongAssign(&self->scoreDocs_, scoreDocs);
  self->maxScore_ = maxScore;
}

OrgApacheLuceneSearchTopDocs *new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(jint totalHits, IOSObjectArray *scoreDocs, jfloat maxScore) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopDocs, initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_, totalHits, scoreDocs, maxScore)
}

OrgApacheLuceneSearchTopDocs *create_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(jint totalHits, IOSObjectArray *scoreDocs, jfloat maxScore) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopDocs, initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_, totalHits, scoreDocs, maxScore)
}

OrgApacheLuceneSearchTopDocs *OrgApacheLuceneSearchTopDocs_mergeWithInt_withOrgApacheLuceneSearchTopDocsArray_(jint topN, IOSObjectArray *shardHits) {
  OrgApacheLuceneSearchTopDocs_initialize();
  return OrgApacheLuceneSearchTopDocs_mergeWithInt_withInt_withOrgApacheLuceneSearchTopDocsArray_(0, topN, shardHits);
}

OrgApacheLuceneSearchTopDocs *OrgApacheLuceneSearchTopDocs_mergeWithInt_withInt_withOrgApacheLuceneSearchTopDocsArray_(jint start, jint topN, IOSObjectArray *shardHits) {
  OrgApacheLuceneSearchTopDocs_initialize();
  return OrgApacheLuceneSearchTopDocs_mergeAuxWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopDocsArray_(nil, start, topN, shardHits);
}

OrgApacheLuceneSearchTopFieldDocs *OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(OrgApacheLuceneSearchSort *sort, jint topN, IOSObjectArray *shardHits) {
  OrgApacheLuceneSearchTopDocs_initialize();
  return OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(sort, 0, topN, shardHits);
}

OrgApacheLuceneSearchTopFieldDocs *OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(OrgApacheLuceneSearchSort *sort, jint start, jint topN, IOSObjectArray *shardHits) {
  OrgApacheLuceneSearchTopDocs_initialize();
  if (sort == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"sort must be non-null when merging field-docs");
  }
  return (OrgApacheLuceneSearchTopFieldDocs *) cast_chk(OrgApacheLuceneSearchTopDocs_mergeAuxWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopDocsArray_(sort, start, topN, shardHits), [OrgApacheLuceneSearchTopFieldDocs class]);
}

OrgApacheLuceneSearchTopDocs *OrgApacheLuceneSearchTopDocs_mergeAuxWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchSort *sort, jint start, jint size, IOSObjectArray *shardHits) {
  OrgApacheLuceneSearchTopDocs_initialize();
  OrgApacheLuceneUtilPriorityQueue *queue;
  if (sort == nil) {
    queue = create_OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue_initWithOrgApacheLuceneSearchTopDocsArray_(shardHits);
  }
  else {
    queue = create_OrgApacheLuceneSearchTopDocs_MergeSortQueue_initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_(sort, shardHits);
  }
  jint totalHitCount = 0;
  jint availHitCount = 0;
  jfloat maxScore = JavaLangFloat_MIN_VALUE;
  for (jint shardIDX = 0; shardIDX < ((IOSObjectArray *) nil_chk(shardHits))->size_; shardIDX++) {
    OrgApacheLuceneSearchTopDocs *shard = IOSObjectArray_Get(shardHits, shardIDX);
    totalHitCount += ((OrgApacheLuceneSearchTopDocs *) nil_chk(shard))->totalHits_;
    if (shard->scoreDocs_ != nil && shard->scoreDocs_->size_ > 0) {
      availHitCount += shard->scoreDocs_->size_;
      [queue addWithId:create_OrgApacheLuceneSearchTopDocs_ShardRef_initWithInt_(shardIDX)];
      maxScore = JavaLangMath_maxWithFloat_withFloat_(maxScore, [shard getMaxScore]);
    }
  }
  if (availHitCount == 0) {
    maxScore = JavaLangFloat_NaN;
  }
  IOSObjectArray *hits;
  if (availHitCount <= start) {
    hits = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()];
  }
  else {
    hits = [IOSObjectArray arrayWithLength:JavaLangMath_minWithInt_withInt_(size, availHitCount - start) type:OrgApacheLuceneSearchScoreDoc_class_()];
    jint requestedResultWindow = start + size;
    jint numIterOnHits = JavaLangMath_minWithInt_withInt_(availHitCount, requestedResultWindow);
    jint hitUpto = 0;
    while (hitUpto < numIterOnHits) {
      JreAssert([queue size] > 0, @"org/apache/lucene/search/TopDocs.java:274 condition failed: assert queue.size() > 0;");
      OrgApacheLuceneSearchTopDocs_ShardRef *ref = JreRetainedLocalValue([queue pop]);
      OrgApacheLuceneSearchScoreDoc *hit = IOSObjectArray_Get(nil_chk(((OrgApacheLuceneSearchTopDocs *) nil_chk(IOSObjectArray_Get(shardHits, ((OrgApacheLuceneSearchTopDocs_ShardRef *) nil_chk(ref))->shardIndex_)))->scoreDocs_), ref->hitIndex_++);
      ((OrgApacheLuceneSearchScoreDoc *) nil_chk(hit))->shardIndex_ = ref->shardIndex_;
      if (hitUpto >= start) {
        IOSObjectArray_Set(hits, hitUpto - start, hit);
      }
      hitUpto++;
      if (ref->hitIndex_ < ((OrgApacheLuceneSearchTopDocs *) nil_chk(IOSObjectArray_Get(shardHits, ref->shardIndex_)))->scoreDocs_->size_) {
        [queue addWithId:ref];
      }
    }
  }
  if (sort == nil) {
    return create_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(totalHitCount, hits, maxScore);
  }
  else {
    return create_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(totalHitCount, hits, [sort getSort], maxScore);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopDocs)

@implementation OrgApacheLuceneSearchTopDocs_ShardRef

- (instancetype)initWithInt:(jint)shardIndex {
  OrgApacheLuceneSearchTopDocs_ShardRef_initWithInt_(self, shardIndex);
  return self;
}

- (NSString *)description {
  return JreStrcat("$I$IC", @"ShardRef(shardIndex=", shardIndex_, @" hitIndex=", hitIndex_, ')');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "shardIndex_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "hitIndex_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "toString", "LOrgApacheLuceneSearchTopDocs;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopDocs_ShardRef = { "ShardRef", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0xa, 2, 2, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTopDocs_ShardRef;
}

@end

void OrgApacheLuceneSearchTopDocs_ShardRef_initWithInt_(OrgApacheLuceneSearchTopDocs_ShardRef *self, jint shardIndex) {
  NSObject_init(self);
  self->shardIndex_ = shardIndex;
}

OrgApacheLuceneSearchTopDocs_ShardRef *new_OrgApacheLuceneSearchTopDocs_ShardRef_initWithInt_(jint shardIndex) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopDocs_ShardRef, initWithInt_, shardIndex)
}

OrgApacheLuceneSearchTopDocs_ShardRef *create_OrgApacheLuceneSearchTopDocs_ShardRef_initWithInt_(jint shardIndex) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopDocs_ShardRef, initWithInt_, shardIndex)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopDocs_ShardRef)

@implementation OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue

- (instancetype)initWithOrgApacheLuceneSearchTopDocsArray:(IOSObjectArray *)shardHits {
  OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue_initWithOrgApacheLuceneSearchTopDocsArray_(self, shardHits);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)first
                    withId:(OrgApacheLuceneSearchTopDocs_ShardRef *)second {
  JreAssert(!JreObjectEqualsEquals(first, second), @"org/apache/lucene/search/TopDocs.java:95 condition failed: assert first != second;");
  jfloat firstScore = ((OrgApacheLuceneSearchScoreDoc *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(shardHits_), ((OrgApacheLuceneSearchTopDocs_ShardRef *) nil_chk(first))->shardIndex_)), first->hitIndex_)))->score_;
  jfloat secondScore = ((OrgApacheLuceneSearchScoreDoc *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(shardHits_, ((OrgApacheLuceneSearchTopDocs_ShardRef *) nil_chk(second))->shardIndex_)), second->hitIndex_)))->score_;
  if (firstScore < secondScore) {
    return false;
  }
  else if (firstScore > secondScore) {
    return true;
  }
  else {
    if (first->shardIndex_ < second->shardIndex_) {
      return true;
    }
    else if (first->shardIndex_ > second->shardIndex_) {
      return false;
    }
    else {
      JreAssert(first->hitIndex_ != second->hitIndex_, @"org/apache/lucene/search/TopDocs.java:112 condition failed: assert first.hitIndex != second.hitIndex;");
      return first->hitIndex_ < second->hitIndex_;
    }
  }
}

- (void)dealloc {
  RELEASE_(shardHits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchTopDocsArray:);
  methods[1].selector = @selector(lessThanWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "shardHits_", "[[LOrgApacheLuceneSearchScoreDoc;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheLuceneSearchTopDocs;", "lessThan", "LOrgApacheLuceneSearchTopDocs_ShardRef;LOrgApacheLuceneSearchTopDocs_ShardRef;", "LOrgApacheLuceneSearchTopDocs;", "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/TopDocs$ShardRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue = { "ScoreMergeSortQueue", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0xa, 2, 1, 3, -1, -1, 4, -1 };
  return &_OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue;
}

@end

void OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue_initWithOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue *self, IOSObjectArray *shardHits) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, ((IOSObjectArray *) nil_chk(shardHits))->size_);
  JreStrongAssignAndConsume(&self->shardHits_, [IOSObjectArray newArrayWithLength:shardHits->size_ type:IOSClass_arrayType(OrgApacheLuceneSearchScoreDoc_class_(), 1)]);
  for (jint shardIDX = 0; shardIDX < shardHits->size_; shardIDX++) {
    IOSObjectArray_Set(self->shardHits_, shardIDX, ((OrgApacheLuceneSearchTopDocs *) nil_chk(IOSObjectArray_Get(shardHits, shardIDX)))->scoreDocs_);
  }
}

OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue *new_OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue_initWithOrgApacheLuceneSearchTopDocsArray_(IOSObjectArray *shardHits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue, initWithOrgApacheLuceneSearchTopDocsArray_, shardHits)
}

OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue *create_OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue_initWithOrgApacheLuceneSearchTopDocsArray_(IOSObjectArray *shardHits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue, initWithOrgApacheLuceneSearchTopDocsArray_, shardHits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue)

@implementation OrgApacheLuceneSearchTopDocs_MergeSortQueue

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
            withOrgApacheLuceneSearchTopDocsArray:(IOSObjectArray *)shardHits {
  OrgApacheLuceneSearchTopDocs_MergeSortQueue_initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_(self, sort, shardHits);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchTopDocs_ShardRef *)first
                    withId:(OrgApacheLuceneSearchTopDocs_ShardRef *)second {
  JreAssert(!JreObjectEqualsEquals(first, second), @"org/apache/lucene/search/TopDocs.java:161 condition failed: assert first != second;");
  OrgApacheLuceneSearchFieldDoc *firstFD = (OrgApacheLuceneSearchFieldDoc *) cast_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(shardHits_), ((OrgApacheLuceneSearchTopDocs_ShardRef *) nil_chk(first))->shardIndex_)), first->hitIndex_), [OrgApacheLuceneSearchFieldDoc class]);
  OrgApacheLuceneSearchFieldDoc *secondFD = (OrgApacheLuceneSearchFieldDoc *) cast_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(shardHits_, ((OrgApacheLuceneSearchTopDocs_ShardRef *) nil_chk(second))->shardIndex_)), second->hitIndex_), [OrgApacheLuceneSearchFieldDoc class]);
  for (jint compIDX = 0; compIDX < ((IOSObjectArray *) nil_chk(comparators_))->size_; compIDX++) {
    OrgApacheLuceneSearchFieldComparator *comp = IOSObjectArray_Get(comparators_, compIDX);
    jint cmp = IOSIntArray_Get(nil_chk(reverseMul_), compIDX) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(comp)) compareValuesWithId:IOSObjectArray_Get(nil_chk(((OrgApacheLuceneSearchFieldDoc *) nil_chk(firstFD))->fields_), compIDX) withId:IOSObjectArray_Get(((OrgApacheLuceneSearchFieldDoc *) nil_chk(secondFD))->fields_, compIDX)];
    if (cmp != 0) {
      return cmp < 0;
    }
  }
  if (first->shardIndex_ < second->shardIndex_) {
    return true;
  }
  else if (first->shardIndex_ > second->shardIndex_) {
    return false;
  }
  else {
    JreAssert(first->hitIndex_ != second->hitIndex_, @"org/apache/lucene/search/TopDocs.java:189 condition failed: assert first.hitIndex != second.hitIndex;");
    return first->hitIndex_ < second->hitIndex_;
  }
}

- (void)dealloc {
  RELEASE_(shardHits_);
  RELEASE_(comparators_);
  RELEASE_(reverseMul_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSort:withOrgApacheLuceneSearchTopDocsArray:);
  methods[1].selector = @selector(lessThanWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "shardHits_", "[[LOrgApacheLuceneSearchScoreDoc;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "comparators_", "[LOrgApacheLuceneSearchFieldComparator;", .constantValue.asLong = 0, 0x10, -1, -1, 4, -1 },
    { "reverseMul_", "[I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSort;[LOrgApacheLuceneSearchTopDocs;", "LJavaIoIOException;", "lessThan", "LOrgApacheLuceneSearchTopDocs_ShardRef;LOrgApacheLuceneSearchTopDocs_ShardRef;", "[Lorg/apache/lucene/search/FieldComparator<*>;", "LOrgApacheLuceneSearchTopDocs;", "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/TopDocs$ShardRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopDocs_MergeSortQueue = { "MergeSortQueue", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0xa, 2, 3, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneSearchTopDocs_MergeSortQueue;
}

@end

void OrgApacheLuceneSearchTopDocs_MergeSortQueue_initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchTopDocs_MergeSortQueue *self, OrgApacheLuceneSearchSort *sort, IOSObjectArray *shardHits) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, ((IOSObjectArray *) nil_chk(shardHits))->size_);
  JreStrongAssignAndConsume(&self->shardHits_, [IOSObjectArray newArrayWithLength:shardHits->size_ type:IOSClass_arrayType(OrgApacheLuceneSearchScoreDoc_class_(), 1)]);
  for (jint shardIDX = 0; shardIDX < shardHits->size_; shardIDX++) {
    IOSObjectArray *shard = ((OrgApacheLuceneSearchTopDocs *) nil_chk(IOSObjectArray_Get(shardHits, shardIDX)))->scoreDocs_;
    if (shard != nil) {
      IOSObjectArray_Set(self->shardHits_, shardIDX, shard);
      for (jint hitIDX = 0; hitIDX < shard->size_; hitIDX++) {
        OrgApacheLuceneSearchScoreDoc *sd = IOSObjectArray_Get(shard, hitIDX);
        if (!([sd isKindOfClass:[OrgApacheLuceneSearchFieldDoc class]])) {
          @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$", @"shard ", shardIDX, @" was not sorted by the provided Sort (expected FieldDoc but got ScoreDoc)"));
        }
        OrgApacheLuceneSearchFieldDoc *fd = (OrgApacheLuceneSearchFieldDoc *) cast_chk(sd, [OrgApacheLuceneSearchFieldDoc class]);
        if (((OrgApacheLuceneSearchFieldDoc *) nil_chk(fd))->fields_ == nil) {
          @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$", @"shard ", shardIDX, @" did not set sort field values (FieldDoc.fields is null); you must pass fillFields=true to IndexSearcher.search on each shard"));
        }
      }
    }
  }
  IOSObjectArray *sortFields = [((OrgApacheLuceneSearchSort *) nil_chk(sort)) getSort];
  JreStrongAssignAndConsume(&self->comparators_, [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(sortFields))->size_ type:OrgApacheLuceneSearchFieldComparator_class_()]);
  JreStrongAssignAndConsume(&self->reverseMul_, [IOSIntArray newArrayWithLength:sortFields->size_]);
  for (jint compIDX = 0; compIDX < sortFields->size_; compIDX++) {
    OrgApacheLuceneSearchSortField *sortField = IOSObjectArray_Get(sortFields, compIDX);
    IOSObjectArray_Set(self->comparators_, compIDX, [((OrgApacheLuceneSearchSortField *) nil_chk(sortField)) getComparatorWithInt:1 withInt:compIDX]);
    *IOSIntArray_GetRef(self->reverseMul_, compIDX) = [sortField getReverse] ? -1 : 1;
  }
}

OrgApacheLuceneSearchTopDocs_MergeSortQueue *new_OrgApacheLuceneSearchTopDocs_MergeSortQueue_initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchSort *sort, IOSObjectArray *shardHits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopDocs_MergeSortQueue, initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_, sort, shardHits)
}

OrgApacheLuceneSearchTopDocs_MergeSortQueue *create_OrgApacheLuceneSearchTopDocs_MergeSortQueue_initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_(OrgApacheLuceneSearchSort *sort, IOSObjectArray *shardHits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopDocs_MergeSortQueue, initWithOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchTopDocsArray_, sort, shardHits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopDocs_MergeSortQueue)
