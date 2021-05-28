//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BoostAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "org/apache/lucene/search/BoostAttribute.h"
#include "org/apache/lucene/search/BoostAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/BoostAttributeImpl must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchBoostAttributeImpl () {
 @public
  jfloat boost_;
}

@end

@implementation OrgApacheLuceneSearchBoostAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchBoostAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setBoostWithFloat:(jfloat)boost {
  self->boost_ = boost;
}

- (jfloat)getBoost {
  return boost_;
}

- (void)clear {
  boost_ = 1.0f;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  [((id<OrgApacheLuceneSearchBoostAttribute>) nil_chk(((id<OrgApacheLuceneSearchBoostAttribute>) cast_check(target, OrgApacheLuceneSearchBoostAttribute_class_())))) setBoostWithFloat:boost_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneSearchBoostAttribute_class_() withNSString:@"boost" withId:JavaLangFloat_valueOfWithFloat_(boost_)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setBoostWithFloat:);
  methods[2].selector = @selector(getBoost);
  methods[3].selector = @selector(clear);
  methods[4].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  methods[5].selector = @selector(reflectWithWithOrgApacheLuceneUtilAttributeReflector:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "boost_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setBoost", "F", "copyTo", "LOrgApacheLuceneUtilAttributeImpl;", "reflectWith", "LOrgApacheLuceneUtilAttributeReflector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBoostAttributeImpl = { "BoostAttributeImpl", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x11, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchBoostAttributeImpl;
}

@end

void OrgApacheLuceneSearchBoostAttributeImpl_init(OrgApacheLuceneSearchBoostAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  self->boost_ = 1.0f;
}

OrgApacheLuceneSearchBoostAttributeImpl *new_OrgApacheLuceneSearchBoostAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBoostAttributeImpl, init)
}

OrgApacheLuceneSearchBoostAttributeImpl *create_OrgApacheLuceneSearchBoostAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBoostAttributeImpl, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBoostAttributeImpl)
