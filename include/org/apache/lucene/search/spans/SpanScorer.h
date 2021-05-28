//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanScorer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpansSpanScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanScorer))
#define OrgApacheLuceneSearchSpansSpanScorer_

#define RESTRICT_OrgApacheLuceneSearchScorer 1
#define INCLUDE_OrgApacheLuceneSearchScorer 1
#include "org/apache/lucene/search/Scorer.h"

@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;
@class OrgApacheLuceneSearchSpansSpanWeight;
@class OrgApacheLuceneSearchSpansSpans;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@class OrgApacheLuceneSearchWeight;

/*!
 @brief Public for extension only.
 */
@interface OrgApacheLuceneSearchSpansSpanScorer : OrgApacheLuceneSearchScorer {
 @public
  /*!
   @brief underlying spans we are scoring from
   */
  OrgApacheLuceneSearchSpansSpans *spans_;
  /*!
   @brief similarity used in default score impl
   */
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer_;
  /*!
   @brief accumulated sloppy freq (computed in setFreqCurrentDoc)
   */
  jfloat freq_;
  /*!
   @brief number of matches (computed in setFreqCurrentDoc)
   */
  jint numMatches_;
}

#pragma mark Public

/*!
 @brief Creates a new SpanScorer
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                         withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)weight
        withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer;

- (jint)advanceWithInt:(jint)target;

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (jint)nextDoc;

- (jfloat)score;

/*!
 @brief Returns the intermediate "sloppy freq" adjusted for edit distance
 */
- (jfloat)sloppyFreq;

#pragma mark Protected

/*!
 @brief Called each time the scorer's Spans is advanced during frequency calculation
 */
- (void)doCurrentSpans;

/*!
 @brief Called before the current doc's frequency is calculated
 */
- (void)doStartCurrentDoc;

/*!
 @brief Score the current doc.The default implementation scores the doc 
  with the similarity using the slop-adjusted <code>freq</code>.
 */
- (jfloat)scoreCurrentDoc;

/*!
 @brief Sets <code>freq</code> and <code>numMatches</code> for the current document.
 <p>
  This will be called at most once per document.
 */
- (void)setFreqCurrentDoc;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanScorer, spans_, OrgApacheLuceneSearchSpansSpans *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanScorer, docScorer_, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchSpansSpanScorer *self, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanScorer *new_OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanScorer *create_OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanScorer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer")
