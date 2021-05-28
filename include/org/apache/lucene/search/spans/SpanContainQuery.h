//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanContainQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanContainQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanContainQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanContainQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanContainQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanContainQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpansSpanContainQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanContainQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanContainQuery))
#define OrgApacheLuceneSearchSpansSpanContainQuery_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanQuery 1
#include "org/apache/lucene/search/spans/SpanQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneSearchSpansSpanContainQuery : OrgApacheLuceneSearchSpansSpanQuery < NSCopying > {
 @public
  OrgApacheLuceneSearchSpansSpanQuery *big_;
  OrgApacheLuceneSearchSpansSpanQuery *little_;
}

#pragma mark Public

- (OrgApacheLuceneSearchSpansSpanContainQuery *)java_clone;

- (jboolean)isEqual:(id)o;

- (NSString *)getField;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)big
                                            withOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)little
                                                                          withFloat:(jfloat)boost;

- (NSString *)toStringWithNSString:(NSString *)field
                      withNSString:(NSString *)name;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanContainQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanContainQuery, big_, OrgApacheLuceneSearchSpansSpanQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanContainQuery, little_, OrgApacheLuceneSearchSpansSpanQuery *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanContainQuery_initPackagePrivateWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_withFloat_(OrgApacheLuceneSearchSpansSpanContainQuery *self, OrgApacheLuceneSearchSpansSpanQuery *big, OrgApacheLuceneSearchSpansSpanQuery *little, jfloat boost);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanContainQuery)

#endif

#if !defined (OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanContainQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight))
#define OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanWeight 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanWeight 1
#include "org/apache/lucene/search/spans/SpanWeight.h"

@class JavaUtilArrayList;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchSpansSpanContainQuery;
@class OrgApacheLuceneSearchSpansSpanQuery;
@class OrgApacheLuceneSearchSpansSpanWeight_Postings;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight : OrgApacheLuceneSearchSpansSpanWeight {
 @public
  OrgApacheLuceneSearchSpansSpanWeight *bigWeight_;
  OrgApacheLuceneSearchSpansSpanWeight *littleWeight_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanContainQuery:(OrgApacheLuceneSearchSpansSpanContainQuery *)outer$
                                      withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                             withJavaUtilMap:(id<JavaUtilMap>)terms
                                    withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)bigWeight
                                    withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)littleWeight;

- (void)extractTermContextsWithJavaUtilMap:(id<JavaUtilMap>)contexts;

/*!
 @brief Extract terms from both <code>big</code> and <code>little</code>.
 */
- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

#pragma mark Package-Private

- (JavaUtilArrayList *)prepareConjunctionWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                 withOrgApacheLuceneSearchSpansSpanWeight_Postings:(OrgApacheLuceneSearchSpansSpanWeight_Postings *)postings;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)arg0
                               withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)arg1
                                                      withJavaUtilMap:(id<JavaUtilMap>)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight, bigWeight_, OrgApacheLuceneSearchSpansSpanWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight, littleWeight_, OrgApacheLuceneSearchSpansSpanWeight *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight_initWithOrgApacheLuceneSearchSpansSpanContainQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight *self, OrgApacheLuceneSearchSpansSpanContainQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, OrgApacheLuceneSearchSpansSpanWeight *bigWeight, OrgApacheLuceneSearchSpansSpanWeight *littleWeight);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanContainQuery")
