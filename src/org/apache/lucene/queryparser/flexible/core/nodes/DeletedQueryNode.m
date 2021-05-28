//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.java
//

#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper {
  return @"[DELETEDCHILD]";
}

- (NSString *)description {
  return @"<deleted/>";
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *) cast_chk([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode class]);
  return clone;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:);
  methods[2].selector = @selector(description);
  methods[3].selector = @selector(cloneTree);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toQueryString", "LOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;", "toString", "LJavaLangCloneNotSupportedException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode = { "DeletedQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *self) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode, init)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode)
