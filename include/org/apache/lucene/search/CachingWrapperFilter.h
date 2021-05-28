//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/CachingWrapperFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter")
#ifdef RESTRICT_OrgApacheLuceneSearchCachingWrapperFilter
#define INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchCachingWrapperFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchCachingWrapperFilter_) && (INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter || defined(INCLUDE_OrgApacheLuceneSearchCachingWrapperFilter))
#define OrgApacheLuceneSearchCachingWrapperFilter_

#define RESTRICT_OrgApacheLuceneSearchFilter 1
#define INCLUDE_OrgApacheLuceneSearchFilter 1
#include "org/apache/lucene/search/Filter.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneSearchFilterCachingPolicy;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Wraps another <code>Filter</code>'s result and caches it.The purpose is to allow
  filters to simply filter, and then wrap with this class
  to add caching.
 */
@interface OrgApacheLuceneSearchCachingWrapperFilter : OrgApacheLuceneSearchFilter < OrgApacheLuceneUtilAccountable > {
 @public
  jint hitCount_;
  jint missCount_;
}

#pragma mark Public

/*!
 @brief Same as <code>CachingWrapperFilter.CachingWrapperFilter(Filter, FilterCachingPolicy)</code>
   but enforces the use of the  
 <code>FilterCachingPolicy.CacheOnLargeSegments.DEFAULT</code> policy.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

/*!
 @brief Wraps another filter's result and caches it according to the provided policy.
 @param filter Filter to cache results of
 @param policy policy defining which filters should be cached on which segments
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                 withOrgApacheLuceneSearchFilterCachingPolicy:(id<OrgApacheLuceneSearchFilterCachingPolicy>)policy;

- (jboolean)isEqual:(id)o;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

/*!
 @brief Gets the contained filter.
 @return the contained filter.
 */
- (OrgApacheLuceneSearchFilter *)getFilter;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)java_clone;

- (jlong)ramBytesUsed;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

/*!
 @brief Default cache implementation: uses <code>RoaringDocIdSet</code>.
 */
- (OrgApacheLuceneSearchDocIdSet *)cacheImplWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator
                                                   withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

/*!
 @brief Provide the DocIdSet to be cached, using the DocIdSet provided
   by the wrapped Filter.
 <p>This implementation returns the given <code>DocIdSet</code>,
   if <code>DocIdSet.isCacheable</code> returns <code>true</code>, else it calls
   <code>cacheImpl(DocIdSetIterator, org.apache.lucene.index.LeafReader)</code>
   <p>Note: This method returns DocIdSet.EMPTY if the given docIdSet
   is <code>null</code> or if <code>DocIdSet.iterator()</code> return <code>null</code>. The empty
   instance is use as a placeholder in the cache instead of the <code>null</code> value.
 */
- (OrgApacheLuceneSearchDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                 withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchCachingWrapperFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter, id<OrgApacheLuceneSearchFilterCachingPolicy> policy);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(OrgApacheLuceneSearchFilter *filter, id<OrgApacheLuceneSearchFilterCachingPolicy> policy) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *create_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(OrgApacheLuceneSearchFilter *filter, id<OrgApacheLuceneSearchFilterCachingPolicy> policy);

FOUNDATION_EXPORT void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *create_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchCachingWrapperFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter")
