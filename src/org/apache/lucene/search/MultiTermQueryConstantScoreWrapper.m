//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/MultiTermQueryConstantScoreWrapper.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermContext.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/BulkScorer.h"
#include "org/apache/lucene/search/ConstantScoreQuery.h"
#include "org/apache/lucene/search/ConstantScoreScorer.h"
#include "org/apache/lucene/search/ConstantScoreWeight.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/MultiTermQueryConstantScoreWrapper.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/DocIdSetBuilder.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/MultiTermQueryConstantScoreWrapper must not be compiled with ARC (-fobjc-arc)"
#endif

inline jint OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_get_BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD(void);
#define OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper, BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD, jint)

@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState : NSObject {
 @public
  OrgApacheLuceneUtilBytesRef *term_;
  OrgApacheLuceneIndexTermState *state_;
  jint docFreq_;
  jlong totalTermFreq_;
}

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                  withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state
                                            withInt:(jint)docFreq
                                           withLong:(jlong)totalTermFreq;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState, term_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState, state_, OrgApacheLuceneIndexTermState *)

__attribute__((unused)) static void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState_initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *self, OrgApacheLuceneUtilBytesRef *term, OrgApacheLuceneIndexTermState *state, jint docFreq, jlong totalTermFreq);

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState_initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_(OrgApacheLuceneUtilBytesRef *term, OrgApacheLuceneIndexTermState *state, jint docFreq, jlong totalTermFreq) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState_initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_(OrgApacheLuceneUtilBytesRef *term, OrgApacheLuceneIndexTermState *state, jint docFreq, jlong totalTermFreq);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState)

@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet : NSObject {
 @public
  OrgApacheLuceneSearchWeight *weight_;
  OrgApacheLuceneSearchDocIdSet *set_;
}

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight;

- (instancetype)initWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)bitset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet, weight_, OrgApacheLuceneSearchWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet, set_, OrgApacheLuceneSearchDocIdSet *)

__attribute__((unused)) static void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *self, OrgApacheLuceneSearchWeight *weight);

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchWeight *weight) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchWeight *weight);

__attribute__((unused)) static void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *self, OrgApacheLuceneSearchDocIdSet *bitset);

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchDocIdSet *bitset) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchDocIdSet *bitset);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet)

@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 : OrgApacheLuceneSearchConstantScoreWeight {
 @public
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *this$0_;
  OrgApacheLuceneSearchIndexSearcher *val$searcher_;
  jboolean val$needsScores_;
}

- (instancetype)initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper:(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *)outer$
                                         withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)capture$0
                                                                    withBoolean:(jboolean)capture$1
                                                 withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

/*!
 @brief Try to collect terms from the given terms enum and return true iff all
   terms could be collected.If <code>false</code> is returned, the enum is
   left positioned on the next term.
 */
- (jboolean)collectTermsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum
                                                 withJavaUtilList:(id<JavaUtilList>)terms;

/*!
 @brief On the given leaf context, try to either rewrite to a disjunction if
  there are few terms, or build a bitset containing matching docs.
 */
- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *)rewriteWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)set;

- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1)

__attribute__((unused)) static void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchIndexSearcher *capture$0, jboolean capture$1, OrgApacheLuceneSearchQuery *query);

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchIndexSearcher *capture$0, jboolean capture$1, OrgApacheLuceneSearchQuery *query) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchIndexSearcher *capture$0, jboolean capture$1, OrgApacheLuceneSearchQuery *query);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_collectTermsWithOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneIndexTermsEnum_withJavaUtilList_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneIndexLeafReaderContext *context, OrgApacheLuceneIndexTermsEnum *termsEnum, id<JavaUtilList> terms);

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_rewriteWithOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneIndexLeafReaderContext *context);

__attribute__((unused)) static OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneSearchDocIdSet *set);

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper

- (instancetype)initPackagePrivateWithOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_initPackagePrivateWithOrgApacheLuceneSearchMultiTermQuery_(self, query);
  return self;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query_)) toStringWithNSString:field];
}

- (jboolean)isEqual:(id)o {
  if ([super isEqual:o] == false) {
    return false;
  }
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *that = (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *) cast_chk(o, [OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper class]);
  return [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(self->query_)) isEqual:((OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *) nil_chk(that))->query_] && [self getBoost] == [that getBoost];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query_)) hash]);
}

