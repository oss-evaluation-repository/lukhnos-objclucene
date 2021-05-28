//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/PackedReaderIterator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/EOFException.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/LongsRef.h"
#include "org/apache/lucene/util/packed/BulkOperation.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PackedReaderIterator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/PackedReaderIterator must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilPackedPackedReaderIterator ()

- (jint)iterationsWithInt:(jint)mem;

@end

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedPackedReaderIterator_iterationsWithInt_(OrgApacheLuceneUtilPackedPackedReaderIterator *self, jint mem);

@implementation OrgApacheLuceneUtilPackedPackedReaderIterator

- (instancetype)initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format:(OrgApacheLuceneUtilPackedPackedInts_Format *)format
                                                                         withInt:(jint)packedIntsVersion
                                                                         withInt:(jint)valueCount
                                                                         withInt:(jint)bitsPerValue
                                               withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                                                         withInt:(jint)mem {
  OrgApacheLuceneUtilPackedPackedReaderIterator_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(self, format, packedIntsVersion, valueCount, bitsPerValue, inArg, mem);
  return self;
}

- (jint)iterationsWithInt:(jint)mem {
  return OrgApacheLuceneUtilPackedPackedReaderIterator_iterationsWithInt_(self, mem);
}

- (OrgApacheLuceneUtilLongsRef *)nextWithInt:(jint)count {
  JreAssert(((OrgApacheLuceneUtilLongsRef *) nil_chk(nextValues_))->length_ >= 0, @"org/apache/lucene/util/packed/PackedReaderIterator.java:61 condition failed: assert nextValues.length >= 0;");
  JreAssert(count > 0, @"org/apache/lucene/util/packed/PackedReaderIterator.java:62 condition failed: assert count > 0;");
  JreAssert(nextValues_->offset_ + nextValues_->length_ <= ((IOSLongArray *) nil_chk(nextValues_->longs_))->size_, @"org/apache/lucene/util/packed/PackedReaderIterator.java:63 condition failed: assert nextValues.offset + nextValues.length <= nextValues.longs.length;");
  nextValues_->offset_ += nextValues_->length_;
  jint remaining = valueCount_ - position_ - 1;
  if (remaining <= 0) {
    @throw create_JavaIoEOFException_init();
  }
  count = JavaLangMath_minWithInt_withInt_(remaining, count);
  if (nextValues_->offset_ == ((IOSLongArray *) nil_chk(nextValues_->longs_))->size_) {
    jlong remainingBlocks = [((OrgApacheLuceneUtilPackedPackedInts_Format *) nil_chk(format_)) byteCountWithInt:packedIntsVersion_ withInt:remaining withInt:bitsPerValue_];
    jint blocksToRead = (jint) JavaLangMath_minWithLong_withLong_(remainingBlocks, ((IOSByteArray *) nil_chk(nextBlocks_))->size_);
    [((OrgApacheLuceneStoreDataInput *) nil_chk(in_)) readBytesWithByteArray:nextBlocks_ withInt:0 withInt:blocksToRead];
    if (blocksToRead < nextBlocks_->size_) {
      JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(nextBlocks_, blocksToRead, nextBlocks_->size_, (jbyte) 0);
    }
    [((OrgApacheLuceneUtilPackedBulkOperation *) nil_chk(bulkOperation_)) decodeWithByteArray:nextBlocks_ withInt:0 withLongArray:nextValues_->longs_ withInt:0 withInt:iterations_];
    nextValues_->offset_ = 0;
  }
  nextValues_->length_ = JavaLangMath_minWithInt_withInt_(((IOSLongArray *) nil_chk(nextValues_->longs_))->size_ - nextValues_->offset_, count);
  position_ += nextValues_->length_;
  return nextValues_;
}

- (jint)ord {
  return position_;
}

