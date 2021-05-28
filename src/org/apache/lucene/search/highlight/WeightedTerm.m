//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/WeightedTerm.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/highlight/WeightedTerm.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/highlight/WeightedTerm must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchHighlightWeightedTerm

- (instancetype)initWithFloat:(jfloat)weight
                 withNSString:(NSString *)term {
  OrgApacheLuceneSearchHighlightWeightedTerm_initWithFloat_withNSString_(self, weight, term);
  return self;
}

- (NSString *)getTerm {
  return term_;
}

- (jfloat)getWeight {
  return weight_;
}

- (void)setTermWithNSString:(NSString *)term {
  JreStrongAssign(&self->term_, term);
}

- (void)setWeightWithFloat:(jfloat)weight {
  self->weight_ = weight;
}

- (void)dealloc {
  RELEASE_(term_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithFloat:withNSString:);
  methods[1].selector = @selector(getTerm);
  methods[2].selector = @selector(getWeight);
  methods[3].selector = @selector(setTermWithNSString:);
  methods[4].selector = @selector(setWeightWithFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "weight_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "term_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "FLNSString;", "setTerm", "LNSString;", "setWeight", "F" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightWeightedTerm = { "WeightedTerm", "org.apache.lucene.search.highlight", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchHighlightWeightedTerm;
}

@end

void OrgApacheLuceneSearchHighlightWeightedTerm_initWithFloat_withNSString_(OrgApacheLuceneSearchHighlightWeightedTerm *self, jfloat weight, NSString *term) {
  NSObject_init(self);
  self->weight_ = weight;
  JreStrongAssign(&self->term_, term);
}

OrgApacheLuceneSearchHighlightWeightedTerm *new_OrgApacheLuceneSearchHighlightWeightedTerm_initWithFloat_withNSString_(jfloat weight, NSString *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightWeightedTerm, initWithFloat_withNSString_, weight, term)
}

OrgApacheLuceneSearchHighlightWeightedTerm *create_OrgApacheLuceneSearchHighlightWeightedTerm_initWithFloat_withNSString_(jfloat weight, NSString *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightWeightedTerm, initWithFloat_withNSString_, weight, term)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightWeightedTerm)
