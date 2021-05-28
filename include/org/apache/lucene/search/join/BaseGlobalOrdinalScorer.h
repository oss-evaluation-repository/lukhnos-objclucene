//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BaseGlobalOrdinalScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer || defined(INCLUDE_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer))
#define OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_

#define RESTRICT_OrgApacheLuceneSearchScorer 1
#define INCLUDE_OrgApacheLuceneSearchScorer 1
#include "org/apache/lucene/search/Scorer.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer : OrgApacheLuceneSearchScorer {
 @public
  OrgApacheLuceneIndexSortedDocValues *values_;
  OrgApacheLuceneSearchScorer *approximationScorer_;
  jfloat score_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                    withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)values
                                            withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)approximationScorer;

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (jint)nextDoc;

- (jfloat)score;

#pragma mark Protected

- (OrgApacheLuceneSearchTwoPhaseIterator *)createTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)approximation;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer, values_, OrgApacheLuceneIndexSortedDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer, approximationScorer_, OrgApacheLuceneSearchScorer *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_initPackagePrivateWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *self, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer")
