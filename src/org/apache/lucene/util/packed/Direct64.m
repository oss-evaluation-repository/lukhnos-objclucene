//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/Direct64.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/Direct64.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/Direct64 must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilPackedDirect64

- (instancetype)initPackagePrivateWithInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_(self, valueCount);
  return self;
}

- (instancetype)initPackagePrivateWithInt:(jint)packedIntsVersion
        withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                  withInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_withOrgApacheLuceneStoreDataInput_withInt_(self, packedIntsVersion, inArg, valueCount);
  return self;
}

- (jlong)getWithInt:(jint)index {
  return IOSLongArray_Get(nil_chk(values_), index);
}

- (void)setWithInt:(jint)index
          withLong:(jlong)value {
  *IOSLongArray_GetRef(nil_chk(values_), index) = (value);
}

- (jlong)ramBytesUsed {
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER) + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(values_);
}

- (void)clear {
  JavaUtilArrays_fillWithLongArray_withLong_(values_, 0LL);
}

- (jint)getWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len {
  JreAssert(len > 0, JreStrcat("$IC", @"len must be > 0 (got ", len, ')'));
  JreAssert(index >= 0 && index < valueCount_, @"org/apache/lucene/util/packed/Direct64.java:74 condition failed: assert index >= 0 && index < valueCount;");
  JreAssert(off + len <= ((IOSLongArray *) nil_chk(arr))->size_, @"org/apache/lucene/util/packed/Direct64.java:75 condition failed: assert off + len <= arr.length;");
  jint gets = JavaLangMath_minWithInt_withInt_(valueCount_ - index, len);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(values_, index, arr, off, gets);
  return gets;
}

- (jint)setWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len {
  JreAssert(len > 0, JreStrcat("$IC", @"len must be > 0 (got ", len, ')'));
  JreAssert(index >= 0 && index < valueCount_, @"org/apache/lucene/util/packed/Direct64.java:85 condition failed: assert index >= 0 && index < valueCount;");
  JreAssert(off + len <= ((IOSLongArray *) nil_chk(arr))->size_, @"org/apache/lucene/util/packed/Direct64.java:86 condition failed: assert off + len <= arr.length;");
  jint sets = JavaLangMath_minWithInt_withInt_(valueCount_ - index, len);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(arr, off, values_, index, sets);
  return sets;
}

- (void)fillWithInt:(jint)fromIndex
            withInt:(jint)toIndex
           withLong:(jlong)val {
  JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(values_, fromIndex, toIndex, val);
}

- (void)dealloc {
  RELEASE_(values_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, 2, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithInt:);
  methods[1].selector = @selector(initPackagePrivateWithInt:withOrgApacheLuceneStoreDataInput:withInt:);
  methods[2].selector = @selector(getWithInt:);
  methods[3].selector = @selector(setWithInt:withLong:);
  methods[4].selector = @selector(ramBytesUsed);
  methods[5].selector = @selector(clear);
  methods[6].selector = @selector(getWithInt:withLongArray:withInt:withInt:);
  methods[7].selector = @selector(setWithInt:withLongArray:withInt:withInt:);
  methods[8].selector = @selector(fillWithInt:withInt:withLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "values_", "[J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "ILOrgApacheLuceneStoreDataInput;I", "LJavaIoIOException;", "get", "set", "IJ", "I[JII", "fill", "IIJ" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirect64 = { "Direct64", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x10, 9, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedDirect64;
}

@end

void OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_(OrgApacheLuceneUtilPackedDirect64 *self, jint valueCount) {
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(self, valueCount, 64);
  JreStrongAssignAndConsume(&self->values_, [IOSLongArray newArrayWithLength:valueCount]);
}

OrgApacheLuceneUtilPackedDirect64 *new_OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_(jint valueCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirect64, initPackagePrivateWithInt_, valueCount)
}

OrgApacheLuceneUtilPackedDirect64 *create_OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_(jint valueCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirect64, initPackagePrivateWithInt_, valueCount)
}

void OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedDirect64 *self, jint packedIntsVersion, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_(self, valueCount);
  for (jint i = 0; i < valueCount; ++i) {
    *IOSLongArray_GetRef(nil_chk(self->values_), i) = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readLong];
  }
}

OrgApacheLuceneUtilPackedDirect64 *new_OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_withOrgApacheLuceneStoreDataInput_withInt_(jint packedIntsVersion, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirect64, initPackagePrivateWithInt_withOrgApacheLuceneStoreDataInput_withInt_, packedIntsVersion, inArg, valueCount)
}

OrgApacheLuceneUtilPackedDirect64 *create_OrgApacheLuceneUtilPackedDirect64_initPackagePrivateWithInt_withOrgApacheLuceneStoreDataInput_withInt_(jint packedIntsVersion, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirect64, initPackagePrivateWithInt_withOrgApacheLuceneStoreDataInput_withInt_, packedIntsVersion, inArg, valueCount)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirect64)
