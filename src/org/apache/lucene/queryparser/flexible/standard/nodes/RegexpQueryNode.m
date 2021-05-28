//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/RegexpQueryNode.java
//

#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/RegexpQueryNode.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/nodes/RegexpQueryNode must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode () {
 @public
  id<JavaLangCharSequence> text_;
  id<JavaLangCharSequence> field_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode, text_, id<JavaLangCharSequence>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode, field_, id<JavaLangCharSequence>)

@implementation OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)field
                    withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                     withInt:(jint)begin
                                     withInt:(jint)end {
  OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(self, field, text, begin, end);
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)textToBytesRef {
  return create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(text_);
}

- (NSString *)description {
  return JreStrcat("$@$@$", @"<regexp field='", self->field_, @"' term='", self->text_, @"'/>");
}

- (OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode *)cloneTree {
  OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode *) cast_chk([super cloneTree], [OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode class]);
  JreStrongAssign(&((OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode *) nil_chk(clone))->field_, self->field_);
  JreStrongAssign(&clone->text_, self->text_);
  return clone;
}

- (id<JavaLangCharSequence>)getText {
  return text_;
}

- (void)setTextWithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  JreStrongAssign(&self->text_, text);
}

- (id<JavaLangCharSequence>)getField {
  return field_;
}

- (NSString *)getFieldAsString {
  return [((id<JavaLangCharSequence>) nil_chk(field_)) description];
}

- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)field {
  JreStrongAssign(&self->field_, field);
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  return [self isDefaultFieldWithJavaLangCharSequence:field_] ? JreStrcat("C@C", '/', text_, '/') : JreStrcat("@$@C", field_, @":/", text_, '/');
}

- (void)dealloc {
  RELEASE_(text_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaLangCharSequence:withJavaLangCharSequence:withInt:withInt:);
  methods[1].selector = @selector(textToBytesRef);
  methods[2].selector = @selector(description);
  methods[3].selector = @selector(cloneTree);
  methods[4].selector = @selector(getText);
  methods[5].selector = @selector(setTextWithJavaLangCharSequence:);
  methods[6].selector = @selector(getField);
  methods[7].selector = @selector(getFieldAsString);
  methods[8].selector = @selector(setFieldWithJavaLangCharSequence:);
  methods[9].selector = @selector(toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "text_", "LJavaLangCharSequence;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "field_", "LJavaLangCharSequence;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangCharSequence;LJavaLangCharSequence;II", "toString", "LJavaLangCloneNotSupportedException;", "setText", "LJavaLangCharSequence;", "setField", "toQueryString", "LOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode = { "RegexpQueryNode", "org.apache.lucene.queryparser.flexible.standard.nodes", ptrTable, methods, fields, 7, 0x1, 10, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode *self, id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_init(self);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->text_, [((id<JavaLangCharSequence>) nil_chk(text)) subSequenceFrom:begin to:end]);
}

OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode, initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_, field, text, begin, end)
}

OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode *create_OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode, initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_, field, text, begin, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode)
