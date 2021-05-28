//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueInt.java
//

#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueInt.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/mutable/MutableValueInt must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilMutableMutableValueInt

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilMutableMutableValueInt_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)toObject {
  JreAssert(exists_ || 0 == value_, @"org/apache/lucene/util/mutable/MutableValueInt.java:30 condition failed: assert exists || 0 == value;");
  return exists_ ? JavaLangInteger_valueOfWithInt_(value_) : nil;
}

- (void)copy__WithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)source {
  OrgApacheLuceneUtilMutableMutableValueInt *s = (OrgApacheLuceneUtilMutableMutableValueInt *) cast_chk(source, [OrgApacheLuceneUtilMutableMutableValueInt class]);
  value_ = ((OrgApacheLuceneUtilMutableMutableValueInt *) nil_chk(s))->value_;
  exists_ = s->exists_;
}

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate {
  OrgApacheLuceneUtilMutableMutableValueInt *v = create_OrgApacheLuceneUtilMutableMutableValueInt_init();
  v->value_ = self->value_;
  v->exists_ = self->exists_;
  return v;
}

- (jboolean)equalsSameTypeWithId:(id)other {
  JreAssert(exists_ || 0 == value_, @"org/apache/lucene/util/mutable/MutableValueInt.java:51 condition failed: assert exists || 0 == value;");
  OrgApacheLuceneUtilMutableMutableValueInt *b = (OrgApacheLuceneUtilMutableMutableValueInt *) cast_chk(other, [OrgApacheLuceneUtilMutableMutableValueInt class]);
  return value_ == ((OrgApacheLuceneUtilMutableMutableValueInt *) nil_chk(b))->value_ && exists_ == b->exists_;
}

- (jint)compareSameTypeWithId:(id)other {
  JreAssert(exists_ || 0 == value_, @"org/apache/lucene/util/mutable/MutableValueInt.java:58 condition failed: assert exists || 0 == value;");
  OrgApacheLuceneUtilMutableMutableValueInt *b = (OrgApacheLuceneUtilMutableMutableValueInt *) cast_chk(other, [OrgApacheLuceneUtilMutableMutableValueInt class]);
  jint ai = value_;
  jint bi = ((OrgApacheLuceneUtilMutableMutableValueInt *) nil_chk(b))->value_;
  if (ai < bi) return -1;
  else if (ai > bi) return 1;
  if (exists_ == b->exists_) return 0;
  return exists_ ? 1 : -1;
}

- (NSUInteger)hash {
  JreAssert(exists_ || 0 == value_, @"org/apache/lucene/util/mutable/MutableValueInt.java:72 condition failed: assert exists || 0 == value;");
  return (JreRShift32(value_, 8)) + (JreRShift32(value_, 16));
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
    { "value_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "copy", "LOrgApacheLuceneUtilMutableMutableValue;", "equalsSameType", "LNSObject;", "compareSameType", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilMutableMutableValueInt = { "MutableValueInt", "org.apache.lucene.util.mutable", ptrTable, methods, fields, 7, 0x1, 7, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilMutableMutableValueInt;
}

@end

void OrgApacheLuceneUtilMutableMutableValueInt_init(OrgApacheLuceneUtilMutableMutableValueInt *self) {
  OrgApacheLuceneUtilMutableMutableValue_init(self);
}

OrgApacheLuceneUtilMutableMutableValueInt *new_OrgApacheLuceneUtilMutableMutableValueInt_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilMutableMutableValueInt, init)
}

OrgApacheLuceneUtilMutableMutableValueInt *create_OrgApacheLuceneUtilMutableMutableValueInt_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilMutableMutableValueInt, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilMutableMutableValueInt)
