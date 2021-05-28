//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/QueryBuilderFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryBuilderFactory")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilderFactory
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryBuilderFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryBuilderFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilderFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlQueryBuilderFactory_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryBuilderFactory || defined(INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilderFactory))
#define OrgApacheLuceneQueryparserXmlQueryBuilderFactory_

#define RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class JavaUtilHashMap;
@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Factory for <code>QueryBuilder</code>
 */
@interface OrgApacheLuceneQueryparserXmlQueryBuilderFactory : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder > {
 @public
  JavaUtilHashMap *builders_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (void)addBuilderWithNSString:(NSString *)nodeName
withOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)builder;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)n;

- (id<OrgApacheLuceneQueryparserXmlQueryBuilder>)getQueryBuilderWithNSString:(NSString *)nodeName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlQueryBuilderFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlQueryBuilderFactory, builders_, JavaUtilHashMap *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init(OrgApacheLuceneQueryparserXmlQueryBuilderFactory *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlQueryBuilderFactory *new_OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlQueryBuilderFactory *create_OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlQueryBuilderFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryBuilderFactory")
