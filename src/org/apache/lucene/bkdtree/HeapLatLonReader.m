//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/HeapLatLonReader.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/bkdtree/HeapLatLonReader.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/bkdtree/HeapLatLonReader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneBkdtreeHeapLatLonReader () {
 @public
  jint curRead_;
}

@end

@implementation OrgApacheLuceneBkdtreeHeapLatLonReader

- (instancetype)initPackagePrivateWithIntArray:(IOSIntArray *)latEncs
                                  withIntArray:(IOSIntArray *)lonEncs
                                 withLongArray:(IOSLongArray *)ords
                                  withIntArray:(IOSIntArray *)docIDs
                                       withInt:(jint)start
                                       withInt:(jint)end {
  OrgApacheLuceneBkdtreeHeapLatLonReader_initPackagePrivateWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_(self, latEncs, lonEncs, ords, docIDs, start, end);
  return self;
}

- (jboolean)next {
  curRead_++;
  return curRead_ < end_;
}

- (jint)latEnc {
  return IOSIntArray_Get(nil_chk(latEncs_), curRead_);
}

- (jint)lonEnc {
  return IOSIntArray_Get(nil_chk(lonEncs_), curRead_);
}

- (jint)docID {
  return IOSIntArray_Get(nil_chk(docIDs_), curRead_);
}

- (jlong)ord {
  return IOSLongArray_Get(nil_chk(ords_), curRead_);
}

- (void)close {
}

- (void)dealloc {
  RELEASE_(latEncs_);
  RELEASE_(lonEncs_);
  RELEASE_(ords_);
  RELEASE_(docIDs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithIntArray:withIntArray:withLongArray:withIntArray:withInt:withInt:);
  methods[1].selector = @selector(next);
  methods[2].selector = @selector(latEnc);
  methods[3].selector = @selector(lonEnc);
  methods[4].selector = @selector(docID);
  methods[5].selector = @selector(ord);
  methods[6].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "curRead_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "latEncs_", "[I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "lonEncs_", "[I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "ords_", "[J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docIDs_", "[I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "end_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[I[I[J[III" };
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeHeapLatLonReader = { "HeapLatLonReader", "org.apache.lucene.bkdtree", ptrTable, methods, fields, 7, 0x10, 7, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneBkdtreeHeapLatLonReader;
}

@end

void OrgApacheLuceneBkdtreeHeapLatLonReader_initPackagePrivateWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_(OrgApacheLuceneBkdtreeHeapLatLonReader *self, IOSIntArray *latEncs, IOSIntArray *lonEncs, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end) {
  NSObject_init(self);
  JreStrongAssign(&self->latEncs_, latEncs);
  JreStrongAssign(&self->lonEncs_, lonEncs);
  JreStrongAssign(&self->ords_, ords);
  JreStrongAssign(&self->docIDs_, docIDs);
  self->curRead_ = start - 1;
  self->end_ = end;
}

OrgApacheLuceneBkdtreeHeapLatLonReader *new_OrgApacheLuceneBkdtreeHeapLatLonReader_initPackagePrivateWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_(IOSIntArray *latEncs, IOSIntArray *lonEncs, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneBkdtreeHeapLatLonReader, initPackagePrivateWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_, latEncs, lonEncs, ords, docIDs, start, end)
}

OrgApacheLuceneBkdtreeHeapLatLonReader *create_OrgApacheLuceneBkdtreeHeapLatLonReader_initPackagePrivateWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_(IOSIntArray *latEncs, IOSIntArray *lonEncs, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneBkdtreeHeapLatLonReader, initPackagePrivateWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_, latEncs, lonEncs, ords, docIDs, start, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeHeapLatLonReader)
