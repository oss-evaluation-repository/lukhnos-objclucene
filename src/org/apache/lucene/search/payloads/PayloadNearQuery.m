//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadNearQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/payloads/AveragePayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadNearQuery.h"
#include "org/apache/lucene/search/payloads/PayloadSpanCollector.h"
#include "org/apache/lucene/search/similarities/Similarity.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanScorer.h"
#include "org/apache/lucene/search/spans/SpanWeight.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/payloads/PayloadNearQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight () {
 @public
  OrgApacheLuceneSearchPayloadsPayloadNearQuery *this$1_;
}

@end

@interface OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer () {
 @public
  OrgApacheLuceneSearchPayloadsPayloadNearQuery *this$0_;
  jint payloadsSeen_;
  OrgApacheLuceneSearchPayloadsPayloadSpanCollector *collector_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, collector_, OrgApacheLuceneSearchPayloadsPayloadSpanCollector *)

@implementation OrgApacheLuceneSearchPayloadsPayloadNearQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses
                                                         withInt:(jint)slop
                                                     withBoolean:(jboolean)inOrder {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(self, clauses, slop, inOrder);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses
                                                         withInt:(jint)slop
                                                     withBoolean:(jboolean)inOrder
                withOrgApacheLuceneSearchPayloadsPayloadFunction:(OrgApacheLuceneSearchPayloadsPayloadFunction *)function {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(self, clauses, slop, inOrder, function);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                                 withBoolean:(jboolean)needsScores {
  id<JavaUtilList> subWeights = create_JavaUtilArrayList_init();
  for (OrgApacheLuceneSearchSpansSpanQuery * __strong q in nil_chk(clauses_)) {
    [subWeights addWithId:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(q)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:false]];
  }
  return create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, subWeights, searcher, needsScores ? OrgApacheLuceneSearchSpansSpanQuery_getTermContextsWithJavaUtilCollection_(subWeights) : nil);
}

- (OrgApacheLuceneSearchPayloadsPayloadNearQuery *)java_clone {
  jint sz = [((id<JavaUtilList>) nil_chk(clauses_)) size];
  IOSObjectArray *newClauses = [IOSObjectArray arrayWithLength:sz type:OrgApacheLuceneSearchSpansSpanQuery_class_()];
  for (jint i = 0; i < sz; i++) {
    IOSObjectArray_Set(newClauses, i, (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk([((id<JavaUtilList>) nil_chk(clauses_)) getWithInt:i])) java_clone], [OrgApacheLuceneSearchSpansSpanQuery class]));
  }
  OrgApacheLuceneSearchPayloadsPayloadNearQuery *boostingNearQuery = create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(newClauses, slop_, inOrder_, function_);
  [boostingNearQuery setBoostWithFloat:[self getBoost]];
  return boostingNearQuery;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"payloadNear(["];
  id<JavaUtilIterator> i = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(clauses_)) iterator]);
  while ([((id<JavaUtilIterator>) nil_chk(i)) hasNext]) {
    OrgApacheLuceneSearchSpansSpanQuery *clause = JreRetainedLocalValue([i next]);
    [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) toStringWithNSString:field]];
    if ([i hasNext]) {
      [buffer appendWithNSString:@", "];
    }
  }
  [buffer appendWithNSString:@"], "];
  [buffer appendWithInt:slop_];
  [buffer appendWithNSString:@", "];
  [buffer appendWithBoolean:inOrder_];
  [buffer appendWithNSString:@")"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((jint) [((NSString *) nil_chk(fieldName_)) hash]);
  result = prime * result + ((jint) [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(function_)) hash]);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (![super isEqual:obj]) {
    return false;
  }
  OrgApacheLuceneSearchPayloadsPayloadNearQuery *other = (OrgApacheLuceneSearchPayloadsPayloadNearQuery *) cast_chk(obj, [OrgApacheLuceneSearchPayloadsPayloadNearQuery class]);
  return [((NSString *) nil_chk(fieldName_)) isEqual:((OrgApacheLuceneSearchPayloadsPayloadNearQuery *) nil_chk(other))->fieldName_] && [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(function_)) isEqual:other->function_];
}

