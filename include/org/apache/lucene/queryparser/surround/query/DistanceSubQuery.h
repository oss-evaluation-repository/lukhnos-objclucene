//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/DistanceSubQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery))
#define OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_

@class OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory;

/*!
 @brief Interface for queries that can be nested as subqueries
  into a span near.
 */
@protocol OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery < JavaObject >

/*!
 @brief When distanceSubQueryNotAllowed() returns non null, the reason why the subquery
  is not allowed as a distance subquery is returned.
 <br>When distanceSubQueryNotAllowed() returns null addSpanNearQueries() can be used
  in the creation of the span near clause for the subquery.
 */
- (NSString *)distanceSubQueryNotAllowed;

- (void)addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:(OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *)sncf;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery")