- (NSString *)getField {
  return [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query_)) getField];
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_(self, searcher, needsScores, self);
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
    { NULL, "LNSString;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 7, 8, 9, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneSearchMultiTermQuery:);
  methods[1].selector = @selector(toStringWithNSString:);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(getField);
  methods[5].selector = @selector(createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD", "I", .constantValue.asInt = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD, 0x1a, -1, -1, -1, -1 },
    { "query_", "LOrgApacheLuceneSearchMultiTermQuery;", .constantValue.asLong = 0, 0x14, -1, -1, 10, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchMultiTermQuery;", "(TQ;)V", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", "createWeight", "LOrgApacheLuceneSearchIndexSearcher;Z", "LJavaIoIOException;", "TQ;", "LOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState;LOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet;", "<Q:Lorg/apache/lucene/search/MultiTermQuery;>Lorg/apache/lucene/search/Query;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper = { "MultiTermQueryConstantScoreWrapper", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 6, 2, -1, 11, -1, 12, -1 };
  return &_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;
}

@end

void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_initPackagePrivateWithOrgApacheLuceneSearchMultiTermQuery_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *self, OrgApacheLuceneSearchMultiTermQuery *query) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->query_, query);
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_initPackagePrivateWithOrgApacheLuceneSearchMultiTermQuery_(OrgApacheLuceneSearchMultiTermQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper, initPackagePrivateWithOrgApacheLuceneSearchMultiTermQuery_, query)
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_initPackagePrivateWithOrgApacheLuceneSearchMultiTermQuery_(OrgApacheLuceneSearchMultiTermQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper, initPackagePrivateWithOrgApacheLuceneSearchMultiTermQuery_, query)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper)

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                  withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state
                                            withInt:(jint)docFreq
                                           withLong:(jlong)totalTermFreq {
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState_initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_(self, term, state, docFreq, totalTermFreq);
  return self;
}

- (void)dealloc {
  RELEASE_(term_);
  RELEASE_(state_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermState:withInt:withLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "term_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "state_", "LOrgApacheLuceneIndexTermState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docFreq_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "totalTermFreq_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneIndexTermState;IJ", "LOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState = { "TermAndState", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0xa, 1, 4, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState;
}

@end

void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState_initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *self, OrgApacheLuceneUtilBytesRef *term, OrgApacheLuceneIndexTermState *state, jint docFreq, jlong totalTermFreq) {
  NSObject_init(self);
  JreStrongAssign(&self->term_, term);
  JreStrongAssign(&self->state_, state);
  self->docFreq_ = docFreq;
  self->totalTermFreq_ = totalTermFreq;
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState_initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_(OrgApacheLuceneUtilBytesRef *term, OrgApacheLuceneIndexTermState *state, jint docFreq, jlong totalTermFreq) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState, initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_, term, state, docFreq, totalTermFreq)
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState_initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_(OrgApacheLuceneUtilBytesRef *term, OrgApacheLuceneIndexTermState *state, jint docFreq, jlong totalTermFreq) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState, initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_, term, state, docFreq, totalTermFreq)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState)

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight {
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchWeight_(self, weight);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)bitset {
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(self, bitset);
  return self;
}

- (void)dealloc {
  RELEASE_(weight_);
  RELEASE_(set_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchWeight:);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchDocIdSet:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "weight_", "LOrgApacheLuceneSearchWeight;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "set_", "LOrgApacheLuceneSearchDocIdSet;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchWeight;", "LOrgApacheLuceneSearchDocIdSet;", "LOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet = { "WeightOrDocIdSet", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0xa, 2, 2, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet;
}

@end

void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *self, OrgApacheLuceneSearchWeight *weight) {
  NSObject_init(self);
  JreStrongAssign(&self->weight_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(weight));
  JreStrongAssign(&self->set_, nil);
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchWeight *weight) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet, initWithOrgApacheLuceneSearchWeight_, weight)
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchWeight *weight) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet, initWithOrgApacheLuceneSearchWeight_, weight)
}

void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *self, OrgApacheLuceneSearchDocIdSet *bitset) {
  NSObject_init(self);
  JreStrongAssign(&self->set_, bitset);
  JreStrongAssign(&self->weight_, nil);
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchDocIdSet *bitset) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet, initWithOrgApacheLuceneSearchDocIdSet_, bitset)
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchDocIdSet *bitset) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet, initWithOrgApacheLuceneSearchDocIdSet_, bitset)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet)

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1

