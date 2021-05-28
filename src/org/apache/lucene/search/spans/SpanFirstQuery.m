//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanFirstQuery.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/spans/FilterSpans.h"
#include "org/apache/lucene/search/spans/SpanFirstQuery.h"
#include "org/apache/lucene/search/spans/SpanPositionRangeQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/ToStringUtils.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/spans/SpanFirstQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchSpansSpanFirstQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)match
                                                    withInt:(jint)end {
  OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_(self, match, end);
  return self;
}

- (OrgApacheLuceneSearchSpansFilterSpans_AcceptStatus *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans {
  JreAssert([((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans)) startPosition] != [spans endPosition], JreStrcat("$I", @"start equals end: ", [spans startPosition]));
  if ([spans startPosition] >= end_) return JreLoadEnum(OrgApacheLuceneSearchSpansFilterSpans_AcceptStatus, NO_MORE_IN_CURRENT_DOC);
  else if ([spans endPosition] <= end_) return JreLoadEnum(OrgApacheLuceneSearchSpansFilterSpans_AcceptStatus, YES);
  else return JreLoadEnum(OrgApacheLuceneSearchSpansFilterSpans_AcceptStatus, NO);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"spanFirst("];
  [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) toStringWithNSString:field]];
  [buffer appendWithNSString:@", "];
  [buffer appendWithInt:end_];
  [buffer appendWithNSString:@")"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (OrgApacheLuceneSearchSpansSpanFirstQuery *)java_clone {
  OrgApacheLuceneSearchSpansSpanFirstQuery *spanFirstQuery = create_OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_((OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) java_clone], [OrgApacheLuceneSearchSpansSpanQuery class]), end_);
  [spanFirstQuery setBoostWithFloat:[self getBoost]];
  return spanFirstQuery;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansFilterSpans_AcceptStatus;", 0x4, 1, 2, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanFirstQuery;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanQuery:withInt:);
  methods[1].selector = @selector(acceptPositionWithOrgApacheLuceneSearchSpansSpans:);
  methods[2].selector = @selector(toStringWithNSString:);
  methods[3].selector = @selector(java_clone);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansSpanQuery;I", "acceptPosition", "LOrgApacheLuceneSearchSpansSpans;", "LJavaIoIOException;", "toString", "LNSString;", "clone" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanFirstQuery = { "SpanFirstQuery", "org.apache.lucene.search.spans", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanFirstQuery;
}

@end

void OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_(OrgApacheLuceneSearchSpansSpanFirstQuery *self, OrgApacheLuceneSearchSpansSpanQuery *match, jint end) {
  OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(self, match, 0, end);
}

OrgApacheLuceneSearchSpansSpanFirstQuery *new_OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint end) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanFirstQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_, match, end)
}

OrgApacheLuceneSearchSpansSpanFirstQuery *create_OrgApacheLuceneSearchSpansSpanFirstQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint end) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanFirstQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_, match, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanFirstQuery)
