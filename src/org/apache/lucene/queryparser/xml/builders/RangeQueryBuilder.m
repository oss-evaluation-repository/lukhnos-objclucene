//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/RangeQueryBuilder.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/builders/RangeQueryBuilder.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermRangeQuery.h"
#include "org/w3c/dom/Element.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/xml/builders/RangeQueryBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *fieldName = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceWithOrgW3cDomElement_withNSString_(e, @"fieldName");
  NSString *lowerTerm = JreRetainedLocalValue([((id<OrgW3cDomElement>) nil_chk(e)) getAttributeWithNSString:@"lowerTerm"]);
  NSString *upperTerm = JreRetainedLocalValue([e getAttributeWithNSString:@"upperTerm"]);
  jboolean includeLower = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(e, @"includeLower", true);
  jboolean includeUpper = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(e, @"includeUpper", true);
  return OrgApacheLuceneSearchTermRangeQuery_newStringRangeWithNSString_withNSString_withNSString_withBoolean_withBoolean_(fieldName, lowerTerm, upperTerm, includeLower, includeUpper);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getQueryWithOrgW3cDomElement:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getQuery", "LOrgW3cDomElement;", "LOrgApacheLuceneQueryparserXmlParserException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder = { "RangeQueryBuilder", "org.apache.lucene.queryparser.xml.builders", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder_init(OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder, init)
}

OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersRangeQueryBuilder)
