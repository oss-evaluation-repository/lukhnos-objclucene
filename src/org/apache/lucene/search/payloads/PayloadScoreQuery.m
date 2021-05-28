//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadScoreQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/payloads/PayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadScoreQuery.h"
#include "org/apache/lucene/search/similarities/Similarity.h"
#include "org/apache/lucene/search/spans/SpanCollector.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanScorer.h"
#include "org/apache/lucene/search/spans/SpanWeight.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/payloads/PayloadScoreQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchPayloadsPayloadScoreQuery () {
 @public
  OrgApacheLuceneSearchSpansSpanQuery *wrappedQuery_;
  OrgApacheLuceneSearchPayloadsPayloadFunction *function_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadScoreQuery, wrappedQuery_, OrgApacheLuceneSearchSpansSpanQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadScoreQuery, function_, OrgApacheLuceneSearchPayloadsPayloadFunction *)

@interface OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight : OrgApacheLuceneSearchSpansSpanWeight {
 @public
  OrgApacheLuceneSearchPayloadsPayloadScoreQuery *this$0_;
  OrgApacheLuceneSearchSpansSpanWeight *innerWeight_;
}

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery:(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *)outer$
                                withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                              withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)innerWeight;

- (void)extractTermContextsWithJavaUtilMap:(id<JavaUtilMap>)contexts;

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)ctx
                                     withOrgApacheLuceneSearchSpansSpanWeight_Postings:(OrgApacheLuceneSearchSpansSpanWeight_Postings *)requiredPostings;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)queryNorm
                 withFloat:(jfloat)topLevelBoost;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight, innerWeight_, OrgApacheLuceneSearchSpansSpanWeight *)

__attribute__((unused)) static void OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight *self, OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchSpansSpanWeight *innerWeight);

__attribute__((unused)) static OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight *new_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchSpansSpanWeight *innerWeight) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight *create_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchSpansSpanWeight *innerWeight);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight)

@interface OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer : OrgApacheLuceneSearchSpansSpanScorer < OrgApacheLuceneSearchSpansSpanCollector > {
 @public
  OrgApacheLuceneSearchPayloadsPayloadScoreQuery *this$0_;
  jint payloadsSeen_;
  jfloat payloadScore_;
}

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery:(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *)outer$
                                   withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                              withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)weight
             withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer;

- (void)doStartCurrentDoc;

- (void)doCurrentSpans;

- (void)collectLeafWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                withInt:(jint)position
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (jfloat)getPayloadScore;

- (OrgApacheLuceneSearchExplanation *)getPayloadExplanation;

- (jfloat)getSpanScore;

- (jfloat)scoreCurrentDoc;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer)

__attribute__((unused)) static void OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer *self, OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer);

__attribute__((unused)) static OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer *new_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer *create_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer)

@implementation OrgApacheLuceneSearchPayloadsPayloadScoreQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)wrappedQuery
           withOrgApacheLuceneSearchPayloadsPayloadFunction:(OrgApacheLuceneSearchPayloadsPayloadFunction *)function {
  OrgApacheLuceneSearchPayloadsPayloadScoreQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchPayloadsPayloadFunction_(self, wrappedQuery, function);
  return self;
}

- (NSString *)getField {
  return [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(wrappedQuery_)) getField];
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$$$$C", @"PayloadSpanQuery[", [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(wrappedQuery_)) toStringWithNSString:field], @"; ", [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(function_)) description], ']');
}

- (OrgApacheLuceneSearchSpansSpanWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                                 withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchSpansSpanWeight *innerWeight = JreRetainedLocalValue([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(wrappedQuery_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:needsScores]);
  if (!needsScores) return innerWeight;
  return create_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_(self, searcher, innerWeight);
}

- (jboolean)isEqual:(id)o {
  if (JreObjectEqualsEquals(self, o)) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchPayloadsPayloadScoreQuery class]])) return false;
  if (![super isEqual:o]) return false;
  OrgApacheLuceneSearchPayloadsPayloadScoreQuery *that = (OrgApacheLuceneSearchPayloadsPayloadScoreQuery *) cast_chk(o, [OrgApacheLuceneSearchPayloadsPayloadScoreQuery class]);
  if (wrappedQuery_ != nil ? ![wrappedQuery_ isEqual:((OrgApacheLuceneSearchPayloadsPayloadScoreQuery *) nil_chk(that))->wrappedQuery_] : ((OrgApacheLuceneSearchPayloadsPayloadScoreQuery *) nil_chk(that))->wrappedQuery_ != nil) return false;
  return !(function_ != nil ? ![function_ isEqual:that->function_] : that->function_ != nil);
}

- (NSUInteger)hash {
  jint result = ((jint) [super hash]);
  result = 31 * result + (wrappedQuery_ != nil ? ((jint) [wrappedQuery_ hash]) : 0);
  result = 31 * result + (function_ != nil ? ((jint) [function_ hash]) : 0);
  return result;
}

