//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModelIF.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/similarities/BasicModel.h"
#include "org/apache/lucene/search/similarities/BasicModelIF.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/similarities/BasicModelIF must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchSimilaritiesBasicModelIF

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesBasicModelIF_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn {
  jlong N = [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getNumberOfDocuments];
  jlong F = [stats getTotalTermFreq];
  return tfn * (jfloat) (OrgApacheLuceneSearchSimilaritiesSimilarityBase_log2WithDouble_(1 + (N + 1) / (F + 0.5)));
}

- (NSString *)description {
  return @"I(F)";
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x11, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "score", "LOrgApacheLuceneSearchSimilaritiesBasicStats;F", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesBasicModelIF = { "BasicModelIF", "org.apache.lucene.search.similarities", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesBasicModelIF;
}

@end

void OrgApacheLuceneSearchSimilaritiesBasicModelIF_init(OrgApacheLuceneSearchSimilaritiesBasicModelIF *self) {
  OrgApacheLuceneSearchSimilaritiesBasicModel_init(self);
}

OrgApacheLuceneSearchSimilaritiesBasicModelIF *new_OrgApacheLuceneSearchSimilaritiesBasicModelIF_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesBasicModelIF, init)
}

OrgApacheLuceneSearchSimilaritiesBasicModelIF *create_OrgApacheLuceneSearchSimilaritiesBasicModelIF_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesBasicModelIF, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesBasicModelIF)
