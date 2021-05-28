//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/TextableQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode_

@protocol JavaLangCharSequence;

/*!
 @brief Interface for a node that has text as a <code>CharSequence</code>
 */
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode < JavaObject >

- (id<JavaLangCharSequence>)getText;

- (void)setTextWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesTextableQueryNode")