- (void)dealloc {
  RELEASE_(wrappedQuery_);
  RELEASE_(function_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanWeight;", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanQuery:withOrgApacheLuceneSearchPayloadsPayloadFunction:);
  methods[1].selector = @selector(getField);
  methods[2].selector = @selector(toStringWithNSString:);
  methods[3].selector = @selector(createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "wrappedQuery_", "LOrgApacheLuceneSearchSpansSpanQuery;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "function_", "LOrgApacheLuceneSearchPayloadsPayloadFunction;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansSpanQuery;LOrgApacheLuceneSearchPayloadsPayloadFunction;", "toString", "LNSString;", "createWeight", "LOrgApacheLuceneSearchIndexSearcher;Z", "LJavaIoIOException;", "equals", "LNSObject;", "hashCode", "LOrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight;LOrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadScoreQuery = { "PayloadScoreQuery", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, 9, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadScoreQuery;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadScoreQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *self, OrgApacheLuceneSearchSpansSpanQuery *wrappedQuery, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  OrgApacheLuceneSearchSpansSpanQuery_init(self);
  JreStrongAssign(&self->wrappedQuery_, wrappedQuery);
  JreStrongAssign(&self->function_, function);
}

OrgApacheLuceneSearchPayloadsPayloadScoreQuery *new_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneSearchSpansSpanQuery *wrappedQuery, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadScoreQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchPayloadsPayloadFunction_, wrappedQuery, function)
}

OrgApacheLuceneSearchPayloadsPayloadScoreQuery *create_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneSearchSpansSpanQuery *wrappedQuery, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadScoreQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchPayloadsPayloadFunction_, wrappedQuery, function)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadScoreQuery)

@implementation OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery:(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *)outer$
                                withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                              withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)innerWeight {
  OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_(self, outer$, searcher, innerWeight);
  return self;
}

- (void)extractTermContextsWithJavaUtilMap:(id<JavaUtilMap>)contexts {
  [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(innerWeight_)) extractTermContextsWithJavaUtilMap:contexts];
}

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)ctx
                                     withOrgApacheLuceneSearchSpansSpanWeight_Postings:(OrgApacheLuceneSearchSpansSpanWeight_Postings *)requiredPostings {
  return [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(innerWeight_)) getSpansWithOrgApacheLuceneIndexLeafReaderContext:ctx withOrgApacheLuceneSearchSpansSpanWeight_Postings:[((OrgApacheLuceneSearchSpansSpanWeight_Postings *) nil_chk(requiredPostings)) atLeastWithOrgApacheLuceneSearchSpansSpanWeight_Postings:JreLoadEnum(OrgApacheLuceneSearchSpansSpanWeight_Postings, PAYLOADS)]];
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchSpansSpans *spans = JreRetainedLocalValue([self getSpansWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchSpansSpanWeight_Postings:JreLoadEnum(OrgApacheLuceneSearchSpansSpanWeight_Postings, PAYLOADS)]);
  if (spans == nil) return nil;
  return create_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(this$0_, spans, self, [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(innerWeight_)) getSimScorerWithOrgApacheLuceneIndexLeafReaderContext:context]);
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(innerWeight_)) extractTermsWithJavaUtilSet:terms];
}

- (jfloat)getValueForNormalization {
  return [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(innerWeight_)) getValueForNormalization];
}

- (void)normalizeWithFloat:(jfloat)queryNorm
                 withFloat:(jfloat)topLevelBoost {
  [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(innerWeight_)) normalizeWithFloat:queryNorm withFloat:topLevelBoost];
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc {
  OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer *scorer = (OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer *) cast_chk([self scorerWithOrgApacheLuceneIndexLeafReaderContext:context], [OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer class]);
  if (scorer == nil || [scorer advanceWithInt:doc] != doc) return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(@"No match", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
  OrgApacheLuceneSearchSpansSpanWeight *innerWeight = JreRetainedLocalValue(((OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight *) nil_chk(((OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight *) cast_chk([scorer getWeight], [OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight class]))))->innerWeight_);
  OrgApacheLuceneSearchExplanation *innerExpl = JreRetainedLocalValue([((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(innerWeight)) explainWithOrgApacheLuceneIndexLeafReaderContext:context withInt:doc]);
  [scorer freq];
  OrgApacheLuceneSearchExplanation *payloadExpl = JreRetainedLocalValue([scorer getPayloadExplanation]);
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([scorer scoreCurrentDoc], @"PayloadSpanQuery, product of:", [IOSObjectArray arrayWithObjects:(id[]){ innerExpl, payloadExpl } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(innerWeight_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpans;", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, 11, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x1, 14, 15, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery:withOrgApacheLuceneSearchIndexSearcher:withOrgApacheLuceneSearchSpansSpanWeight:);
  methods[1].selector = @selector(extractTermContextsWithJavaUtilMap:);
  methods[2].selector = @selector(getSpansWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchSpansSpanWeight_Postings:);
  methods[3].selector = @selector(scorerWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[4].selector = @selector(extractTermsWithJavaUtilSet:);
  methods[5].selector = @selector(getValueForNormalization);
  methods[6].selector = @selector(normalizeWithFloat:withFloat:);
  methods[7].selector = @selector(explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchPayloadsPayloadScoreQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "innerWeight_", "LOrgApacheLuceneSearchSpansSpanWeight;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchPayloadsPayloadScoreQuery;LOrgApacheLuceneSearchIndexSearcher;LOrgApacheLuceneSearchSpansSpanWeight;", "LJavaIoIOException;", "extractTermContexts", "LJavaUtilMap;", "(Ljava/util/Map<Lorg/apache/lucene/index/Term;Lorg/apache/lucene/index/TermContext;>;)V", "getSpans", "LOrgApacheLuceneIndexLeafReaderContext;LOrgApacheLuceneSearchSpansSpanWeight_Postings;", "scorer", "LOrgApacheLuceneIndexLeafReaderContext;", "extractTerms", "LJavaUtilSet;", "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V", "normalize", "FF", "explain", "LOrgApacheLuceneIndexLeafReaderContext;I", "LOrgApacheLuceneSearchPayloadsPayloadScoreQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight = { "PayloadSpanWeight", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x2, 8, 2, 16, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight *self, OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchSpansSpanWeight *innerWeight) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSpansSpanWeight_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, outer$, searcher, nil);
  JreStrongAssign(&self->innerWeight_, innerWeight);
}

OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight *new_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchSpansSpanWeight *innerWeight) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight, initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_, outer$, searcher, innerWeight)
}

OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight *create_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchSpansSpanWeight *innerWeight) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight, initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchSpansSpanWeight_, outer$, searcher, innerWeight)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanWeight)

@implementation OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery:(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *)outer$
                                   withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                              withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)weight
             withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer {
  OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, outer$, spans, weight, docScorer);
  return self;
}

- (void)doStartCurrentDoc {
  payloadScore_ = 0;
  payloadsSeen_ = 0;
}

- (void)doCurrentSpans {
  [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) collectWithOrgApacheLuceneSearchSpansSpanCollector:self];
}

- (void)collectLeafWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                withInt:(jint)position
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneUtilBytesRef *payload = JreRetainedLocalValue([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postings)) getPayload]);
  if (payload == nil) return;
  jfloat payloadFactor = [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *) nil_chk(docScorer_)) computePayloadFactorWithInt:[self docID] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) startPosition] withInt:[spans_ endPosition] withOrgApacheLuceneUtilBytesRef:payload];
  payloadScore_ = [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->function_)) currentScoreWithInt:[self docID] withNSString:[this$0_ getField] withInt:[spans_ startPosition] withInt:[spans_ endPosition] withInt:payloadsSeen_ withFloat:payloadScore_ withFloat:payloadFactor];
  payloadsSeen_++;
}

- (jfloat)getPayloadScore {
  return [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->function_)) docScoreWithInt:[self docID] withNSString:[this$0_ getField] withInt:payloadsSeen_ withFloat:payloadScore_];
}

- (OrgApacheLuceneSearchExplanation *)getPayloadExplanation {
  return [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->function_)) explainWithInt:[self docID] withNSString:[this$0_ getField] withInt:payloadsSeen_ withFloat:payloadScore_];
}

- (jfloat)getSpanScore {
  return [super scoreCurrentDoc];
}

- (jfloat)scoreCurrentDoc {
  return [self getSpanScore] * [self getPayloadScore];
}

- (void)reset {
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "F", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "F", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery:withOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchSpansSpanWeight:withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:);
  methods[1].selector = @selector(doStartCurrentDoc);
  methods[2].selector = @selector(doCurrentSpans);
  methods[3].selector = @selector(collectLeafWithOrgApacheLuceneIndexPostingsEnum:withInt:withOrgApacheLuceneIndexTerm:);
  methods[4].selector = @selector(getPayloadScore);
  methods[5].selector = @selector(getPayloadExplanation);
  methods[6].selector = @selector(getSpanScore);
  methods[7].selector = @selector(scoreCurrentDoc);
  methods[8].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchPayloadsPayloadScoreQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "payloadsSeen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "payloadScore_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchPayloadsPayloadScoreQuery;LOrgApacheLuceneSearchSpansSpans;LOrgApacheLuceneSearchSpansSpanWeight;LOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;", "LJavaIoIOException;", "collectLeaf", "LOrgApacheLuceneIndexPostingsEnum;ILOrgApacheLuceneIndexTerm;", "LOrgApacheLuceneSearchPayloadsPayloadScoreQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer = { "PayloadSpanScorer", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x2, 9, 3, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer *self, OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, spans, weight, docScorer);
}

OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer *new_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer, initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_, outer$, spans, weight, docScorer)
}

OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer *create_OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadScoreQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer, initWithOrgApacheLuceneSearchPayloadsPayloadScoreQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_, outer$, spans, weight, docScorer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadScoreQuery_PayloadSpanScorer)