- (instancetype)initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper:(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *)outer$
                                         withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)capture$0
                                                                    withBoolean:(jboolean)capture$1
                                                 withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_(self, outer$, capture$0, capture$1, query);
  return self;
}

- (jboolean)collectTermsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum
                                                 withJavaUtilList:(id<JavaUtilList>)terms {
  return OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_collectTermsWithOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneIndexTermsEnum_withJavaUtilList_(self, context, termsEnum, terms);
}

- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *)rewriteWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  return OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_rewriteWithOrgApacheLuceneIndexLeafReaderContext_(self, context);
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)set {
  return OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(self, set);
}

- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *weightOrBitSet = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_rewriteWithOrgApacheLuceneIndexLeafReaderContext_(self, context);
  if (((OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *) nil_chk(weightOrBitSet))->weight_ != nil) {
    return JreRetainedLocalValue([weightOrBitSet->weight_ bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:context]);
  }
  else {
    OrgApacheLuceneSearchScorer *scorer = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(self, weightOrBitSet->set_);
    if (scorer == nil) {
      return JreRetainedLocalValue(nil);
    }
    return create_OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(scorer);
  }
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *weightOrBitSet = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_rewriteWithOrgApacheLuceneIndexLeafReaderContext_(self, context);
  if (((OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *) nil_chk(weightOrBitSet))->weight_ != nil) {
    return JreRetainedLocalValue([weightOrBitSet->weight_ scorerWithOrgApacheLuceneIndexLeafReaderContext:context]);
  }
  else {
    return OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(self, weightOrBitSet->set_);
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$searcher_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 1, 2, 3, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet;", 0x2, 5, 6, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x2, 7, 8, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBulkScorer;", 0x1, 9, 6, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x1, 7, 6, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper:withOrgApacheLuceneSearchIndexSearcher:withBoolean:withOrgApacheLuceneSearchQuery:);
  methods[1].selector = @selector(collectTermsWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneIndexTermsEnum:withJavaUtilList:);
  methods[2].selector = @selector(rewriteWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[3].selector = @selector(scorerWithOrgApacheLuceneSearchDocIdSet:);
  methods[4].selector = @selector(bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[5].selector = @selector(scorerWithOrgApacheLuceneIndexLeafReaderContext:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;", .constantValue.asLong = 0, 0x1012, -1, -1, 10, -1 },
    { "val$searcher_", "LOrgApacheLuceneSearchIndexSearcher;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$needsScores_", "Z", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;LOrgApacheLuceneSearchIndexSearcher;ZLOrgApacheLuceneSearchQuery;", "collectTerms", "LOrgApacheLuceneIndexLeafReaderContext;LOrgApacheLuceneIndexTermsEnum;LJavaUtilList;", "LJavaIoIOException;", "(Lorg/apache/lucene/index/LeafReaderContext;Lorg/apache/lucene/index/TermsEnum;Ljava/util/List<Lorg/apache/lucene/search/MultiTermQueryConstantScoreWrapper$TermAndState;>;)Z", "rewrite", "LOrgApacheLuceneIndexLeafReaderContext;", "scorer", "LOrgApacheLuceneSearchDocIdSet;", "bulkScorer", "Lorg/apache/lucene/search/MultiTermQueryConstantScoreWrapper<TQ;>;", "LOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 6, 3, 11, -1, 12, -1, -1 };
  return &_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1;
}

@end

void OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchIndexSearcher *capture$0, jboolean capture$1, OrgApacheLuceneSearchQuery *query) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$searcher_, capture$0);
  self->val$needsScores_ = capture$1;
  OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(self, query);
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchIndexSearcher *capture$0, jboolean capture$1, OrgApacheLuceneSearchQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1, initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_, outer$, capture$0, capture$1, query)
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *outer$, OrgApacheLuceneSearchIndexSearcher *capture$0, jboolean capture$1, OrgApacheLuceneSearchQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1, initWithOrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneSearchQuery_, outer$, capture$0, capture$1, query)
}

