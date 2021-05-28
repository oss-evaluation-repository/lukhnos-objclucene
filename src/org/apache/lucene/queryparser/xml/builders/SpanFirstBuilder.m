//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanFirstBuilder.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanBuilderBase.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanFirstBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanQueryBuilder.h"
#include "org/apache/lucene/search/spans/SpanFirstQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/w3c/dom/Element.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/xml/builders/SpanFirstBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder () {
 @public
  id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder, factory_, id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)

@implementation OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder

- (instancetype)initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)factory {
  OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(self, factory);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  jint end = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"end", 1);
  id<OrgW3cDomElement> child = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildElementWithOrgW3cDomElement_(e);
  OrgApacheLuceneSearchSpansSpanQuery *q = JreRetainedLocalValue([((id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>) nil_chk(factory_)) getSpanQueryWithOrgW3cDomElement:child]);
  OrgApacheLuceneSearchSpansSpanFirstQuery *sfq = create_OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_(q, end);
  [sfq setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return sfq;
}

- (void)dealloc {
  RELEASE_(factory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanQuery;", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:);
  methods[1].selector = @selector(getSpanQueryWithOrgW3cDomElement:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "factory_", "LOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder;", "getSpanQuery", "LOrgW3cDomElement;", "LOrgApacheLuceneQueryparserXmlParserException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder = { "SpanFirstBuilder", "org.apache.lucene.queryparser.xml.builders", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder *self, id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  OrgApacheLuceneQueryparserXmlBuildersSpanBuilderBase_init(self);
  JreStrongAssign(&self->factory_, factory);
}

OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder *new_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder, initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_, factory)
}

OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder *create_OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder_initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> factory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder, initWithOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder_, factory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersSpanFirstBuilder)