- (void)dealloc {
  RELEASE_(fieldName_);
  RELEASE_(function_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanWeight;", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchPayloadsPayloadNearQuery;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanQueryArray:withInt:withBoolean:);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanQueryArray:withInt:withBoolean:withOrgApacheLuceneSearchPayloadsPayloadFunction:);
  methods[2].selector = @selector(createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:);
  methods[3].selector = @selector(java_clone);
  methods[4].selector = @selector(toStringWithNSString:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "fieldName_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "function_", "LOrgApacheLuceneSearchPayloadsPayloadFunction;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheLuceneSearchSpansSpanQuery;IZ", "[LOrgApacheLuceneSearchSpansSpanQuery;IZLOrgApacheLuceneSearchPayloadsPayloadFunction;", "createWeight", "LOrgApacheLuceneSearchIndexSearcher;Z", "LJavaIoIOException;", "clone", "toString", "LNSString;", "hashCode", "equals", "LNSObject;", "LOrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight;LOrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadNearQuery = { "PayloadNearQuery", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, 11, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadNearQuery;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *self, IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(self, clauses, slop, inOrder, create_OrgApacheLuceneSearchPayloadsAveragePayloadFunction_init());
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_, clauses, slop, inOrder)
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_, clauses, slop, inOrder)
}

void OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *self, IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(self, clauses, slop, inOrder);
  JreStrongAssign(&self->fieldName_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(IOSObjectArray_Get(nil_chk(clauses), 0))) getField], @"all clauses must have same non null field"));
  JreStrongAssign(&self->function_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(function));
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_, clauses, slop, inOrder, function)
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_, clauses, slop, inOrder, function)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadNearQuery)

@implementation OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:(OrgApacheLuceneSearchPayloadsPayloadNearQuery *)outer$
                                                     withJavaUtilList:(id<JavaUtilList>)subWeights
                               withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                      withJavaUtilMap:(id<JavaUtilMap>)terms {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, outer$, subWeights, searcher, terms);
  return self;
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchSpansSpans *spans = [super getSpansWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchSpansSpanWeight_Postings:JreLoadEnum(OrgApacheLuceneSearchSpansSpanWeight_Postings, PAYLOADS)];
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *simScorer = simWeight_ == nil ? nil : [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(similarity_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:simWeight_ withOrgApacheLuceneIndexLeafReaderContext:context];
  return (spans == nil) ? nil : create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(this$1_, spans, self, simScorer);
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *scorer = (OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *) cast_chk([self scorerWithOrgApacheLuceneIndexLeafReaderContext:context], [OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer class]);
  if (scorer != nil) {
    jint newDoc = [scorer advanceWithInt:doc];
    if (newDoc == doc) {
      jfloat freq = [scorer freq];
      OrgApacheLuceneSearchExplanation *freqExplanation = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(freq, JreStrcat("$F", @"phraseFreq=", freq), [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
      OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer = JreRetainedLocalValue([((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(similarity_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:simWeight_ withOrgApacheLuceneIndexLeafReaderContext:context]);
      OrgApacheLuceneSearchExplanation *scoreExplanation = JreRetainedLocalValue([((OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *) nil_chk(docScorer)) explainWithInt:doc withOrgApacheLuceneSearchExplanation:freqExplanation]);
      OrgApacheLuceneSearchExplanation *expl = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([((OrgApacheLuceneSearchExplanation *) nil_chk(scoreExplanation)) getValue], JreStrcat("$@$I$$$", @"weight(", [self getQuery], @" in ", doc, @") [", [[similarity_ java_getClass] getSimpleName], @"], result of:"), [IOSObjectArray arrayWithObjects:(id[]){ scoreExplanation } count:1 type:OrgApacheLuceneSearchExplanation_class_()]);
      NSString *field = JreRetainedLocalValue([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(((OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([self getQuery], [OrgApacheLuceneSearchSpansSpanQuery class])))) getField]);
      OrgApacheLuceneSearchExplanation *payloadExpl = JreRetainedLocalValue([((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$1_->function_)) explainWithInt:doc withNSString:field withInt:scorer->payloadsSeen_ withFloat:scorer->payloadScore_]);
      return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([((OrgApacheLuceneSearchExplanation *) nil_chk(expl)) getValue] * [((OrgApacheLuceneSearchExplanation *) nil_chk(payloadExpl)) getValue], @"PayloadNearQuery, product of:", [IOSObjectArray arrayWithObjects:(id[]){ expl, payloadExpl } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
    }
  }
  return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(@"no matching term", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (void)dealloc {
  RELEASE_(this$1_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, 2, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x1, 3, 4, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x1, 5, 6, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:withJavaUtilList:withOrgApacheLuceneSearchIndexSearcher:withJavaUtilMap:);
  methods[1].selector = @selector(scorerWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[2].selector = @selector(explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$1_", "LOrgApacheLuceneSearchPayloadsPayloadNearQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchPayloadsPayloadNearQuery;LJavaUtilList;LOrgApacheLuceneSearchIndexSearcher;LJavaUtilMap;", "LJavaIoIOException;", "(Ljava/util/List<Lorg/apache/lucene/search/spans/SpanWeight;>;Lorg/apache/lucene/search/IndexSearcher;Ljava/util/Map<Lorg/apache/lucene/index/Term;Lorg/apache/lucene/index/TermContext;>;)V", "scorer", "LOrgApacheLuceneIndexLeafReaderContext;", "explain", "LOrgApacheLuceneIndexLeafReaderContext;I", "LOrgApacheLuceneSearchPayloadsPayloadNearQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight = { "PayloadNearSpanWeight", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x1, 3, 1, 7, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *self, OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms) {
  JreStrongAssign(&self->this$1_, outer$);
  OrgApacheLuceneSearchSpansSpanNearQuery_SpanNearWeight_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, outer$, subWeights, searcher, terms);
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight, initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_, outer$, subWeights, searcher, terms)
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight, initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_, outer$, subWeights, searcher, terms)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight)

@implementation OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:(OrgApacheLuceneSearchPayloadsPayloadNearQuery *)outer$
                                  withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                             withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)weight
            withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, outer$, spans, weight, docScorer);
  return self;
}

- (void)processPayloadsWithJavaUtilCollection:(id<JavaUtilCollection>)payLoads
                                      withInt:(jint)start
                                      withInt:(jint)end {
  for (IOSByteArray * __strong thePayload in nil_chk(payLoads)) {
    JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(scratch_))->bytes_, thePayload);
    scratch_->offset_ = 0;
    scratch_->length_ = ((IOSByteArray *) nil_chk(thePayload))->size_;
    payloadScore_ = [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->function_)) currentScoreWithInt:[self docID] withNSString:this$0_->fieldName_ withInt:start withInt:end withInt:payloadsSeen_ withFloat:payloadScore_ withFloat:[((OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *) nil_chk(docScorer_)) computePayloadFactorWithInt:[self docID] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) startPosition] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) endPosition] withOrgApacheLuceneUtilBytesRef:scratch_]];
    ++payloadsSeen_;
  }
}