- (void)dealloc {
  RELEASE_(format_);
  RELEASE_(bulkOperation_);
  RELEASE_(nextBlocks_);
  RELEASE_(nextValues_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilLongsRef;", 0x1, 3, 2, 4, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format:withInt:withInt:withInt:withOrgApacheLuceneStoreDataInput:withInt:);
  methods[1].selector = @selector(iterationsWithInt:);
  methods[2].selector = @selector(nextWithInt:);
  methods[3].selector = @selector(ord);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "packedIntsVersion_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "format_", "LOrgApacheLuceneUtilPackedPackedInts_Format;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "bulkOperation_", "LOrgApacheLuceneUtilPackedBulkOperation;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "nextBlocks_", "[B", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "nextValues_", "LOrgApacheLuceneUtilLongsRef;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "iterations_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "position_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilPackedPackedInts_Format;IIILOrgApacheLuceneStoreDataInput;I", "iterations", "I", "next", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPackedReaderIterator = { "PackedReaderIterator", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x10, 4, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPackedReaderIterator;
}

@end

void OrgApacheLuceneUtilPackedPackedReaderIterator_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedPackedReaderIterator *self, OrgApacheLuceneUtilPackedPackedInts_Format *format, jint packedIntsVersion, jint valueCount, jint bitsPerValue, OrgApacheLuceneStoreDataInput *inArg, jint mem) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl_initWithInt_withInt_withOrgApacheLuceneStoreDataInput_(self, valueCount, bitsPerValue, inArg);
  JreStrongAssign(&self->format_, format);
  self->packedIntsVersion_ = packedIntsVersion;
  JreStrongAssign(&self->bulkOperation_, OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_(format, bitsPerValue));
  self->iterations_ = OrgApacheLuceneUtilPackedPackedReaderIterator_iterationsWithInt_(self, mem);
  JreAssert(valueCount == 0 || self->iterations_ > 0, @"org/apache/lucene/util/packed/PackedReaderIterator.java:43 condition failed: assert valueCount == 0 || iterations > 0;");
  JreStrongAssignAndConsume(&self->nextBlocks_, [IOSByteArray newArrayWithLength:self->iterations_ * [((OrgApacheLuceneUtilPackedBulkOperation *) nil_chk(self->bulkOperation_)) byteBlockCount]]);
  JreStrongAssignAndConsume(&self->nextValues_, new_OrgApacheLuceneUtilLongsRef_initWithLongArray_withInt_withInt_([IOSLongArray arrayWithLength:self->iterations_ * [self->bulkOperation_ byteValueCount]], 0, 0));
  self->nextValues_->offset_ = ((IOSLongArray *) nil_chk(self->nextValues_->longs_))->size_;
  self->position_ = -1;
}

OrgApacheLuceneUtilPackedPackedReaderIterator *new_OrgApacheLuceneUtilPackedPackedReaderIterator_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedPackedInts_Format *format, jint packedIntsVersion, jint valueCount, jint bitsPerValue, OrgApacheLuceneStoreDataInput *inArg, jint mem) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPackedReaderIterator, initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_, format, packedIntsVersion, valueCount, bitsPerValue, inArg, mem)
}

OrgApacheLuceneUtilPackedPackedReaderIterator *create_OrgApacheLuceneUtilPackedPackedReaderIterator_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedPackedInts_Format *format, jint packedIntsVersion, jint valueCount, jint bitsPerValue, OrgApacheLuceneStoreDataInput *inArg, jint mem) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPackedReaderIterator, initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_, format, packedIntsVersion, valueCount, bitsPerValue, inArg, mem)
}

jint OrgApacheLuceneUtilPackedPackedReaderIterator_iterationsWithInt_(OrgApacheLuceneUtilPackedPackedReaderIterator *self, jint mem) {
  jint iterations = [((OrgApacheLuceneUtilPackedBulkOperation *) nil_chk(self->bulkOperation_)) computeIterationsWithInt:self->valueCount_ withInt:mem];
  if (self->packedIntsVersion_ < OrgApacheLuceneUtilPackedPackedInts_VERSION_BYTE_ALIGNED) {
    iterations = (iterations + 7) & (jint) 0xFFFFFFF8;
  }
  return iterations;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPackedReaderIterator)
