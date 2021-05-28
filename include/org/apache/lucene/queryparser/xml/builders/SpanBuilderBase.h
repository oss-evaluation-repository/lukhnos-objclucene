//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanBuilderBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase))
#define OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_

#define RESTRICT_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/builders/SpanQueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Base class for building <code>SpanQuery</code>s
 */
@interface OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase : NSObject < OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder >

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_init(OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase")
