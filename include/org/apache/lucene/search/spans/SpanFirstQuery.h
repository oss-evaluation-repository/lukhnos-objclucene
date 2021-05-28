//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanFirstQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanFirstQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanFirstQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanFirstQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanFirstQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanFirstQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpansSpanFirstQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanFirstQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanFirstQuery))
#define OrgApacheLuceneSearchSpansSpanFirstQuery_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanPositionRangeQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanPositionRangeQuery 1
#include "org/apache/lucene/search/spans/SpanPositionRangeQuery.h"

@class OrgApacheLuceneSearchSpansFilterSpans_AcceptStatus;
@class OrgApacheLuceneSearchSpansSpanQuery;
@class OrgApacheLuceneSearchSpansSpans;

/*!
 @brief Matches spans near the beginning of a field.
 <p>
  This class is a simple extension of <code>SpanPositionRangeQuery</code> in that it assumes the
  start to be zero and only checks the end boundary.
 */
@interface OrgApacheLuceneSearchSpansSpanFirstQuery : OrgApacheLuceneSearchSpansSpanPositionRangeQuery

#pragma mark Public

/*!
 @brief Construct a SpanFirstQuery matching spans in <code>match</code> whose end
  position is less than or equal to <code>end</code>.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)match
                                                              withInt:(jint)end;

- (OrgApacheLuceneSearchSpansSpanFirstQuery *)java_clone;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneSearchSpansFilterSpans_AcceptStatus *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)arg0
                                                              withInt:(jint)arg1
                                                              withInt:(jint)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanFirstQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_(OrgApacheLuceneSearchSpansSpanFirstQuery *self, OrgApacheLuceneSearchSpansSpanQuery *match, jint end);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanFirstQuery *new_OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanFirstQuery *create_OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanFirstQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanFirstQuery")
