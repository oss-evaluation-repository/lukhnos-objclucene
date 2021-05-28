//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BitSetIterator.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/BitSetIterator.h"
#include "org/apache/lucene/util/FixedBitSet.h"
#include "org/apache/lucene/util/SparseFixedBitSet.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/BitSetIterator must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilBitSetIterator () {
 @public
  OrgApacheLuceneUtilBitSet *bits_;
  jint length_;
  jlong cost_;
  jint doc_;
}

+ (OrgApacheLuceneUtilBitSet *)getBitSetWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator
                                                                     withIOSClass:(IOSClass *)clazz;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBitSetIterator, bits_, OrgApacheLuceneUtilBitSet *)

__attribute__((unused)) static OrgApacheLuceneUtilBitSet *OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(OrgApacheLuceneSearchDocIdSetIterator *iterator, IOSClass *clazz);

@implementation OrgApacheLuceneUtilBitSetIterator

+ (OrgApacheLuceneUtilBitSet *)getBitSetWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator
                                                                     withIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(iterator, clazz);
}

+ (OrgApacheLuceneUtilFixedBitSet *)getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  return OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator);
}

+ (OrgApacheLuceneUtilSparseFixedBitSet *)getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  return OrgApacheLuceneUtilBitSetIterator_getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator);
}

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)bits
                                         withLong:(jlong)cost {
  OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(self, bits, cost);
  return self;
}

- (jint)docID {
  return doc_;
}

- (jint)nextDoc {
  return [self advanceWithInt:doc_ + 1];
}

- (jint)advanceWithInt:(jint)target {
  if (target >= length_) {
    return doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
  }
  return doc_ = [((OrgApacheLuceneUtilBitSet *) nil_chk(bits_)) nextSetBitWithInt:target];
}

- (jlong)cost {
  return cost_;
}

- (void)dealloc {
  RELEASE_(bits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneUtilBitSet;", 0xa, 0, 1, -1, 2, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFixedBitSet;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilSparseFixedBitSet;", 0x9, 5, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getBitSetWithOrgApacheLuceneSearchDocIdSetIterator:withIOSClass:);
  methods[1].selector = @selector(getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[2].selector = @selector(getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[3].selector = @selector(initWithOrgApacheLuceneUtilBitSet:withLong:);
  methods[4].selector = @selector(docID);
  methods[5].selector = @selector(nextDoc);
  methods[6].selector = @selector(advanceWithInt:);
  methods[7].selector = @selector(cost);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bits_", "LOrgApacheLuceneUtilBitSet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "length_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "cost_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "doc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getBitSet", "LOrgApacheLuceneSearchDocIdSetIterator;LIOSClass;", "<T:Lorg/apache/lucene/util/BitSet;>(Lorg/apache/lucene/search/DocIdSetIterator;Ljava/lang/Class<+TT;>;)TT;", "getFixedBitSetOrNull", "LOrgApacheLuceneSearchDocIdSetIterator;", "getSparseFixedBitSetOrNull", "LOrgApacheLuceneUtilBitSet;J", "advance", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBitSetIterator = { "BitSetIterator", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x1, 8, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilBitSetIterator;
}

@end

OrgApacheLuceneUtilBitSet *OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(OrgApacheLuceneSearchDocIdSetIterator *iterator, IOSClass *clazz) {
  OrgApacheLuceneUtilBitSetIterator_initialize();
  if ([iterator isKindOfClass:[OrgApacheLuceneUtilBitSetIterator class]]) {
    OrgApacheLuceneUtilBitSet *bits = JreRetainedLocalValue(((OrgApacheLuceneUtilBitSetIterator *) nil_chk(((OrgApacheLuceneUtilBitSetIterator *) iterator)))->bits_);
    JreAssert(bits != nil, @"org/apache/lucene/util/BitSetIterator.java:32 condition failed: assert bits != null;");
    if ([((IOSClass *) nil_chk(clazz)) isInstance:bits]) {
      return [clazz cast:bits];
    }
  }
  return nil;
}

OrgApacheLuceneUtilFixedBitSet *OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  OrgApacheLuceneUtilBitSetIterator_initialize();
  return ((OrgApacheLuceneUtilFixedBitSet *) OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(iterator, OrgApacheLuceneUtilFixedBitSet_class_()));
}

OrgApacheLuceneUtilSparseFixedBitSet *OrgApacheLuceneUtilBitSetIterator_getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  OrgApacheLuceneUtilBitSetIterator_initialize();
  return ((OrgApacheLuceneUtilSparseFixedBitSet *) OrgApacheLuceneUtilBitSetIterator_getBitSetWithOrgApacheLuceneSearchDocIdSetIterator_withIOSClass_(iterator, OrgApacheLuceneUtilSparseFixedBitSet_class_()));
}

void OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(OrgApacheLuceneUtilBitSetIterator *self, OrgApacheLuceneUtilBitSet *bits, jlong cost) {
  OrgApacheLuceneSearchDocIdSetIterator_init(self);
  self->doc_ = -1;
  JreStrongAssign(&self->bits_, bits);
  self->length_ = [((OrgApacheLuceneUtilBitSet *) nil_chk(bits)) length];
  self->cost_ = cost;
}

OrgApacheLuceneUtilBitSetIterator *new_OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(OrgApacheLuceneUtilBitSet *bits, jlong cost) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBitSetIterator, initWithOrgApacheLuceneUtilBitSet_withLong_, bits, cost)
}

OrgApacheLuceneUtilBitSetIterator *create_OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(OrgApacheLuceneUtilBitSet *bits, jlong cost) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBitSetIterator, initWithOrgApacheLuceneUtilBitSet_withLong_, bits, cost)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBitSetIterator)
