//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/RefCount.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilRefCount")
#ifdef RESTRICT_OrgApacheLuceneUtilRefCount
#define INCLUDE_ALL_OrgApacheLuceneUtilRefCount 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilRefCount 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilRefCount

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilRefCount_) && (INCLUDE_ALL_OrgApacheLuceneUtilRefCount || defined(INCLUDE_OrgApacheLuceneUtilRefCount))
#define OrgApacheLuceneUtilRefCount_

/*!
 @brief Manages reference counting for a given object.Extensions can override 
 <code>release()</code> to do custom logic when reference counting hits 0.
 */
@interface OrgApacheLuceneUtilRefCount : NSObject {
 @public
  id object_;
}

#pragma mark Public

- (instancetype __nonnull)initWithId:(id)object;

/*!
 @brief Decrements the reference counting of this object.When reference counting
  hits 0, calls <code>release()</code>.
 */
- (void)decRef;

- (id)get;

/*!
 @brief Returns the current reference count.
 */
- (jint)getRefCount;

/*!
 @brief Increments the reference count.Calls to this method must be matched with
  calls to <code>decRef()</code>.
 */
- (void)incRef;

#pragma mark Protected

/*!
 @brief Called when reference counting hits 0.By default this method does nothing,
  but extensions can override to e.g. release resources attached to object
  that is managed by this class.
 */
- (void)release__;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilRefCount)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilRefCount, object_, id)

FOUNDATION_EXPORT void OrgApacheLuceneUtilRefCount_initWithId_(OrgApacheLuceneUtilRefCount *self, id object);

FOUNDATION_EXPORT OrgApacheLuceneUtilRefCount *new_OrgApacheLuceneUtilRefCount_initWithId_(id object) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilRefCount *create_OrgApacheLuceneUtilRefCount_initWithId_(id object);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRefCount)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilRefCount")
