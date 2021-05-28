//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/PerFieldSimilarityWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper))
#define OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_

#define RESTRICT_OrgApacheLuceneSearchSimilaritiesSimilarity 1
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesSimilarity 1
#include "org/apache/lucene/search/similarities/Similarity.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexFieldInvertState;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchCollectionStatistics;
@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;
@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight;

/*!
 @brief Provides the ability to use a different <code>Similarity</code> for different fields.
 <p>
  Subclasses should implement <code>get(String)</code> to return an appropriate
  Similarity (for example, using field-specific parameter values) for the field.
 */
@interface OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper : OrgApacheLuceneSearchSimilaritiesSimilarity

#pragma mark Public

/*!
 @brief Sole constructor.
 (For invocation by subclass 
  constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

- (jlong)computeNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state;

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)computeWeightWithFloat:(jfloat)queryBoost
                                    withOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                     withOrgApacheLuceneSearchTermStatisticsArray:(IOSObjectArray *)termStats;

/*!
 @brief Returns a <code>Similarity</code> for scoring a field.
 */
- (OrgApacheLuceneSearchSimilaritiesSimilarity *)getWithNSString:(NSString *)name;

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)weight
                                                                                    withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_init(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper)

#endif

#if !defined (OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight))
#define OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_

#define RESTRICT_OrgApacheLuceneSearchSimilaritiesSimilarity 1
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight 1
#include "org/apache/lucene/search/similarities/Similarity.h"

@class OrgApacheLuceneSearchSimilaritiesSimilarity;

@interface OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight : OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight {
 @public
  OrgApacheLuceneSearchSimilaritiesSimilarity *delegate_;
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *delegateWeight_;
}

#pragma mark Public

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)queryNorm
                 withFloat:(jfloat)topLevelBoost;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight, delegate_, OrgApacheLuceneSearchSimilaritiesSimilarity *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight, delegateWeight_, OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *new_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *create_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper")
