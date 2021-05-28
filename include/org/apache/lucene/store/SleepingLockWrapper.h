//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/SleepingLockWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper")
#ifdef RESTRICT_OrgApacheLuceneStoreSleepingLockWrapper
#define INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreSleepingLockWrapper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneStoreSleepingLockWrapper_) && (INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper || defined(INCLUDE_OrgApacheLuceneStoreSleepingLockWrapper))
#define OrgApacheLuceneStoreSleepingLockWrapper_

#define RESTRICT_OrgApacheLuceneStoreFilterDirectory 1
#define INCLUDE_OrgApacheLuceneStoreFilterDirectory 1
#include "org/apache/lucene/store/FilterDirectory.h"

@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreLock;

/*!
 @brief Directory that wraps another, and that sleeps and retries
  if obtaining the lock fails.
 <p>
  This is not a good idea.
 */
@interface OrgApacheLuceneStoreSleepingLockWrapper : OrgApacheLuceneStoreFilterDirectory
@property (readonly, class) jlong LOCK_OBTAIN_WAIT_FOREVER NS_SWIFT_NAME(LOCK_OBTAIN_WAIT_FOREVER);
@property (class) jlong DEFAULT_POLL_INTERVAL NS_SWIFT_NAME(DEFAULT_POLL_INTERVAL);

#pragma mark Public

/*!
 @brief Create a new SleepingLockFactory
 @param delegate underlying directory to wrap
 @param lockWaitTimeout length of time to wait in milliseconds                          or 
 <code>LOCK_OBTAIN_WAIT_FOREVER</code>  to retry forever.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)delegate
                                                       withLong:(jlong)lockWaitTimeout;

/*!
 @brief Create a new SleepingLockFactory
 @param delegate underlying directory to wrap
 @param lockWaitTimeout length of time to wait in milliseconds                          or 
 <code>LOCK_OBTAIN_WAIT_FOREVER</code>  to retry forever.
 @param pollInterval poll once per this interval in milliseconds until                         
 <code>lockWaitTimeout</code>  is exceeded.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)delegate
                                                       withLong:(jlong)lockWaitTimeout
                                                       withLong:(jlong)pollInterval;

- (OrgApacheLuceneStoreLock *)obtainLockWithNSString:(NSString *)lockName;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSleepingLockWrapper)

/*!
 @brief Pass this lockWaitTimeout to try forever to obtain the lock.
 */
inline jlong OrgApacheLuceneStoreSleepingLockWrapper_get_LOCK_OBTAIN_WAIT_FOREVER(void);
#define OrgApacheLuceneStoreSleepingLockWrapper_LOCK_OBTAIN_WAIT_FOREVER -1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneStoreSleepingLockWrapper, LOCK_OBTAIN_WAIT_FOREVER, jlong)

/*!
 @brief How long <code>obtainLock</code> waits, in milliseconds,
  in between attempts to acquire the lock.
 */
inline jlong OrgApacheLuceneStoreSleepingLockWrapper_get_DEFAULT_POLL_INTERVAL(void);
inline jlong OrgApacheLuceneStoreSleepingLockWrapper_set_DEFAULT_POLL_INTERVAL(jlong value);
inline jlong *OrgApacheLuceneStoreSleepingLockWrapper_getRef_DEFAULT_POLL_INTERVAL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneStoreSleepingLockWrapper_DEFAULT_POLL_INTERVAL;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneStoreSleepingLockWrapper, DEFAULT_POLL_INTERVAL, jlong)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreSleepingLockWrapper *self, OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout);

FOUNDATION_EXPORT OrgApacheLuceneStoreSleepingLockWrapper *new_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSleepingLockWrapper *create_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout);

FOUNDATION_EXPORT void OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreSleepingLockWrapper *self, OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval);

FOUNDATION_EXPORT OrgApacheLuceneStoreSleepingLockWrapper *new_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSleepingLockWrapper *create_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSleepingLockWrapper)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper")