- (void)doStartCurrentDoc {
  payloadScore_ = 0;
  payloadsSeen_ = 0;
}

- (void)doCurrentSpans {
  [((OrgApacheLuceneSearchPayloadsPayloadSpanCollector *) nil_chk(collector_)) reset];
  [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) collectWithOrgApacheLuceneSearchSpansSpanCollector:collector_];
  [self processPayloadsWithJavaUtilCollection:[collector_ getPayloads] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) startPosition] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) endPosition]];
}

- (jfloat)scoreCurrentDoc {
  return [super scoreCurrentDoc] * [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->function_)) docScoreWithInt:[self docID] withNSString:this$0_->fieldName_ withInt:payloadsSeen_ withFloat:payloadScore_];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(spans_PayloadNearSpanScorer_);
  RELEASE_(collector_);
  RELEASE_(scratch_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:withOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchSpansSpanWeight:withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:);
  methods[1].selector = @selector(processPayloadsWithJavaUtilCollection:withInt:withInt:);
  methods[2].selector = @selector(doStartCurrentDoc);
  methods[3].selector = @selector(doCurrentSpans);
  methods[4].selector = @selector(scoreCurrentDoc);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchPayloadsPayloadNearQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "spans_PayloadNearSpanScorer_", "LOrgApacheLuceneSearchSpansSpans;", .constantValue.asLong = 0, 0x0, 5, -1, -1, -1 },
    { "payloadScore_", "F", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "payloadsSeen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "collector_", "LOrgApacheLuceneSearchPayloadsPayloadSpanCollector;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "scratch_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchPayloadsPayloadNearQuery;LOrgApacheLuceneSearchSpansSpans;LOrgApacheLuceneSearchSpansSpanWeight;LOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;", "LJavaIoIOException;", "processPayloads", "LJavaUtilCollection;II", "(Ljava/util/Collection<[B>;II)V", "spans", "LOrgApacheLuceneSearchPayloadsPayloadNearQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer = { "PayloadNearSpanScorer", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x1, 5, 6, 6, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *self, OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, spans, weight, docScorer);
  JreStrongAssignAndConsume(&self->collector_, new_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init());
  JreStrongAssignAndConsume(&self->scratch_, new_OrgApacheLuceneUtilBytesRef_init());
  JreStrongAssign(&self->spans_PayloadNearSpanScorer_, spans);
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_, outer$, spans, weight, docScorer)
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_, outer$, spans, weight, docScorer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer)
