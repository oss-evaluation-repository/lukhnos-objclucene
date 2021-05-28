//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueLong.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueLong.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/mutable/MutableValueLong must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilMutableMutableValueLong

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilMutableMutableValueLong_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)toObject {
  JreAssert(exists_ || 0LL == value_, @"org/apache/lucene/util/mutable/MutableValueLong.java:30 condition failed: assert exists || 0L == value;");
  return exists_ ? JavaLangLong_valueOfWithLong_(value_) : nil;
}

- (void)copy__WithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)source {
  OrgApacheLuceneUtilMutableMutableValueLong *s = (OrgApacheLuceneUtilMutableMutableValueLong *) cast_chk(source, [OrgApacheLuceneUtilMutableMutableValueLong class]);
  exists_ = ((OrgApacheLuceneUtilMutableMutableValueLong *) nil_chk(s))->exists_;
  value_ = s->value_;
}

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate {
  OrgApacheLuceneUtilMutableMutableValueLong *v = create_OrgApacheLuceneUtilMutableMutableValueLong_init();
  v->value_ = self->value_;
  v->exists_ = self->exists_;
  return v;
}

- (jboolean)equalsSameTypeWithId:(id)other {
  JreAssert(exists_ || 0LL == value_, @"org/apache/lucene/util/mutable/MutableValueLong.java:51 condition failed: assert exists || 0L == value;");
  OrgApacheLuceneUtilMutableMutableValueLong *b = (OrgApacheLuceneUtilMutableMutableValueLong *) cast_chk(other, [OrgApacheLuceneUtilMutableMutableValueLong class]);
  return value_ == ((OrgApacheLuceneUtilMutableMutableValueLong *) nil_chk(b))->value_ && exists_ == b->exists_;
}

- (jint)compareSameTypeWithId:(id)other {
  JreAssert(exists_ || 0LL == value_, @"org/apache/lucene/util/mutable/MutableValueLong.java:58 condition failed: assert exists || 0L == value;");
  OrgApacheLuceneUtilMutableMutableValueLong *b = (OrgApacheLuceneUtilMutableMutableValueLong *) cast_chk(other, [OrgApacheLuceneUtilMutableMutableValueLong class]);
  jlong bv = ((OrgApacheLuceneUtilMutableMutableValueLong *) nil_chk(b))->value_;
  if (value_ < bv) return -1;
  if (value_ > bv) return 1;
  if (exists_ == b->exists_) return 0;
  return exists_ ? 1 : -1;
}

- (NSUInteger)hash {
  JreAssert(exists_ || 0LL == value_, @"org/apache/lucene/util/mutable/MutableValueLong.java:70 condition failed: assert exists || 0L == value;");
  return (jint) value_ + (jint) (JreRShift64(value_, 32));
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
    { "value_", "J", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "copy", "LOrgApacheLuceneUtilMutableMutableValue;", "equalsSameType", "LNSObject;", "compareSameType", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilMutableMutableValueLong = { "MutableValueLong", "org.apache.lucene.util.mutable", ptrTable, methods, fields, 7, 0x1, 7, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilMutableMutableValueLong;
}

@end

void OrgApacheLuceneUtilMutableMutableValueLong_init(OrgApacheLuceneUtilMutableMutableValueLong *self) {
  OrgApacheLuceneUtilMutableMutableValue_init(self);
}

OrgApacheLuceneUtilMutableMutableValueLong *new_OrgApacheLuceneUtilMutableMutableValueLong_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilMutableMutableValueLong, init)
}

OrgApacheLuceneUtilMutableMutableValueLong *create_OrgApacheLuceneUtilMutableMutableValueLong_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilMutableMutableValueLong, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilMutableMutableValueLong)
