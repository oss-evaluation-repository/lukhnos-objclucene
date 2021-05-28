//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/AbortingException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexAbortingException")
#ifdef RESTRICT_OrgApacheLuceneIndexAbortingException
#define INCLUDE_ALL_OrgApacheLuceneIndexAbortingException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexAbortingException 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexAbortingException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexAbortingException_) && (INCLUDE_ALL_OrgApacheLuceneIndexAbortingException || defined(INCLUDE_OrgApacheLuceneIndexAbortingException))
#define OrgApacheLuceneIndexAbortingException_

#define RESTRICT_JavaLangException 1
#define INCLUDE_JavaLangException 1
#include "java/lang/Exception.h"

@class JavaLangThrowable;

/*!
 @brief Thrown and caught internally in <code>IndexWriter</code> methods when an <code>IOException</code> would cause it to
   lose previously indexed documents.When this happens, the <code>IndexWriter</code> is forcefully 
   closed, using <code>IndexWriter.rollback</code>).
 */
@interface OrgApacheLuceneIndexAbortingException : JavaLangException

#pragma mark Public

+ (OrgApacheLuceneIndexAbortingException *)wrapWithJavaLangThrowable:(JavaLangThrowable *)t;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexAbortingException)

FOUNDATION_EXPORT OrgApacheLuceneIndexAbortingException *OrgApacheLuceneIndexAbortingException_wrapWithJavaLangThrowable_(JavaLangThrowable *t);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexAbortingException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexAbortingException")
