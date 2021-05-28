//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked11.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked11.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/packed/BulkOperationPacked11 must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked11

- (instancetype)initPackagePrivate {
  OrgApacheLuceneUtilPackedBulkOperationPacked11_initPackagePrivate(self);
  return self;
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (JreURShift64(block0, 53));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 42)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 31)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 20)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 9)) & 2047LL);
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block0 & 511LL), 2)) | (JreURShift64(block1, 62)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 51)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 40)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 29)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 18)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 7)) & 2047LL);
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block1 & 127LL), 4)) | (JreURShift64(block2, 60)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 49)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 38)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 27)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 16)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 5)) & 2047LL);
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block2 & 31LL), 6)) | (JreURShift64(block3, 58)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 47)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 36)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 25)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 14)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 3)) & 2047LL);
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block3 & 7LL), 8)) | (JreURShift64(block4, 56)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 45)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 34)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 23)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 12)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 1)) & 2047LL);
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block4 & 1LL), 10)) | (JreURShift64(block5, 54)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 43)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 32)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 21)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 10)) & 2047LL);
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block5 & 1023LL), 1)) | (JreURShift64(block6, 63)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 52)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 41)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 30)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 19)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 8)) & 2047LL);
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block6 & 255LL), 3)) | (JreURShift64(block7, 61)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 50)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 39)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 28)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 17)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 6)) & 2047LL);
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block7 & 63LL), 5)) | (JreURShift64(block8, 59)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 48)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 37)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 26)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 15)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 4)) & 2047LL);
    jlong block9 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block8 & 15LL), 7)) | (JreURShift64(block9, 57)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 46)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 35)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 24)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 13)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 2)) & 2047LL);
    jlong block10 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block9 & 3LL), 9)) | (JreURShift64(block10, 55)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 44)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 33)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 22)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 11)) & 2047LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block10 & 2047LL);
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jint byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    jint byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift32(byte0, 3)) | (JreURShift32(byte1, 5));
    jint byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte1 & 31), 6)) | (JreURShift32(byte2, 2));
    jint byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte2 & 3), 9)) | (JreLShift32(byte3, 1)) | (JreURShift32(byte4, 7));
    jint byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte4 & 127), 4)) | (JreURShift32(byte5, 4));
    jint byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte5 & 15), 7)) | (JreURShift32(byte6, 1));
    jint byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte6 & 1), 10)) | (JreLShift32(byte7, 2)) | (JreURShift32(byte8, 6));
    jint byte9 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte8 & 63), 5)) | (JreURShift32(byte9, 3));
    jint byte10 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte9 & 7), 8)) | byte10;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(block0, 53);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 42)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 31)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 20)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 9)) & 2047LL;
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block0 & 511LL), 2)) | (JreURShift64(block1, 62));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 51)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 40)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 29)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 18)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 7)) & 2047LL;
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block1 & 127LL), 4)) | (JreURShift64(block2, 60));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 49)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 38)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 27)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 16)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 5)) & 2047LL;
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block2 & 31LL), 6)) | (JreURShift64(block3, 58));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 47)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 36)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 25)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 14)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 3)) & 2047LL;
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block3 & 7LL), 8)) | (JreURShift64(block4, 56));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 45)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 34)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 23)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 12)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 1)) & 2047LL;
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block4 & 1LL), 10)) | (JreURShift64(block5, 54));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 43)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 32)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 21)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 10)) & 2047LL;
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block5 & 1023LL), 1)) | (JreURShift64(block6, 63));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 52)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 41)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 30)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 19)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 8)) & 2047LL;
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block6 & 255LL), 3)) | (JreURShift64(block7, 61));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 50)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 39)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 28)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 17)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 6)) & 2047LL;
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block7 & 63LL), 5)) | (JreURShift64(block8, 59));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 48)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 37)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 26)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 15)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 4)) & 2047LL;
    jlong block9 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block8 & 15LL), 7)) | (JreURShift64(block9, 57));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 46)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 35)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 24)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 13)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 2)) & 2047LL;
    jlong block10 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block9 & 3LL), 9)) | (JreURShift64(block10, 55));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 44)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 33)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 22)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 11)) & 2047LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = block10 & 2047LL;
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    jlong byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift64(byte0, 3)) | (JreURShift64(byte1, 5));
    jlong byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte1 & 31), 6)) | (JreURShift64(byte2, 2));
    jlong byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte2 & 3), 9)) | (JreLShift64(byte3, 1)) | (JreURShift64(byte4, 7));
    jlong byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte4 & 127), 4)) | (JreURShift64(byte5, 4));
    jlong byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte5 & 15), 7)) | (JreURShift64(byte6, 1));
    jlong byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte6 & 1), 10)) | (JreLShift64(byte7, 2)) | (JreURShift64(byte8, 6));
    jlong byte9 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte8 & 63), 5)) | (JreURShift64(byte9, 3));
    jlong byte10 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte9 & 7), 8)) | byte10;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(decodeWithLongArray:withInt:withIntArray:withInt:withInt:);
  methods[2].selector = @selector(decodeWithByteArray:withInt:withIntArray:withInt:withInt:);
  methods[3].selector = @selector(decodeWithLongArray:withInt:withLongArray:withInt:withInt:);
  methods[4].selector = @selector(decodeWithByteArray:withInt:withLongArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "decode", "[JI[III", "[BI[III", "[JI[JII", "[BI[JII" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked11 = { "BulkOperationPacked11", "org.apache.lucene.util.packed", ptrTable, methods, NULL, 7, 0x10, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked11;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked11_initPackagePrivate(OrgApacheLuceneUtilPackedBulkOperationPacked11 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initPackagePrivateWithInt_(self, 11);
}

OrgApacheLuceneUtilPackedBulkOperationPacked11 *new_OrgApacheLuceneUtilPackedBulkOperationPacked11_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked11, initPackagePrivate)
}

OrgApacheLuceneUtilPackedBulkOperationPacked11 *create_OrgApacheLuceneUtilPackedBulkOperationPacked11_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked11, initPackagePrivate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked11)
