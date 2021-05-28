//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/PerFieldSimilarityWrapper.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/CollectionStatistics.h"
#include "org/apache/lucene/search/similarities/PerFieldSimilarityWrapper.h"
#include "org/apache/lucene/search/similarities/Similarity.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/similarities/PerFieldSimilarityWrapper must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)computeNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state {
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk([self getWithNSString:[((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getName]])) computeNormWithOrgApacheLuceneIndexFieldInvertState:state];
}

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)computeWeightWithFloat:(jfloat)queryBoost
                                    withOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                     withOrgApacheLuceneSearchTermStatisticsArray:(IOSObjectArray *)termStats {
  OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *weight = create_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init();
  JreStrongAssign(&weight->delegate_, [self getWithNSString:[((OrgApacheLuceneSearchCollectionStatistics *) nil_chk(collectionStats)) field]]);
  JreStrongAssign(&weight->delegateWeight_, [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(weight->delegate_)) computeWeightWithFloat:queryBoost withOrgApacheLuceneSearchCollectionStatistics:collectionStats withOrgApacheLuceneSearchTermStatisticsArray:termStats]);
  return weight;
}

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)weight
                                                                                    withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *perFieldWeight = (OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *) cast_chk(weight, [OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight class]);
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(((OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *) nil_chk(perFieldWeight))->delegate_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:perFieldWeight->delegateWeight_ withOrgApacheLuceneIndexLeafReaderContext:context];
}

- (OrgApacheLuceneSearchSimilaritiesSimilarity *)getWithNSString:(NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x11, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight;", 0x91, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;", 0x11, 4, 5, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilaritiesSimilarity;", 0x401, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(computeNormWithOrgApacheLuceneIndexFieldInvertState:);
  methods[2].selector = @selector(computeWeightWithFloat:withOrgApacheLuceneSearchCollectionStatistics:withOrgApacheLuceneSearchTermStatisticsArray:);
  methods[3].selector = @selector(simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[4].selector = @selector(getWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "computeNorm", "LOrgApacheLuceneIndexFieldInvertState;", "computeWeight", "FLOrgApacheLuceneSearchCollectionStatistics;[LOrgApacheLuceneSearchTermStatistics;", "simScorer", "LOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "get", "LNSString;", "LOrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper = { "PerFieldSimilarityWrapper", "org.apache.lucene.search.similarities", ptrTable, methods, NULL, 7, 0x401, 5, 0, -1, 9, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper;
}

@end

void OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_init(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper *self) {
  OrgApacheLuceneSearchSimilaritiesSimilarity_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper)

@implementation OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)getValueForNormalization {
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *) nil_chk(delegateWeight_)) getValueForNormalization];
}

- (void)normalizeWithFloat:(jfloat)queryNorm
                 withFloat:(jfloat)topLevelBoost {
  [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *) nil_chk(delegateWeight_)) normalizeWithFloat:queryNorm withFloat:topLevelBoost];
}

- (void)dealloc {
  RELEASE_(delegate_);
  RELEASE_(delegateWeight_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getValueForNormalization);
  methods[2].selector = @selector(normalizeWithFloat:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LOrgApacheLuceneSearchSimilaritiesSimilarity;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "delegateWeight_", "LOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "normalize", "FF", "LOrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight = { "PerFieldSimWeight", "org.apache.lucene.search.similarities", ptrTable, methods, fields, 7, 0x8, 3, 2, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight;
}

@end

void OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *self) {
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight_init(self);
}

OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *new_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight, init)
}

OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *create_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight)
