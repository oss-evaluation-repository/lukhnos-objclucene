//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/DummyQueryNodeBuilder.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/DummyQueryNodeBuilder.h"
#include "org/apache/lucene/search/TermQuery.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/builders/DummyQueryNodeBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchTermQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTermQuery;", 0x1, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "build", "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", "LOrgApacheLuceneQueryparserFlexibleCoreQueryNodeException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder = { "DummyQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder, init)
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder)