jboolean OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_collectTermsWithOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneIndexTermsEnum_withJavaUtilList_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneIndexLeafReaderContext *context, OrgApacheLuceneIndexTermsEnum *termsEnum, id<JavaUtilList> terms) {
  jint threshold = JavaLangMath_minWithInt_withInt_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD, OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount());
  for (jint i = 0; i < threshold; ++i) {
    OrgApacheLuceneUtilBytesRef *term = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next];
    if (term == nil) {
      return true;
    }
    OrgApacheLuceneIndexTermState *state = JreRetainedLocalValue([termsEnum termState]);
    if ([((OrgApacheLuceneIndexTermState *) nil_chk(state)) isRealTerm] == false) {
      return false;
    }
    [((id<JavaUtilList>) nil_chk(terms)) addWithId:create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState_initWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermState_withInt_withLong_(OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(term), state, [termsEnum docFreq], [termsEnum totalTermFreq])];
  }
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next] == nil;
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_rewriteWithOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneIndexLeafReaderContext *context) {
  OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader])) termsWithNSString:((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(self->this$0_->query_))->field_];
  if (terms == nil) {
    return create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(nil);
  }
  OrgApacheLuceneIndexTermsEnum *termsEnum = [self->this$0_->query_ getTermsEnumWithOrgApacheLuceneIndexTerms:terms];
  JreAssert(termsEnum != nil, @"org/apache/lucene/search/MultiTermQueryConstantScoreWrapper.java:146 condition failed: assert termsEnum != null;");
  OrgApacheLuceneIndexPostingsEnum *docs = nil;
  id<JavaUtilList> collectedTerms = create_JavaUtilArrayList_init();
  if (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_collectTermsWithOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneIndexTermsEnum_withJavaUtilList_(self, context, termsEnum, collectedTerms)) {
    OrgApacheLuceneSearchBooleanQuery_Builder *bq = create_OrgApacheLuceneSearchBooleanQuery_Builder_init();
    for (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState * __strong t in collectedTerms) {
      OrgApacheLuceneIndexTermContext *termContext = create_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(self->val$searcher_)) getTopReaderContext]);
      [termContext register__WithOrgApacheLuceneIndexTermState:((OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *) nil_chk(t))->state_ withInt:context->ord_ withInt:t->docFreq_ withLong:t->totalTermFreq_];
      [bq addWithOrgApacheLuceneSearchQuery:create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(create_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(self->this$0_->query_->field_, t->term_), termContext) withOrgApacheLuceneSearchBooleanClause_Occur:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD)];
    }
    OrgApacheLuceneSearchQuery *q = create_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_([bq build]);
    [q setBoostWithFloat:[self score]];
    return create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchWeight_([((OrgApacheLuceneSearchQuery *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(self->val$searcher_)) rewriteWithOrgApacheLuceneSearchQuery:q])) createWeightWithOrgApacheLuceneSearchIndexSearcher:self->val$searcher_ withBoolean:self->val$needsScores_]);
  }
  OrgApacheLuceneUtilDocIdSetBuilder *builder = create_OrgApacheLuceneUtilDocIdSetBuilder_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) maxDoc]);
  if ([collectedTerms isEmpty] == false) {
    OrgApacheLuceneIndexTermsEnum *termsEnum2 = JreRetainedLocalValue([terms iterator]);
    for (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState * __strong t in collectedTerms) {
      [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum2)) seekExactWithOrgApacheLuceneUtilBytesRef:((OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *) nil_chk(t))->term_ withOrgApacheLuceneIndexTermState:t->state_];
      docs = [termsEnum2 postingsWithOrgApacheLuceneIndexPostingsEnum:docs withInt:OrgApacheLuceneIndexPostingsEnum_NONE];
      [builder addWithOrgApacheLuceneSearchDocIdSetIterator:docs];
    }
  }
  do {
    docs = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) postingsWithOrgApacheLuceneIndexPostingsEnum:docs withInt:OrgApacheLuceneIndexPostingsEnum_NONE];
    [builder addWithOrgApacheLuceneSearchDocIdSetIterator:docs];
  }
  while ([termsEnum next] != nil);
  return create_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_([builder build]);
}

OrgApacheLuceneSearchScorer *OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1_scorerWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_1 *self, OrgApacheLuceneSearchDocIdSet *set) {
  if (set == nil) {
    return nil;
  }
  OrgApacheLuceneSearchDocIdSetIterator *disi = [set iterator];
  if (disi == nil) {
    return nil;
  }
  return create_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(self, [self score], disi);
}
