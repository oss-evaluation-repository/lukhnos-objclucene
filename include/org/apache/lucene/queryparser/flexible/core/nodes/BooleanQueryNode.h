//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"

@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief A <code>BooleanQueryNode</code> represents a list of elements which do not have an
  explicit boolean operator defined between them.It can be used to express a
  boolean query that intends to use the default boolean operator.
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl

#pragma mark Public

/*!
 @param clauses - the query nodes to be and'ed
 */
- (instancetype __nonnull)initWithJavaUtilList:(id<JavaUtilList>)clauses;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_initWithJavaUtilList_(OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode *self, id<JavaUtilList> clauses);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_initWithJavaUtilList_(id<JavaUtilList> clauses) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_initWithJavaUtilList_(id<JavaUtilList> clauses);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode")
