//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/GlobalOrdinalsWithScoreQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector:(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *)collector
                                                                                             withNSString:(NSString *)joinField
                                                        withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)globalOrds
                                                                           withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)toQuery
                                                                           withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)fromQuery
                                                                                                  withInt:(jint)min
                                                                                                  withInt:(jint)max
                                                                      withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)indexReader;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_initPackagePrivateWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withInt_withInt_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery *self, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, NSString *joinField, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *globalOrds, OrgApacheLuceneSearchQuery *toQuery, OrgApacheLuceneSearchQuery *fromQuery, jint min, jint max, OrgApacheLuceneIndexIndexReader *indexReader);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_initPackagePrivateWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withInt_withInt_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, NSString *joinField, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *globalOrds, OrgApacheLuceneSearchQuery *toQuery, OrgApacheLuceneSearchQuery *fromQuery, jint min, jint max, OrgApacheLuceneIndexIndexReader *indexReader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_initPackagePrivateWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withInt_withInt_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, NSString *joinField, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *globalOrds, OrgApacheLuceneSearchQuery *toQuery, OrgApacheLuceneSearchQuery *fromQuery, jint min, jint max, OrgApacheLuceneIndexIndexReader *indexReader);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W_

#define RESTRICT_OrgApacheLuceneSearchWeight 1
#define INCLUDE_OrgApacheLuceneSearchWeight 1
#include "org/apache/lucene/search/Weight.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchScorer;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W : OrgApacheLuceneSearchWeight

#pragma mark Public

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery:(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery *)outer$
                                                         withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                        withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)approximationWeight;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W *self, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery *outer$, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchWeight *approximationWeight);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery *outer$, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchWeight *approximationWeight) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery *outer$, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchWeight *approximationWeight);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_W)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer_

#define RESTRICT_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer 1
#define INCLUDE_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer 1
#include "org/apache/lucene/search/join/BaseGlobalOrdinalScorer.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@class OrgApacheLuceneSearchWeight;
@class OrgApacheLuceneUtilLongValues;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer : OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer {
 @public
  OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup_;
  OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
withOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector:(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *)collector
                      withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)values
                              withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)approximationScorer
                            withOrgApacheLuceneUtilLongValues:(OrgApacheLuceneUtilLongValues *)segmentOrdToGlobalOrdLookup;

- (jint)advanceWithInt:(jint)target;

#pragma mark Protected

- (OrgApacheLuceneSearchTwoPhaseIterator *)createTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)approximation;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg0
                                    withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)arg1
                                            withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer, segmentOrdToGlobalOrdLookup_, OrgApacheLuceneUtilLongValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer, collector_, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilLongValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer *self, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer, OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilLongValues_(OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer, OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilLongValues_(OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer, OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_OrdinalMapScorer)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer_

#define RESTRICT_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer 1
#define INCLUDE_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer 1
#include "org/apache/lucene/search/join/BaseGlobalOrdinalScorer.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer : OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer {
 @public
  OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
withOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector:(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *)collector
                      withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)values
                              withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)approximationScorer;

- (jint)advanceWithInt:(jint)target;

#pragma mark Protected

- (OrgApacheLuceneSearchTwoPhaseIterator *)createTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)approximation;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg0
                                    withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)arg1
                                            withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer, collector_, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer *self, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *collector, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_SegmentOrdinalScorer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery")
