//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/DirectPackedReader.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/packed/DirectPackedReader.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/DirectPackedReader must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilPackedDirectPackedReader

- (instancetype)initPackagePrivateWithInt:(jint)bitsPerValue
                                  withInt:(jint)valueCount
       withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg {
  OrgApacheLuceneUtilPackedDirectPackedReader_initPackagePrivateWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(self, bitsPerValue, valueCount, inArg);
  return self;
}

- (jlong)getWithInt:(jint)index {
  jlong majorBitPos = (jlong) index * bitsPerValue_;
  jlong elementPos = JreURShift64(majorBitPos, 3);
  @try {
    [((OrgApacheLuceneStoreIndexInput *) nil_chk(in_)) seekWithLong:startPointer_ + elementPos];
    jint bitPos = (jint) (majorBitPos & 7);
    jint roundedBits = ((bitPos + bitsPerValue_ + 7) & ~7);
    jint shiftRightBits = roundedBits - bitPos - bitsPerValue_;
    jlong rawValue;
    switch (JreURShift32(roundedBits, 3)) {
      case 1:
      rawValue = [in_ readByte];
      break;
      case 2:
      rawValue = [in_ readShort];
      break;
      case 3:
      rawValue = (JreLShift64((jlong) [in_ readShort], 8)) | ([in_ readByte] & (jlong) 0xFFLL);
      break;
      case 4:
      rawValue = [in_ readInt];
      break;
      case 5:
      rawValue = (JreLShift64((jlong) [in_ readInt], 8)) | ([in_ readByte] & (jlong) 0xFFLL);
      break;
      case 6:
      rawValue = (JreLShift64((jlong) [in_ readInt], 16)) | ([in_ readShort] & (jlong) 0xFFFFLL);
      break;
      case 7:
      rawValue = (JreLShift64((jlong) [in_ readInt], 24)) | (JreLShift64(([in_ readShort] & (jlong) 0xFFFFLL), 8)) | ([in_ readByte] & (jlong) 0xFFLL);
      break;
      case 8:
      rawValue = [in_ readLong];
      break;
      case 9:
      rawValue = (JreLShift64([in_ readLong], (8 - shiftRightBits))) | (JreURShift64(([in_ readByte] & (jlong) 0xFFLL), shiftRightBits));
      shiftRightBits = 0;
      break;
      default:
      @throw create_JavaLangAssertionError_initWithId_(JreStrcat("$I", @"bitsPerValue too large: ", bitsPerValue_));
    }
    return (JreURShift64(rawValue, shiftRightBits)) & valueMask_;
  }
  @catch (JavaIoIOException *ioe) {
    @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe);
  }
}

- (jlong)ramBytesUsed {
  return 0;
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithInt:withInt:withOrgApacheLuceneStoreIndexInput:);
  methods[1].selector = @selector(getWithInt:);
  methods[2].selector = @selector(ramBytesUsed);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LOrgApacheLuceneStoreIndexInput;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "bitsPerValue_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "startPointer_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "valueMask_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "IILOrgApacheLuceneStoreIndexInput;", "get", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectPackedReader = { "DirectPackedReader", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x0, 3, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedDirectPackedReader;
}

@end

void OrgApacheLuceneUtilPackedDirectPackedReader_initPackagePrivateWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneUtilPackedDirectPackedReader *self, jint bitsPerValue, jint valueCount, OrgApacheLuceneStoreIndexInput *inArg) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_(self, valueCount);
  JreStrongAssign(&self->in_, inArg);
  self->bitsPerValue_ = bitsPerValue;
  self->startPointer_ = [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) getFilePointer];
  if (bitsPerValue == 64) {
    self->valueMask_ = -1LL;
  }
  else {
    self->valueMask_ = (JreLShift64(1LL, bitsPerValue)) - 1;
  }
}

OrgApacheLuceneUtilPackedDirectPackedReader *new_OrgApacheLuceneUtilPackedDirectPackedReader_initPackagePrivateWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(jint bitsPerValue, jint valueCount, OrgApacheLuceneStoreIndexInput *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirectPackedReader, initPackagePrivateWithInt_withInt_withOrgApacheLuceneStoreIndexInput_, bitsPerValue, valueCount, inArg)
}

OrgApacheLuceneUtilPackedDirectPackedReader *create_OrgApacheLuceneUtilPackedDirectPackedReader_initPackagePrivateWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(jint bitsPerValue, jint valueCount, OrgApacheLuceneStoreIndexInput *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirectPackedReader, initPackagePrivateWithInt_withInt_withOrgApacheLuceneStoreIndexInput_, bitsPerValue, valueCount, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectPackedReader)
