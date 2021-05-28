//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockReleaseFailedException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException")
#ifdef RESTRICT_OrgApacheLuceneStoreLockReleaseFailedException
#define INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreLockReleaseFailedException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneStoreLockReleaseFailedException_) && (INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException || defined(INCLUDE_OrgApacheLuceneStoreLockReleaseFailedException))
#define OrgApacheLuceneStoreLockReleaseFailedException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@class JavaLangThrowable;

/*!
 @brief This exception is thrown when the <code>write.lock</code>
  could not be released.
 - seealso: Lock#close()
 */
@interface OrgApacheLuceneStoreLockReleaseFailedException : JavaIoIOException

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)message;

- (instancetype __nonnull)initWithNSString:(NSString *)message
                     withJavaLangThrowable:(JavaLangThrowable *)cause;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLockReleaseFailedException)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(OrgApacheLuceneStoreLockReleaseFailedException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneStoreLockReleaseFailedException *new_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreLockReleaseFailedException *create_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(NSString *message);

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(OrgApacheLuceneStoreLockReleaseFailedException *self, NSString *message, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheLuceneStoreLockReleaseFailedException *new_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreLockReleaseFailedException *create_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLockReleaseFailedException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockReleaseFailedException")
