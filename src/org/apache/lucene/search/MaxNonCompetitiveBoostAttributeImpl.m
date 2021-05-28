//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/MaxNonCompetitiveBoostAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "org/apache/lucene/search/MaxNonCompetitiveBoostAttribute.h"
#include "org/apache/lucene/search/MaxNonCompetitiveBoostAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/MaxNonCompetitiveBoostAttributeImpl must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl () {
 @public
  jfloat maxNonCompetitiveBoost_;
  OrgApacheLuceneUtilBytesRef *competitiveTerm_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl, competitiveTerm_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setMaxNonCompetitiveBoostWithFloat:(jfloat)maxNonCompetitiveBoost {
  self->maxNonCompetitiveBoost_ = maxNonCompetitiveBoost;
}

- (jfloat)getMaxNonCompetitiveBoost {
  return maxNonCompetitiveBoost_;
}

- (void)setCompetitiveTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)competitiveTerm {
  JreStrongAssign(&self->competitiveTerm_, competitiveTerm);
}

- (OrgApacheLuceneUtilBytesRef *)getCompetitiveTerm {
  return competitiveTerm_;
}

- (void)clear {
  maxNonCompetitiveBoost_ = JavaLangFloat_NEGATIVE_INFINITY;
  JreStrongAssign(&competitiveTerm_, nil);
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *t = (OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *) cast_chk(target, [OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl class]);
  [((OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *) nil_chk(t)) setMaxNonCompetitiveBoostWithFloat:maxNonCompetitiveBoost_];
  [t setCompetitiveTermWithOrgApacheLuceneUtilBytesRef:competitiveTerm_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute_class_() withNSString:@"maxNonCompetitiveBoost" withId:JavaLangFloat_valueOfWithFloat_(maxNonCompetitiveBoost_)];
  [reflector reflectWithIOSClass:OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute_class_() withNSString:@"competitiveTerm" withId:competitiveTerm_];
}

- (void)dealloc {
  RELEASE_(competitiveTerm_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setMaxNonCompetitiveBoostWithFloat:);
  methods[2].selector = @selector(getMaxNonCompetitiveBoost);
  methods[3].selector = @selector(setCompetitiveTermWithOrgApacheLuceneUtilBytesRef:);
  methods[4].selector = @selector(getCompetitiveTerm);
  methods[5].selector = @selector(clear);
  methods[6].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  methods[7].selector = @selector(reflectWithWithOrgApacheLuceneUtilAttributeReflector:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "maxNonCompetitiveBoost_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "competitiveTerm_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setMaxNonCompetitiveBoost", "F", "setCompetitiveTerm", "LOrgApacheLuceneUtilBytesRef;", "copyTo", "LOrgApacheLuceneUtilAttributeImpl;", "reflectWith", "LOrgApacheLuceneUtilAttributeReflector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl = { "MaxNonCompetitiveBoostAttributeImpl", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x11, 8, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl;
}

@end

void OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_init(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  self->maxNonCompetitiveBoost_ = JavaLangFloat_NEGATIVE_INFINITY;
  JreStrongAssign(&self->competitiveTerm_, nil);
}

OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *new_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl, init)
}

OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *create_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl)
