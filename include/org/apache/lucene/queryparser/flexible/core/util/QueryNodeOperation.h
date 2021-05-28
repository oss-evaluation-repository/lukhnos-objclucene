//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/util/QueryNodeOperation.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation))
#define OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation_

@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief Allow joining 2 QueryNode Trees, into one.
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation : NSObject

#pragma mark Public

/*!
 @brief perform a logical and of 2 QueryNode trees.if q1 and q2 are ANDQueryNode
  nodes it uses head Node from q1 and adds the children of q2 to q1 if q1 is
  a AND node and q2 is not, add q2 as a child of the head node of q1 if q2 is
  a AND node and q1 is not, add q1 as a child of the head node of q2 if q1
  and q2 are not ANDQueryNode nodes, create a AND node and make q1 and q2
  children of that node if q1 or q2 is null it returns the not null node if
  q1 = q2 = null it returns null
 */
+ (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)logicalAndWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)q1
                                                                      withOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)q2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation)

FOUNDATION_EXPORT id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation_logicalAndWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> q1, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> q2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreUtilQueryNodeOperation")
