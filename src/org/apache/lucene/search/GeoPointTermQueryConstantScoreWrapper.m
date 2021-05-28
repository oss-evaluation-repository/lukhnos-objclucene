//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointTermQueryConstantScoreWrapper.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/BulkScorer.h"
#include "org/apache/lucene/search/ConstantScoreScorer.h"
#include "org/apache/lucene/search/ConstantScoreWeight.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/GeoPointTermQuery.h"
#include "org/apache/lucene/search/GeoPointTermQueryConstantScoreWrapper.h"
#include "org/apache/lucene/search/GeoPointTermsEnum.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/DocIdSetBuilder.h"
#include "org/apache/lucene/util/GeoUtils.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/GeoPointTermQueryConstantScoreWrapper must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 : OrgApacheLuceneSearchConstantScoreWeight {
 @public
  OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper:(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *)outer$
                                                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

- (OrgApacheLuceneSearchDocIdSet *)getDocIDsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)set;

- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1)

__attribute__((unused)) static void OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchQuery *query);

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *new_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchQuery *query) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *create_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchQuery *query);

__attribute__((unused)) static OrgApacheLuceneSearchDocIdSet *OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_getDocIDsWithOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneIndexLeafReaderContext *context);

__attribute__((unused)) static OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneSearchDocIdSet *set);

@implementation OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper

- (instancetype)initPackagePrivateWithOrgApacheLuceneSearchGeoPointTermQuery:(OrgApacheLuceneSearchGeoPointTermQuery *)query {
  OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_initPackagePrivateWithOrgApacheLuceneSearchGeoPointTermQuery_(self, query);
  return self;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return [((OrgApacheLuceneSearchGeoPointTermQuery *) nil_chk(query_)) description];
}

- (jboolean)isEqual:(id)o {
  if ([super isEqual:o] == false) {
    return false;
  }
  OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *that = (OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *) cast_chk(o, [OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper class]);
  return [((OrgApacheLuceneSearchGeoPointTermQuery *) nil_chk(self->query_)) isEqual:((OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *) nil_chk(that))->query_] && [self getBoost] == [that getBoost];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((OrgApacheLuceneSearchGeoPointTermQuery *) nil_chk(query_)) hash]);
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return create_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_(self, self);
}

- (void)dealloc {
  RELEASE_(query_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 6, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 7, 8, 9, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneSearchGeoPointTermQuery:);
  methods[1].selector = @selector(toStringWithNSString:);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "query_", "LOrgApacheLuceneSearchGeoPointTermQuery;", .constantValue.asLong = 0, 0x14, -1, -1, 10, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchGeoPointTermQuery;", "(TQ;)V", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", "createWeight", "LOrgApacheLuceneSearchIndexSearcher;Z", "LJavaIoIOException;", "TQ;", "<Q:Lorg/apache/lucene/search/GeoPointTermQuery;>Lorg/apache/lucene/search/Query;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper = { "GeoPointTermQueryConstantScoreWrapper", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 5, 1, -1, -1, -1, 11, -1 };
  return &_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper;
}

@end

void OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_initPackagePrivateWithOrgApacheLuceneSearchGeoPointTermQuery_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *self, OrgApacheLuceneSearchGeoPointTermQuery *query) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->query_, query);
}

OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *new_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_initPackagePrivateWithOrgApacheLuceneSearchGeoPointTermQuery_(OrgApacheLuceneSearchGeoPointTermQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper, initPackagePrivateWithOrgApacheLuceneSearchGeoPointTermQuery_, query)
}

OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *create_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_initPackagePrivateWithOrgApacheLuceneSearchGeoPointTermQuery_(OrgApacheLuceneSearchGeoPointTermQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper, initPackagePrivateWithOrgApacheLuceneSearchGeoPointTermQuery_, query)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper)

@implementation OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1

- (instancetype)initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper:(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *)outer$
                                                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_(self, outer$, query);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIDsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  return OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_getDocIDsWithOrgApacheLuceneIndexLeafReaderContext_(self, context);
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)set {
  return OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(self, set);
}

- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchScorer *scorer = OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(self, OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_getDocIDsWithOrgApacheLuceneIndexLeafReaderContext_(self, context));
  if (scorer == nil) {
    return JreRetainedLocalValue(nil);
  }
  return create_OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(scorer);
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  return OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(self, OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_getDocIDsWithOrgApacheLuceneIndexLeafReaderContext_(self, context));
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x2, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x2, 4, 5, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBulkScorer;", 0x1, 6, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x1, 4, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper:withOrgApacheLuceneSearchQuery:);
  methods[1].selector = @selector(getDocIDsWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[2].selector = @selector(scorerWithOrgApacheLuceneSearchDocIdSet:);
  methods[3].selector = @selector(bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[4].selector = @selector(scorerWithOrgApacheLuceneIndexLeafReaderContext:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper;LOrgApacheLuceneSearchQuery;", "getDocIDs", "LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "scorer", "LOrgApacheLuceneSearchDocIdSet;", "bulkScorer", "Lorg/apache/lucene/search/GeoPointTermQueryConstantScoreWrapper<TQ;>;", "LOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper;", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 5, 1, 8, -1, 9, -1, -1 };
  return &_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1;
}

@end

void OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchQuery *query) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(self, query);
}

OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *new_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1, initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_, outer$, query)
}

OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *create_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1, initWithOrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchQuery_, outer$, query)
}

OrgApacheLuceneSearchDocIdSet *OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_getDocIDsWithOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneIndexLeafReaderContext *context) {
  OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader])) termsWithNSString:((OrgApacheLuceneSearchGeoPointTermQuery *) nil_chk(self->this$0_->query_))->field_];
  if (terms == nil) {
    return JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY);
  }
  OrgApacheLuceneSearchGeoPointTermsEnum *termsEnum = (OrgApacheLuceneSearchGeoPointTermsEnum *) cast_chk(([self->this$0_->query_ getTermsEnumWithOrgApacheLuceneIndexTerms:terms]), [OrgApacheLuceneSearchGeoPointTermsEnum class]);
  JreAssert(termsEnum != nil, @"org/apache/lucene/search/GeoPointTermQueryConstantScoreWrapper.java:73 condition failed: assert termsEnum != null;");
  OrgApacheLuceneIndexLeafReader *reader = JreRetainedLocalValue([context reader]);
  OrgApacheLuceneUtilDocIdSetBuilder *builder = create_OrgApacheLuceneUtilDocIdSetBuilder_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc]);
  OrgApacheLuceneIndexPostingsEnum *docs = nil;
  OrgApacheLuceneIndexSortedNumericDocValues *sdv = JreRetainedLocalValue([reader getSortedNumericDocValuesWithNSString:self->this$0_->query_->field_]);
  while ([((OrgApacheLuceneSearchGeoPointTermsEnum *) nil_chk(termsEnum)) next] != nil) {
    docs = [termsEnum postingsWithOrgApacheLuceneIndexPostingsEnum:docs withInt:OrgApacheLuceneIndexPostingsEnum_NONE];
    if ([termsEnum boundaryTerm]) {
      jint docId = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(docs)) nextDoc];
      do {
        [((OrgApacheLuceneIndexSortedNumericDocValues *) nil_chk(sdv)) setDocumentWithInt:docId];
        for (jint i = 0; i < [sdv count]; ++i) {
          jlong hash_ = [sdv valueAtWithInt:i];
          jdouble lon = OrgApacheLuceneUtilGeoUtils_mortonUnhashLonWithLong_(hash_);
          jdouble lat = OrgApacheLuceneUtilGeoUtils_mortonUnhashLatWithLong_(hash_);
          if ([termsEnum postFilterWithDouble:lon withDouble:lat]) {
            [builder addWithInt:docId];
          }
        }
      }
      while ((docId = [docs nextDoc]) != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS);
    }
    else {
      [builder addWithOrgApacheLuceneSearchDocIdSetIterator:docs];
    }
  }
  return [builder build];
}

OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneSearchDocIdSet *set) {
  if (set == nil) {
    return nil;
  }
  OrgApacheLuceneSearchDocIdSetIterator *disi = [set iterator];
  if (disi == nil) {
    return nil;
  }
  return create_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(self, [self score], disi);
}
