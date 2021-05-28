//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/UserInputQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneQueryparserClassicQueryParser;
@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

/*!
 @brief UserInputQueryBuilder uses 1 of 2 strategies for thread-safe parsing:
  1) Synchronizing access to "parse" calls on a previously supplied QueryParser
  or..
 2) creating a new QueryParser object for each parse request
 */
@interface OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

/*!
 @brief This constructor has the disadvantage of not being able to change choice of default field name
 @param parser thread un-safe query parser
 */
- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserClassicQueryParser:(OrgApacheLuceneQueryparserClassicQueryParser *)parser;

- (instancetype __nonnull)initWithNSString:(NSString *)defaultField
       withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

#pragma mark Protected

/*!
 @brief Method to create a QueryParser - designed to be overridden
 @return QueryParser
 */
- (OrgApacheLuceneQueryparserClassicQueryParser *)createQueryParserWithNSString:(NSString *)fieldName
                                            withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *self, OrgApacheLuceneQueryparserClassicQueryParser *parser);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneQueryparserClassicQueryParser *parser) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithOrgApacheLuceneQueryparserClassicQueryParser_(OrgApacheLuceneQueryparserClassicQueryParser *parser);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *self, NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *defaultField, OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersUserInputQueryBuilder")
