//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/TooManyBasicQueries.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/queryparser/surround/query/TooManyBasicQueries.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/surround/query/TooManyBasicQueries must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries

- (instancetype)initWithInt:(jint)maxBasicQueries {
  OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_(self, maxBasicQueries);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries = { "TooManyBasicQueries", "org.apache.lucene.queryparser.surround.query", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries;
}

@end

void OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_(OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries *self, jint maxBasicQueries) {
  JavaIoIOException_initWithNSString_(self, JreStrcat("$I$", @"Exceeded maximum of ", maxBasicQueries, @" basic queries."));
}

OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries *new_OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_(jint maxBasicQueries) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries, initWithInt_, maxBasicQueries)
}

OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries *create_OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_(jint maxBasicQueries) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries, initWithInt_, maxBasicQueries)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries)
