//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanCollector.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/spans/SpanCollector.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/spans/SpanCollector must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSpansSpanCollector : NSObject

@end

@implementation OrgApacheLuceneSearchSpansSpanCollector

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(collectLeafWithOrgApacheLuceneIndexPostingsEnum:withInt:withOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "collectLeaf", "LOrgApacheLuceneIndexPostingsEnum;ILOrgApacheLuceneIndexTerm;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanCollector = { "SpanCollector", "org.apache.lucene.search.spans", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanCollector;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanCollector)
