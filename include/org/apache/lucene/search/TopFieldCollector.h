//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TopFieldCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTopFieldCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchTopFieldCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchTopFieldCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTopFieldCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTopFieldCollector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchTopFieldCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchTopFieldCollector || defined(INCLUDE_OrgApacheLuceneSearchTopFieldCollector))
#define OrgApacheLuceneSearchTopFieldCollector_

#define RESTRICT_OrgApacheLuceneSearchTopDocsCollector 1
#define INCLUDE_OrgApacheLuceneSearchTopDocsCollector 1
#include "org/apache/lucene/search/TopDocsCollector.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchFieldDoc;
@class OrgApacheLuceneSearchFieldValueHitQueue_Entry;
@class OrgApacheLuceneSearchSort;
@class OrgApacheLuceneSearchTopDocs;
@class OrgApacheLuceneSearchTopFieldDocs;
@class OrgApacheLuceneUtilPriorityQueue;

/*!
 @brief A <code>Collector</code> that sorts by <code>SortField</code> using 
 <code>FieldComparator</code>s.
 <p>
  See the <code>create(org.apache.lucene.search.Sort, int, boolean, boolean, boolean)</code> method
  for instantiating a TopFieldCollector.
 */
@interface OrgApacheLuceneSearchTopFieldCollector : OrgApacheLuceneSearchTopDocsCollector {
 @public
  jfloat maxScore_;
  jint numHits_;
  OrgApacheLuceneSearchFieldValueHitQueue_Entry *bottom_;
  jboolean queueFull_;
  jint docBase_;
  jboolean needsScores_;
}

#pragma mark Public

/*!
 @brief Creates a new <code>TopFieldCollector</code> from the given
  arguments.
 <p><b>NOTE</b>: The instances returned by this method
  pre-allocate a full array of length 
 <code>numHits</code>.
 @param sort the sort criteria (SortFields).
 @param numHits the number of results to collect.
 @param fillFields specifies whether the actual field values should be returned on
            the results (FieldDoc).
 @param trackDocScores specifies whether document scores should be tracked and set on the
            results. Note that if set to false, then the results' scores will
            be set to Float.NaN. Setting this to true affects performance, as
            it incurs the score computation on each competitive result.
            Therefore if document scores are not required by the application,
            it is recommended to set it to false.
 @param trackMaxScore specifies whether the query's maxScore should be tracked and set
            on the resulting 
 <code>TopDocs</code> . Note that if set to false,           <code>TopDocs.getMaxScore()</code>
   returns Float.NaN. Setting this to           true affects performance as it incurs the score computation on
            each result. Also, setting this true automatically sets
             <code> trackDocScores
  </code>  to true as well.
 @return a <code>TopFieldCollector</code> instance which will sort the results by
          the sort criteria.
 @throw IOExceptionif there is a low-level I/O error
 */
+ (OrgApacheLuceneSearchTopFieldCollector *)createWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                        withInt:(jint)numHits
                                                                    withBoolean:(jboolean)fillFields
                                                                    withBoolean:(jboolean)trackDocScores
                                                                    withBoolean:(jboolean)trackMaxScore;

/*!
 @brief Creates a new <code>TopFieldCollector</code> from the given
  arguments.
 <p><b>NOTE</b>: The instances returned by this method
  pre-allocate a full array of length 
 <code>numHits</code>.
 @param sort the sort criteria (SortFields).
 @param numHits the number of results to collect.
 @param after only hits after this FieldDoc will be collected
 @param fillFields specifies whether the actual field values should be returned on
            the results (FieldDoc).
 @param trackDocScores specifies whether document scores should be tracked and set on the
            results. Note that if set to false, then the results' scores will
            be set to Float.NaN. Setting this to true affects performance, as
            it incurs the score computation on each competitive result.
            Therefore if document scores are not required by the application,
            it is recommended to set it to false.
 @param trackMaxScore specifies whether the query's maxScore should be tracked and set
            on the resulting 
 <code>TopDocs</code> . Note that if set to false,           <code>TopDocs.getMaxScore()</code>
   returns Float.NaN. Setting this to           true affects performance as it incurs the score computation on
            each result. Also, setting this true automatically sets
             <code> trackDocScores
  </code>  to true as well.
 @return a <code>TopFieldCollector</code> instance which will sort the results by
          the sort criteria.
 @throw IOExceptionif there is a low-level I/O error
 */
+ (OrgApacheLuceneSearchTopFieldCollector *)createWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                        withInt:(jint)numHits
                                              withOrgApacheLuceneSearchFieldDoc:(OrgApacheLuceneSearchFieldDoc *)after
                                                                    withBoolean:(jboolean)fillFields
                                                                    withBoolean:(jboolean)trackDocScores
                                                                    withBoolean:(jboolean)trackMaxScore;

- (jboolean)needsScores;

- (OrgApacheLuceneSearchTopFieldDocs *)topDocs;

#pragma mark Protected

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start OBJC_METHOD_FAMILY_NONE;

- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                      withInt:(jint)howMany;

#pragma mark Package-Private

- (void)addWithInt:(jint)slot
           withInt:(jint)doc
         withFloat:(jfloat)score;

- (void)updateBottomWithInt:(jint)doc;

- (void)updateBottomWithInt:(jint)doc
                  withFloat:(jfloat)score;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneUtilPriorityQueue:(OrgApacheLuceneUtilPriorityQueue *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchTopFieldCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopFieldCollector, bottom_, OrgApacheLuceneSearchFieldValueHitQueue_Entry *)

FOUNDATION_EXPORT OrgApacheLuceneSearchTopFieldCollector *OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneSearchSort *sort, jint numHits, jboolean fillFields, jboolean trackDocScores, jboolean trackMaxScore);

FOUNDATION_EXPORT OrgApacheLuceneSearchTopFieldCollector *OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchFieldDoc_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneSearchSort *sort, jint numHits, OrgApacheLuceneSearchFieldDoc *after, jboolean fillFields, jboolean trackDocScores, jboolean trackMaxScore);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopFieldCollector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTopFieldCollector")
