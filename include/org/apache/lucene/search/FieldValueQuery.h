//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FieldValueQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldValueQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchFieldValueQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldValueQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldValueQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFieldValueQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchFieldValueQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldValueQuery || defined(INCLUDE_OrgApacheLuceneSearchFieldValueQuery))
#define OrgApacheLuceneSearchFieldValueQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;

/*!
 @brief A <code>Query</code> that matches documents that have a value for a given field
  as reported by <code>LeafReader.getDocsWithField(String)</code>.
 */
@interface OrgApacheLuceneSearchFieldValueQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

/*!
 @brief Create a query that will match that have a value for the given
   <code>field</code>.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)field;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldValueQuery_initWithNSString_(OrgApacheLuceneSearchFieldValueQuery *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldValueQuery *new_OrgApacheLuceneSearchFieldValueQuery_initWithNSString_(NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldValueQuery *create_OrgApacheLuceneSearchFieldValueQuery_initWithNSString_(NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldValueQuery")
