//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/MultiTermRewriteMethodProcessor.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/config/ConfigurationKey.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/StandardQueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/AbstractRangeQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/RegexpQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/WildcardQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MultiTermRewriteMethodProcessor.h"
#include "org/apache/lucene/search/MultiTermQuery.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/processors/MultiTermRewriteMethodProcessor must not be compiled with ARC (-fobjc-arc)"
#endif

NSString *OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_TAG_ID = @"MultiTermRewriteMethodConfiguration";

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor

+ (NSString *)TAG_ID {
  return OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_TAG_ID;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesWildcardQueryNode class]] || [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode class]] || [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode class]]) {
    OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *rewriteMethod = JreRetainedLocalValue([((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, MULTI_TERM_REWRITE_METHOD)]);
    if (rewriteMethod == nil) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"StandardQueryConfigHandler.ConfigurationKeys.MULTI_TERM_REWRITE_METHOD should be set on the QueryConfigHandler");
    }
    [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) setTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_TAG_ID withId:rewriteMethod];
  }
  return node;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  return children;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x4, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", 0x4, 2, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x4, 3, 4, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  methods[2].selector = @selector(preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:);
  methods[3].selector = @selector(setChildrenOrderWithJavaUtilList:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_ID", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "postProcessNode", "LOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;", "preProcessNode", "setChildrenOrder", "LJavaUtilList;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;", &OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_TAG_ID };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor = { "MultiTermRewriteMethodProcessor", "org.apache.lucene.queryparser.flexible.standard.processors", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor, init)
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor)
