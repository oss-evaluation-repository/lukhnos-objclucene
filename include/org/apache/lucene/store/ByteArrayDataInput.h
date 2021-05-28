//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/ByteArrayDataInput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreByteArrayDataInput")
#ifdef RESTRICT_OrgApacheLuceneStoreByteArrayDataInput
#define INCLUDE_ALL_OrgApacheLuceneStoreByteArrayDataInput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreByteArrayDataInput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreByteArrayDataInput

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneStoreByteArrayDataInput_) && (INCLUDE_ALL_OrgApacheLuceneStoreByteArrayDataInput || defined(INCLUDE_OrgApacheLuceneStoreByteArrayDataInput))
#define OrgApacheLuceneStoreByteArrayDataInput_

#define RESTRICT_OrgApacheLuceneStoreDataInput 1
#define INCLUDE_OrgApacheLuceneStoreDataInput 1
#include "org/apache/lucene/store/DataInput.h"

@class IOSByteArray;

/*!
 @brief DataInput backed by a byte array.
 <b>WARNING:</b> This class omits all low-level checks.
 */
@interface OrgApacheLuceneStoreByteArrayDataInput : OrgApacheLuceneStoreDataInput

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)bytes;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)bytes
                                    withInt:(jint)offset
                                    withInt:(jint)len;

- (jboolean)eof;

- (jint)getPosition;

- (jint)length;

- (jbyte)readByte;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

- (jint)readInt;

- (jlong)readLong;

- (jshort)readShort;

- (jint)readVInt;

- (jlong)readVLong;

- (void)resetWithByteArray:(IOSByteArray *)bytes;

- (void)resetWithByteArray:(IOSByteArray *)bytes
                   withInt:(jint)offset
                   withInt:(jint)len;

- (void)rewind;

- (void)setPositionWithInt:(jint)pos;

- (void)skipBytesWithLong:(jlong)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreByteArrayDataInput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_(OrgApacheLuceneStoreByteArrayDataInput *self, IOSByteArray *bytes);

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataInput *new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_(IOSByteArray *bytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataInput *create_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(OrgApacheLuceneStoreByteArrayDataInput *self, IOSByteArray *bytes, jint offset, jint len);

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataInput *new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint len) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataInput *create_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint len);

FOUNDATION_EXPORT void OrgApacheLuceneStoreByteArrayDataInput_init(OrgApacheLuceneStoreByteArrayDataInput *self);

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataInput *new_OrgApacheLuceneStoreByteArrayDataInput_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreByteArrayDataInput *create_OrgApacheLuceneStoreByteArrayDataInput_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreByteArrayDataInput)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreByteArrayDataInput")
