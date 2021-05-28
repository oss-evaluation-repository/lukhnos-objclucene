//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/PrintStreamInfoStream.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPrintStreamInfoStream")
#ifdef RESTRICT_OrgApacheLuceneUtilPrintStreamInfoStream
#define INCLUDE_ALL_OrgApacheLuceneUtilPrintStreamInfoStream 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPrintStreamInfoStream 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPrintStreamInfoStream

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilPrintStreamInfoStream_) && (INCLUDE_ALL_OrgApacheLuceneUtilPrintStreamInfoStream || defined(INCLUDE_OrgApacheLuceneUtilPrintStreamInfoStream))
#define OrgApacheLuceneUtilPrintStreamInfoStream_

#define RESTRICT_OrgApacheLuceneUtilInfoStream 1
#define INCLUDE_OrgApacheLuceneUtilInfoStream 1
#include "org/apache/lucene/util/InfoStream.h"

@class JavaIoPrintStream;

/*!
 @brief InfoStream implementation over a <code>PrintStream</code>
  such as <code>System.out</code>.
 */
@interface OrgApacheLuceneUtilPrintStreamInfoStream : OrgApacheLuceneUtilInfoStream {
 @public
  jint messageID_;
  JavaIoPrintStream *stream_;
}

#pragma mark Public

- (instancetype __nonnull)initWithJavaIoPrintStream:(JavaIoPrintStream *)stream;

- (instancetype __nonnull)initWithJavaIoPrintStream:(JavaIoPrintStream *)stream
                                            withInt:(jint)messageID;

- (void)close;

- (jboolean)isEnabledWithNSString:(NSString *)component;

- (jboolean)isSystemStream;

- (void)messageWithNSString:(NSString *)component
               withNSString:(NSString *)message;

#pragma mark Protected

/*!
 @brief Returns the current time as string for insertion into log messages.
 */
- (NSString *)getTimestamp;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilPrintStreamInfoStream)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPrintStreamInfoStream, stream_, JavaIoPrintStream *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_(OrgApacheLuceneUtilPrintStreamInfoStream *self, JavaIoPrintStream *stream);

FOUNDATION_EXPORT OrgApacheLuceneUtilPrintStreamInfoStream *new_OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_(JavaIoPrintStream *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPrintStreamInfoStream *create_OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_(JavaIoPrintStream *stream);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_withInt_(OrgApacheLuceneUtilPrintStreamInfoStream *self, JavaIoPrintStream *stream, jint messageID);

FOUNDATION_EXPORT OrgApacheLuceneUtilPrintStreamInfoStream *new_OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_withInt_(JavaIoPrintStream *stream, jint messageID) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPrintStreamInfoStream *create_OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_withInt_(JavaIoPrintStream *stream, jint messageID);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPrintStreamInfoStream)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPrintStreamInfoStream")
