//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocumentsWriterStallControl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterStallControl")
#ifdef RESTRICT_OrgApacheLuceneIndexDocumentsWriterStallControl
#define INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterStallControl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterStallControl 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDocumentsWriterStallControl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexDocumentsWriterStallControl_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterStallControl || defined(INCLUDE_OrgApacheLuceneIndexDocumentsWriterStallControl))
#define OrgApacheLuceneIndexDocumentsWriterStallControl_

@class JavaLangThread;
@class OrgApacheLuceneIndexLiveIndexWriterConfig;

/*!
 @brief Controls the health status of a <code>DocumentsWriter</code> sessions.This class
  used to block incoming indexing threads if flushing significantly slower than
  indexing to ensure the <code>DocumentsWriter</code>s healthiness.
 If flushing is
  significantly slower than indexing the net memory used within an 
 <code>IndexWriter</code> session can increase very quickly and easily exceed the
  JVM's available memory. 
 <p>
  To prevent OOM Errors and ensure IndexWriter's stability this class blocks
  incoming threads from indexing once 2 x number of available 
 <code>ThreadState</code>s in <code>DocumentsWriterPerThreadPool</code> is exceeded.
  Once flushing catches up and the number of flushing DWPT is equal or lower
  than the number of active <code>ThreadState</code>s threads are released and can
  continue indexing.
 */
@interface OrgApacheLuceneIndexDocumentsWriterStallControl : NSObject {
 @public
  jlong stallStartNS_;
}

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig:(OrgApacheLuceneIndexLiveIndexWriterConfig *)iwc;

- (jboolean)anyStalledThreads;

- (jboolean)hasBlocked;

- (jboolean)isHealthy;

- (jboolean)isThreadQueuedWithJavaLangThread:(JavaLangThread *)t;

/*!
 @brief Update the stalled flag status.This method will set the stalled flag to 
 <code>true</code> iff the number of flushing 
 <code>DocumentsWriterPerThread</code> is greater than the number of active 
 <code>DocumentsWriterPerThread</code>.
 Otherwise it will reset the 
 <code>DocumentsWriterStallControl</code> to healthy and release all threads
  waiting on <code>waitIfStalled()</code>
 */
- (void)updateStalledWithBoolean:(jboolean)stalled;

/*!
 @brief Blocks if documents writing is currently in a stalled state.
 */
- (void)waitIfStalled;

- (jboolean)wasStalled;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterStallControl)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterStallControl_initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexDocumentsWriterStallControl *self, OrgApacheLuceneIndexLiveIndexWriterConfig *iwc);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterStallControl *new_OrgApacheLuceneIndexDocumentsWriterStallControl_initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexLiveIndexWriterConfig *iwc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterStallControl *create_OrgApacheLuceneIndexDocumentsWriterStallControl_initPackagePrivateWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexLiveIndexWriterConfig *iwc);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterStallControl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterStallControl")
