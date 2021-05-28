//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/NamedThreadFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilNamedThreadFactory")
#ifdef RESTRICT_OrgApacheLuceneUtilNamedThreadFactory
#define INCLUDE_ALL_OrgApacheLuceneUtilNamedThreadFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilNamedThreadFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilNamedThreadFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilNamedThreadFactory_) && (INCLUDE_ALL_OrgApacheLuceneUtilNamedThreadFactory || defined(INCLUDE_OrgApacheLuceneUtilNamedThreadFactory))
#define OrgApacheLuceneUtilNamedThreadFactory_

#define RESTRICT_JavaUtilConcurrentThreadFactory 1
#define INCLUDE_JavaUtilConcurrentThreadFactory 1
#include "java/util/concurrent/ThreadFactory.h"

@class JavaLangThread;
@protocol JavaLangRunnable;

/*!
 @brief A default <code>ThreadFactory</code> implementation that accepts the name prefix
  of the created threads as a constructor argument.Otherwise, this factory
  yields the same semantics as the thread factory returned by 
 <code>Executors.defaultThreadFactory()</code>.
 */
@interface OrgApacheLuceneUtilNamedThreadFactory : NSObject < JavaUtilConcurrentThreadFactory >

#pragma mark Public

/*!
 @brief Creates a new <code>NamedThreadFactory</code> instance
 @param threadNamePrefix the name prefix assigned to each thread created.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)threadNamePrefix;

/*!
 @brief Creates a new <code>Thread</code>
 - seealso: java.util.concurrent.ThreadFactory#newThread(java.lang.Runnable)
 */
- (JavaLangThread *)newThreadWithJavaLangRunnable:(id<JavaLangRunnable>)r OBJC_METHOD_FAMILY_NONE;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilNamedThreadFactory)

FOUNDATION_EXPORT void OrgApacheLuceneUtilNamedThreadFactory_initWithNSString_(OrgApacheLuceneUtilNamedThreadFactory *self, NSString *threadNamePrefix);

FOUNDATION_EXPORT OrgApacheLuceneUtilNamedThreadFactory *new_OrgApacheLuceneUtilNamedThreadFactory_initWithNSString_(NSString *threadNamePrefix) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilNamedThreadFactory *create_OrgApacheLuceneUtilNamedThreadFactory_initWithNSString_(NSString *threadNamePrefix);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilNamedThreadFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilNamedThreadFactory")
