//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/NearSpansOrdered.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/spans/NearSpans.h"
#include "org/apache/lucene/search/spans/NearSpansOrdered.h"
#include "org/apache/lucene/search/spans/SpanCollector.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/spans/NearSpansOrdered must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSpansNearSpansOrdered ()

- (jboolean)unpositioned;

/*!
 @brief Order the subSpans within the same document by using nextStartPosition on all subSpans
  after the first as little as necessary.
 Return true when the subSpans could be ordered in this way,
  otherwise at least one is exhausted in the current doc.
 */
- (jboolean)stretchToOrder;

+ (jint)advancePositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                                                   withInt:(jint)position;

@end

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_unpositioned(OrgApacheLuceneSearchSpansNearSpansOrdered *self);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(OrgApacheLuceneSearchSpansNearSpansOrdered *self);

__attribute__((unused)) static jint OrgApacheLuceneSearchSpansNearSpansOrdered_advancePositionWithOrgApacheLuceneSearchSpansSpans_withInt_(OrgApacheLuceneSearchSpansSpans *spans, jint position);

@implementation OrgApacheLuceneSearchSpansNearSpansOrdered

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNearQuery:(OrgApacheLuceneSearchSpansSpanNearQuery *)query
                                               withJavaUtilList:(id<JavaUtilList>)subSpans {
  OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_(self, query, subSpans);
  return self;
}

- (jboolean)twoPhaseCurrentDocMatches {
  JreAssert(OrgApacheLuceneSearchSpansNearSpansOrdered_unpositioned(self), @"org/apache/lucene/search/spans/NearSpansOrdered.java:58 condition failed: assert unpositioned();");
  oneExhaustedInCurrentDoc_ = false;
  while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(nil_chk(subSpans_), 0))) nextStartPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS && !oneExhaustedInCurrentDoc_) {
    if (OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(self) && matchWidth_ <= allowedSlop_) {
      return atFirstInCurrentDoc_ = true;
    }
  }
  return false;
}

- (jboolean)unpositioned {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_unpositioned(self);
}

- (jint)nextStartPosition {
  if (atFirstInCurrentDoc_) {
    atFirstInCurrentDoc_ = false;
    return matchStart_;
  }
  oneExhaustedInCurrentDoc_ = false;
  while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(nil_chk(subSpans_), 0))) nextStartPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS && !oneExhaustedInCurrentDoc_) {
    if (OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(self) && matchWidth_ <= allowedSlop_) {
      return matchStart_;
    }
  }
  return matchStart_ = matchEnd_ = OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS;
}

- (jboolean)stretchToOrder {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(self);
}

+ (jint)advancePositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                                                   withInt:(jint)position {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_advancePositionWithOrgApacheLuceneSearchSpansSpans_withInt_(spans, position);
}

- (jint)startPosition {
  return atFirstInCurrentDoc_ ? -1 : matchStart_;
}

- (jint)endPosition {
  return atFirstInCurrentDoc_ ? -1 : matchEnd_;
}

- (jint)width {
  return matchWidth_;
}

- (void)collectWithOrgApacheLuceneSearchSpansSpanCollector:(id<OrgApacheLuceneSearchSpansSpanCollector>)collector {
  {
    IOSObjectArray *a__ = subSpans_;
    OrgApacheLuceneSearchSpansSpans * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchSpansSpans * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchSpansSpans *spans = *b__++;
      [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans)) collectWithOrgApacheLuceneSearchSpansSpanCollector:collector];
    }
  }
}

- (NSString *)description {
  return JreStrcat("$$$I$I$I", @"NearSpansOrdered(", [((OrgApacheLuceneSearchSpansSpanNearQuery *) nil_chk(query_)) description], @")@", [self docID], @": ", [self startPosition], @" - ", [self endPosition]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, 2, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0xa, 3, 4, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanNearQuery:withJavaUtilList:);
  methods[1].selector = @selector(twoPhaseCurrentDocMatches);
  methods[2].selector = @selector(unpositioned);
  methods[3].selector = @selector(nextStartPosition);
  methods[4].selector = @selector(stretchToOrder);
  methods[5].selector = @selector(advancePositionWithOrgApacheLuceneSearchSpansSpans:withInt:);
  methods[6].selector = @selector(startPosition);
  methods[7].selector = @selector(endPosition);
  methods[8].selector = @selector(width);
  methods[9].selector = @selector(collectWithOrgApacheLuceneSearchSpansSpanCollector:);
  methods[10].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "matchStart_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "matchEnd_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "matchWidth_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansSpanNearQuery;LJavaUtilList;", "LJavaIoIOException;", "(Lorg/apache/lucene/search/spans/SpanNearQuery;Ljava/util/List<Lorg/apache/lucene/search/spans/Spans;>;)V", "advancePosition", "LOrgApacheLuceneSearchSpansSpans;I", "collect", "LOrgApacheLuceneSearchSpansSpanCollector;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansNearSpansOrdered = { "NearSpansOrdered", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x1, 11, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansNearSpansOrdered;
}

