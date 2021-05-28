//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueFloat.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueFloat.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/mutable/MutableValueFloat must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilMutableMutableValueFloat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilMutableMutableValueFloat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)toObject {
  JreAssert(exists_ || 0.0f == value_, @"org/apache/lucene/util/mutable/MutableValueFloat.java:30 condition failed: assert exists || 0.0F == value;");
  return exists_ ? JavaLangFloat_valueOfWithFloat_(value_) : nil;
}

- (void)copy__WithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)source {
  OrgApacheLuceneUtilMutableMutableValueFloat *s = (OrgApacheLuceneUtilMutableMutableValueFloat *) cast_chk(source, [OrgApacheLuceneUtilMutableMutableValueFloat class]);
  value_ = ((OrgApacheLuceneUtilMutableMutableValueFloat *) nil_chk(s))->value_;
  exists_ = s->exists_;
}

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate {
  OrgApacheLuceneUtilMutableMutableValueFloat *v = create_OrgApacheLuceneUtilMutableMutableValueFloat_init();
  v->value_ = self->value_;
  v->exists_ = self->exists_;
  return v;
}

- (jboolean)equalsSameTypeWithId:(id)other {
  JreAssert(exists_ || 0.0f == value_, @"org/apache/lucene/util/mutable/MutableValueFloat.java:51 condition failed: assert exists || 0.0F == value;");
  OrgApacheLuceneUtilMutableMutableValueFloat *b = (OrgApacheLuceneUtilMutableMutableValueFloat *) cast_chk(other, [OrgApacheLuceneUtilMutableMutableValueFloat class]);
  return value_ == ((OrgApacheLuceneUtilMutableMutableValueFloat *) nil_chk(b))->value_ && exists_ == b->exists_;
}

- (jint)compareSameTypeWithId:(id)other {
  JreAssert(exists_ || 0.0f == value_, @"org/apache/lucene/util/mutable/MutableValueFloat.java:58 condition failed: assert exists || 0.0F == value;");
  OrgApacheLuceneUtilMutableMutableValueFloat *b = (OrgApacheLuceneUtilMutableMutableValueFloat *) cast_chk(other, [OrgApacheLuceneUtilMutableMutableValueFloat class]);
  jint c = JavaLangFloat_compareWithFloat_withFloat_(value_, ((OrgApacheLuceneUtilMutableMutableValueFloat *) nil_chk(b))->value_);
  if (c != 0) return c;
  if (exists_ == b->exists_) return 0;
  return exists_ ? 1 : -1;
}

- (NSUInteger)hash {
  JreAssert(exists_ || 0.0f == value_, @"org/apache/lucene/util/mutable/MutableValueFloat.java:68 condition failed: assert exists || 0.0F == value;");
  return JavaLangFloat_floatToIntBitsWithFloat_(value_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilMutableMutableValue;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toObject);
  methods[2].selector = @selector(copy__WithOrgApacheLuceneUtilMutableMutableValue:);
  methods[3].selector = @selector(duplicate);
  methods[4].selector = @selector(equalsSameTypeWithId:);
  methods[5].selector = @selector(compareSameTypeWithId:);
  methods[6].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "copy", "LOrgApacheLuceneUtilMutableMutableValue;", "equalsSameType", "LNSObject;", "compareSameType", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilMutableMutableValueFloat = { "MutableValueFloat", "org.apache.lucene.util.mutable", ptrTable, methods, fields, 7, 0x1, 7, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilMutableMutableValueFloat;
}

@end

void OrgApacheLuceneUtilMutableMutableValueFloat_init(OrgApacheLuceneUtilMutableMutableValueFloat *self) {
  OrgApacheLuceneUtilMutableMutableValue_init(self);
}

OrgApacheLuceneUtilMutableMutableValueFloat *new_OrgApacheLuceneUtilMutableMutableValueFloat_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilMutableMutableValueFloat, init)
}

OrgApacheLuceneUtilMutableMutableValueFloat *create_OrgApacheLuceneUtilMutableMutableValueFloat_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilMutableMutableValueFloat, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilMutableMutableValueFloat)
