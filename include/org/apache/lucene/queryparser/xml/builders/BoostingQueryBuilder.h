//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/BoostingQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Builder for <code>BoostingQuery</code>
 */
@interface OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)factory;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder *self, id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersBoostingQueryBuilder")