@end

void OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_(OrgApacheLuceneSearchSpansNearSpansOrdered *self, OrgApacheLuceneSearchSpansSpanNearQuery *query, id<JavaUtilList> subSpans) {
  OrgApacheLuceneSearchSpansNearSpans_initPackagePrivateWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_(self, query, subSpans);
  self->matchStart_ = -1;
  self->matchEnd_ = -1;
  self->matchWidth_ = -1;
  self->atFirstInCurrentDoc_ = true;
}

OrgApacheLuceneSearchSpansNearSpansOrdered *new_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_(OrgApacheLuceneSearchSpansSpanNearQuery *query, id<JavaUtilList> subSpans) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansNearSpansOrdered, initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_, query, subSpans)
}

OrgApacheLuceneSearchSpansNearSpansOrdered *create_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_(OrgApacheLuceneSearchSpansSpanNearQuery *query, id<JavaUtilList> subSpans) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansNearSpansOrdered, initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_, query, subSpans)
}

jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_unpositioned(OrgApacheLuceneSearchSpansNearSpansOrdered *self) {
  {
    IOSObjectArray *a__ = self->subSpans_;
    OrgApacheLuceneSearchSpansSpans * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchSpansSpans * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchSpansSpans *span = *b__++;
      if ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(span)) startPosition] != -1) return false;
    }
  }
  return true;
}

jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(OrgApacheLuceneSearchSpansNearSpansOrdered *self) {
  OrgApacheLuceneSearchSpansSpans *prevSpans = IOSObjectArray_Get(nil_chk(self->subSpans_), 0);
  self->matchStart_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(prevSpans)) startPosition];
  JreAssert([prevSpans startPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS, JreStrcat("$@", @"prevSpans no start position ", prevSpans));
  JreAssert([prevSpans endPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS, @"org/apache/lucene/search/spans/NearSpansOrdered.java:101 condition failed: assert prevSpans.endPosition() != NO_MORE_POSITIONS;");
  self->matchWidth_ = 0;
  for (jint i = 1; i < self->subSpans_->size_; i++) {
    OrgApacheLuceneSearchSpansSpans *spans = IOSObjectArray_Get(self->subSpans_, i);
    JreAssert([((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans)) startPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS, @"org/apache/lucene/search/spans/NearSpansOrdered.java:105 condition failed: assert spans.startPosition() != NO_MORE_POSITIONS;");
    JreAssert([spans endPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS, @"org/apache/lucene/search/spans/NearSpansOrdered.java:106 condition failed: assert spans.endPosition() != NO_MORE_POSITIONS;");
    if (OrgApacheLuceneSearchSpansNearSpansOrdered_advancePositionWithOrgApacheLuceneSearchSpansSpans_withInt_(spans, [prevSpans endPosition]) == OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS) {
      self->oneExhaustedInCurrentDoc_ = true;
      return false;
    }
    self->matchWidth_ += ([spans startPosition] - [prevSpans endPosition]);
    prevSpans = spans;
  }
  self->matchEnd_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpans_, self->subSpans_->size_ - 1))) endPosition];
  return true;
}

jint OrgApacheLuceneSearchSpansNearSpansOrdered_advancePositionWithOrgApacheLuceneSearchSpansSpans_withInt_(OrgApacheLuceneSearchSpansSpans *spans, jint position) {
  OrgApacheLuceneSearchSpansNearSpansOrdered_initialize();
  if ([spans isKindOfClass:[OrgApacheLuceneSearchSpansSpanNearQuery_GapSpans class]]) {
    return [((OrgApacheLuceneSearchSpansSpanNearQuery_GapSpans *) nil_chk(((OrgApacheLuceneSearchSpansSpanNearQuery_GapSpans *) spans))) skipToPositionWithInt:position];
  }
  while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans)) startPosition] < position) {
    [spans nextStartPosition];
  }
  return [spans startPosition];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansNearSpansOrdered)
