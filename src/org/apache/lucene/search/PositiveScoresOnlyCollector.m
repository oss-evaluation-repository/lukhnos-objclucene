//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/PositiveScoresOnlyCollector.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/FilterCollector.h"
#include "org/apache/lucene/search/FilterLeafCollector.h"
#include "org/apache/lucene/search/LeafCollector.h"
#include "org/apache/lucene/search/PositiveScoresOnlyCollector.h"
#include "org/apache/lucene/search/ScoreCachingWrappingScorer.h"
#include "org/apache/lucene/search/Scorer.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/PositiveScoresOnlyCollector must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchPositiveScoresOnlyCollector_1 : OrgApacheLuceneSearchFilterLeafCollector {
 @public
  OrgApacheLuceneSearchScorer *scorer_;
}

- (instancetype)initWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)inArg;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (void)collectWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPositiveScoresOnlyCollector_1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPositiveScoresOnlyCollector_1, scorer_, OrgApacheLuceneSearchScorer *)

__attribute__((unused)) static void OrgApacheLuceneSearchPositiveScoresOnlyCollector_1_initWithOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchPositiveScoresOnlyCollector_1 *self, id<OrgApacheLuceneSearchLeafCollector> inArg);

__attribute__((unused)) static OrgApacheLuceneSearchPositiveScoresOnlyCollector_1 *new_OrgApacheLuceneSearchPositiveScoresOnlyCollector_1_initWithOrgApacheLuceneSearchLeafCollector_(id<OrgApacheLuceneSearchLeafCollector> inArg) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchPositiveScoresOnlyCollector_1 *create_OrgApacheLuceneSearchPositiveScoresOnlyCollector_1_initWithOrgApacheLuceneSearchLeafCollector_(id<OrgApacheLuceneSearchLeafCollector> inArg);

@implementation OrgApacheLuceneSearchPositiveScoresOnlyCollector

- (instancetype)initWithOrgApacheLuceneSearchCollector:(id<OrgApacheLuceneSearchCollector>)inArg {
  OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(self, inArg);
  return self;
}

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  return create_OrgApacheLuceneSearchPositiveScoresOnlyCollector_1_initWithOrgApacheLuceneSearchLeafCollector_([super getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:context]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchLeafCollector;", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchCollector:);
  methods[1].selector = @selector(getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchCollector;", "getLeafCollector", "LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPositiveScoresOnlyCollector = { "PositiveScoresOnlyCollector", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPositiveScoresOnlyCollector;
}

@end

void OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(OrgApacheLuceneSearchPositiveScoresOnlyCollector *self, id<OrgApacheLuceneSearchCollector> inArg) {
  OrgApacheLuceneSearchFilterCollector_initWithOrgApacheLuceneSearchCollector_(self, inArg);
}

OrgApacheLuceneSearchPositiveScoresOnlyCollector *new_OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(id<OrgApacheLuceneSearchCollector> inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPositiveScoresOnlyCollector, initWithOrgApacheLuceneSearchCollector_, inArg)
}

OrgApacheLuceneSearchPositiveScoresOnlyCollector *create_OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(id<OrgApacheLuceneSearchCollector> inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPositiveScoresOnlyCollector, initWithOrgApacheLuceneSearchCollector_, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPositiveScoresOnlyCollector)

@implementation OrgApacheLuceneSearchPositiveScoresOnlyCollector_1

- (instancetype)initWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)inArg {
  OrgApacheLuceneSearchPositiveScoresOnlyCollector_1_initWithOrgApacheLuceneSearchLeafCollector_(self, inArg);
  return self;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  JreStrongAssignAndConsume(&self->scorer_, new_OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(scorer));
  [((id<OrgApacheLuceneSearchLeafCollector>) nil_chk(in_)) setScorerWithOrgApacheLuceneSearchScorer:self->scorer_];
}

- (void)collectWithInt:(jint)doc {
  if ([((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score] > 0) {
    [((id<OrgApacheLuceneSearchLeafCollector>) nil_chk(in_)) collectWithInt:doc];
  }
}

- (void)dealloc {
  RELEASE_(scorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchLeafCollector:);
  methods[1].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  methods[2].selector = @selector(collectWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "scorer_", "LOrgApacheLuceneSearchScorer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchLeafCollector;", "setScorer", "LOrgApacheLuceneSearchScorer;", "LJavaIoIOException;", "collect", "I", "LOrgApacheLuceneSearchPositiveScoresOnlyCollector;", "getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPositiveScoresOnlyCollector_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 3, 1, 6, -1, 7, -1, -1 };
  return &_OrgApacheLuceneSearchPositiveScoresOnlyCollector_1;
}

@end

void OrgApacheLuceneSearchPositiveScoresOnlyCollector_1_initWithOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchPositiveScoresOnlyCollector_1 *self, id<OrgApacheLuceneSearchLeafCollector> inArg) {
  OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(self, inArg);
}

OrgApacheLuceneSearchPositiveScoresOnlyCollector_1 *new_OrgApacheLuceneSearchPositiveScoresOnlyCollector_1_initWithOrgApacheLuceneSearchLeafCollector_(id<OrgApacheLuceneSearchLeafCollector> inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPositiveScoresOnlyCollector_1, initWithOrgApacheLuceneSearchLeafCollector_, inArg)
}

OrgApacheLuceneSearchPositiveScoresOnlyCollector_1 *create_OrgApacheLuceneSearchPositiveScoresOnlyCollector_1_initWithOrgApacheLuceneSearchLeafCollector_(id<OrgApacheLuceneSearchLeafCollector> inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPositiveScoresOnlyCollector_1, initWithOrgApacheLuceneSearchLeafCollector_, inArg)
}
