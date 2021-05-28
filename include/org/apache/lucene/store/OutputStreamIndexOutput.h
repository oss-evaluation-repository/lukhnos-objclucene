//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/OutputStreamIndexOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamIndexOutput")
#ifdef RESTRICT_OrgApacheLuceneStoreOutputStreamIndexOutput
#define INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamIndexOutput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamIndexOutput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreOutputStreamIndexOutput

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneStoreOutputStreamIndexOutput_) && (INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamIndexOutput || defined(INCLUDE_OrgApacheLuceneStoreOutputStreamIndexOutput))
#define OrgApacheLuceneStoreOutputStreamIndexOutput_

#define RESTRICT_OrgApacheLuceneStoreIndexOutput 1
#define INCLUDE_OrgApacheLuceneStoreIndexOutput 1
#include "org/apache/lucene/store/IndexOutput.h"

@class IOSByteArray;
@class JavaIoOutputStream;

/*!
 @brief Implementation class for buffered <code>IndexOutput</code> that writes to an <code>OutputStream</code>.
 */
@interface OrgApacheLuceneStoreOutputStreamIndexOutput : OrgApacheLuceneStoreIndexOutput

#pragma mark Public

/*!
 @brief Creates a new <code>OutputStreamIndexOutput</code> with the given buffer size.
 @param bufferSize the buffer size in bytes used to buffer writes internally.
 @throw IllegalArgumentExceptionif the given buffer size is less or equal to <tt>0</tt>
 */
- (instancetype __nonnull)initWithNSString:(NSString *)resourceDescription
                    withJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                   withInt:(jint)bufferSize;

- (void)close;

- (jlong)getChecksum;

- (jlong)getFilePointer;

- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreOutputStreamIndexOutput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreOutputStreamIndexOutput_initWithNSString_withJavaIoOutputStream_withInt_(OrgApacheLuceneStoreOutputStreamIndexOutput *self, NSString *resourceDescription, JavaIoOutputStream *outArg, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneStoreOutputStreamIndexOutput *new_OrgApacheLuceneStoreOutputStreamIndexOutput_initWithNSString_withJavaIoOutputStream_withInt_(NSString *resourceDescription, JavaIoOutputStream *outArg, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreOutputStreamIndexOutput *create_OrgApacheLuceneStoreOutputStreamIndexOutput_initWithNSString_withJavaIoOutputStream_withInt_(NSString *resourceDescription, JavaIoOutputStream *outArg, jint bufferSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreOutputStreamIndexOutput)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamIndexOutput")
