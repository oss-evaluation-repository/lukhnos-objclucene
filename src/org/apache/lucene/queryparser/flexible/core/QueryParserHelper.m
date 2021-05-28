//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/QueryParserHelper.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryParserHelper.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/SyntaxParser.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/core/QueryParserHelper must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper () {
 @public
  id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> processor_;
  id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser> syntaxParser_;
  id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> builder_;
  OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *config_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper, processor_, id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper, syntaxParser_, id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper, builder_, id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper, config_, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)

@implementation OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler
                          withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser:(id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser>)syntaxParser
                withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)processor
                        withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:(id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)builder {
  OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser_withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(self, queryConfigHandler, syntaxParser, processor, builder);
  return self;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)getQueryNodeProcessor {
  return processor_;
}

- (void)setQueryNodeProcessorWithOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)processor {
  JreStrongAssign(&self->processor_, processor);
  [((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk(self->processor_)) setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:[self getQueryConfigHandler]];
}

- (void)setSyntaxParserWithOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser:(id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser>)syntaxParser {
  if (syntaxParser == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"textParser should not be null!");
  }
  JreStrongAssign(&self->syntaxParser_, syntaxParser);
}

- (void)setQueryBuilderWithOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:(id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)queryBuilder {
  if (queryBuilder == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"queryBuilder should not be null!");
  }
  JreStrongAssign(&self->builder_, queryBuilder);
}

- (OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)getQueryConfigHandler {
  return config_;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>)getQueryBuilder {
  return self->builder_;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser>)getSyntaxParser {
  return self->syntaxParser_;
}

- (void)setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)config {
  JreStrongAssign(&self->config_, config);
  id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> processor = JreRetainedLocalValue([self getQueryNodeProcessor]);
  if (processor != nil) {
    [processor setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:config];
  }
}

- (id)parseWithNSString:(NSString *)query
           withNSString:(NSString *)defaultField {
  id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> queryTree = JreRetainedLocalValue([((id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser>) nil_chk([self getSyntaxParser])) parseWithJavaLangCharSequence:query withJavaLangCharSequence:defaultField]);
  id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> processor = JreRetainedLocalValue([self getQueryNodeProcessor]);
  if (processor != nil) {
    queryTree = [processor processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryTree];
  }
  return [((id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder>) nil_chk([self getQueryBuilder])) buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryTree];
}

- (void)dealloc {
  RELEASE_(processor_);
  RELEASE_(syntaxParser_);
  RELEASE_(builder_);
  RELEASE_(config_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 9, 10, 11, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser:withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor:withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:);
  methods[1].selector = @selector(getQueryNodeProcessor);
  methods[2].selector = @selector(setQueryNodeProcessorWithOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor:);
  methods[3].selector = @selector(setSyntaxParserWithOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser:);
  methods[4].selector = @selector(setQueryBuilderWithOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:);
  methods[5].selector = @selector(getQueryConfigHandler);
  methods[6].selector = @selector(getQueryBuilder);
  methods[7].selector = @selector(getSyntaxParser);
  methods[8].selector = @selector(setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:);
  methods[9].selector = @selector(parseWithNSString:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "processor_", "LOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "syntaxParser_", "LOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "builder_", "LOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "config_", "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;LOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser;LOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;LOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder;", "setQueryNodeProcessor", "LOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor;", "setSyntaxParser", "LOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser;", "setQueryBuilder", "LOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder;", "setQueryConfigHandler", "LOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;", "parse", "LNSString;LNSString;", "LOrgApacheLuceneQueryparserFlexibleCoreQueryNodeException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper = { "QueryParserHelper", "org.apache.lucene.queryparser.flexible.core", ptrTable, methods, fields, 7, 0x1, 10, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser_withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler, id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser> syntaxParser, id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> processor, id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> builder) {
  NSObject_init(self);
  JreStrongAssign(&self->syntaxParser_, syntaxParser);
  JreStrongAssign(&self->config_, queryConfigHandler);
  JreStrongAssign(&self->processor_, processor);
  JreStrongAssign(&self->builder_, builder);
  if (processor != nil) {
    [processor setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:queryConfigHandler];
  }
}

OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper *new_OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser_withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler, id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser> syntaxParser, id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> processor, id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> builder) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper, initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser_withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_, queryConfigHandler, syntaxParser, processor, builder)
}

OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper *create_OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser_withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler, id<OrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser> syntaxParser, id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor> processor, id<OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder> builder) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper, initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_withOrgApacheLuceneQueryparserFlexibleCoreParserSyntaxParser_withOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor_withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder_, queryConfigHandler, syntaxParser, processor, builder)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreQueryParserHelper)
