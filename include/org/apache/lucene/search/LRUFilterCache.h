//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/LRUFilterCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchLRUFilterCache")
#ifdef RESTRICT_OrgApacheLuceneSearchLRUFilterCache
#define INCLUDE_ALL_OrgApacheLuceneSearchLRUFilterCache 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchLRUFilterCache 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchLRUFilterCache

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchLRUFilterCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchLRUFilterCache || defined(INCLUDE_OrgApacheLuceneSearchLRUFilterCache))
#define OrgApacheLuceneSearchLRUFilterCache_

#define RESTRICT_OrgApacheLuceneSearchFilterCache 1
#define INCLUDE_OrgApacheLuceneSearchFilterCache 1
#include "org/apache/lucene/search/FilterCache.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchFilter;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol OrgApacheLuceneSearchFilterCachingPolicy;

/*!
 @brief A <code>FilterCache</code> that evicts filters using a LRU (least-recently-used)
  eviction policy in order to remain under a given maximum size and number of
  bytes used.
 This class is thread-safe.
  Note that filter eviction runs in linear time with the total number of
  segments that have cache entries so this cache works best with 
 <code>caching policies</code> that only cache on "large"
  segments, and it is advised to not share this cache across too many indices.
  Typical usage looks like this: 
 <pre class="prettyprint">
    final int maxNumberOfCachedFilters = 256;
    final long maxRamBytesUsed = 50 * 1024L * 1024L; // 50MB
    // these cache and policy instances can be shared across several filters and readers
    // it is fine to eg. store them into static variables
    final FilterCache filterCache = new LRUFilterCache(maxNumberOfCachedFilters, maxRamBytesUsed);
    final FilterCachingPolicy defaultCachingPolicy = new UsageTrackingFilterCachingPolicy();   
    // ...   
    // Then at search time
    Filter myFilter = ...;
    Filter myCacheFilter = filterCache.doCache(myFilter, defaultCachingPolicy);
    // myCacheFilter is now a wrapper around the original filter that will interact with the cache
    IndexSearcher searcher = ...;
    TopDocs topDocs = searcher.search(new ConstantScoreQuery(myCacheFilter), 10); 
 
@endcode
  This cache exposes some global statistics (<code>hit count</code>,
  <code>miss count</code>, <code>number of cache
  entries</code>
 , <code>total number of DocIdSets that have ever
  been cached</code>
 , <code>number of evicted entries</code>). In
  case you would like to have more fine-grained statistics, such as per-index
  or per-filter-class statistics, it is possible to override various callbacks: 
 <code>onHit</code>, <code>onMiss</code>,
  <code>onFilterCache</code>, <code>onFilterEviction</code>,
  <code>onDocIdSetCache</code>, <code>onDocIdSetEviction</code> and <code>onClear</code>.
  It is better to not perform heavy computations in these methods though since
  they are called synchronously and under a lock.
 - seealso: FilterCachingPolicy
 */
@interface OrgApacheLuceneSearchLRUFilterCache : NSObject < OrgApacheLuceneSearchFilterCache, OrgApacheLuceneUtilAccountable >
@property (readonly, class) jlong FILTER_DEFAULT_RAM_BYTES_USED NS_SWIFT_NAME(FILTER_DEFAULT_RAM_BYTES_USED);
@property (readonly, class) jlong HASHTABLE_RAM_BYTES_PER_ENTRY NS_SWIFT_NAME(HASHTABLE_RAM_BYTES_PER_ENTRY);
@property (readonly, class) jlong LINKED_HASHTABLE_RAM_BYTES_PER_ENTRY NS_SWIFT_NAME(LINKED_HASHTABLE_RAM_BYTES_PER_ENTRY);

#pragma mark Public

/*!
 @brief Create a new instance that will cache at most <code>maxSize</code> filters
  with at most <code>maxRamBytesUsed</code> bytes of memory.
 */
- (instancetype __nonnull)initWithInt:(jint)maxSize
                             withLong:(jlong)maxRamBytesUsed;

/*!
 @brief Clear the content of this cache.
 */
- (void)clear;

/*!
 @brief Remove all cache entries for the given core cache key.
 */
- (void)clearCoreCacheKeyWithId:(id)coreKey;

/*!
 @brief Remove all cache entries for the given filter.
 */
- (void)clearFilterWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

- (OrgApacheLuceneSearchFilter *)doCacheWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                           withOrgApacheLuceneSearchFilterCachingPolicy:(id<OrgApacheLuceneSearchFilterCachingPolicy>)policy;

/*!
 @brief Return the total number of cache entries that have been generated and put
  in the cache.It is highly desirable to have a <code>hit
  count</code>
  that is much higher than the <code>cache count</code>
  as the opposite would indicate that the filter cache makes efforts in order
  to cache filters but then they do not get reused.
 - seealso: #getCacheSize()
 - seealso: #getEvictionCount()
 */
- (jlong)getCacheCount;

/*!
 @brief Return the total number of <code>DocIdSet</code>s which are currently stored
  in the cache.
 - seealso: #getCacheCount()
 - seealso: #getEvictionCount()
 */
- (jlong)getCacheSize;

- (id<JavaUtilCollection>)getChildResources;

/*!
 @brief Return the number of cache entries that have been removed from the cache
  either in order to stay under the maximum configured size/ram usage, or
  because a segment has been closed.High numbers of evictions might mean
  that filters are not reused or that the <code>caching policy</code>
  caches too aggressively on NRT segments which get merged
  early.
 - seealso: #getCacheCount()
 - seealso: #getCacheSize()
 */
- (jlong)getEvictionCount;

/*!
 @brief Over the <code>total</code> number of times that a filter has
  been looked up, return how many times a cached <code>DocIdSet</code> has been
  found and returned.
 - seealso: #getTotalCount()
 - seealso: #getMissCount()
 */
- (jlong)getHitCount;

/*!
 @brief Over the <code>total</code> number of times that a filter has
  been looked up, return how many times this filter was not contained in the
  cache.
 - seealso: #getTotalCount()
 - seealso: #getHitCount()
 */
- (jlong)getMissCount;

/*!
 @brief Return the total number of times that a <code>Filter</code> has been looked up
  in this <code>FilterCache</code>.Note that this number is incremented once per
  segment so running a cached filter only once will increment this counter
  by the number of segments that are wrapped by the searcher.
 Note that by definition, <code>getTotalCount()</code> is the sum of 
 <code>getHitCount()</code> and <code>getMissCount()</code>.
 - seealso: #getHitCount()
 - seealso: #getMissCount()
 */
- (jlong)getTotalCount;

- (jlong)ramBytesUsed;

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

/*!
 @brief Expert: callback when the cache is completely cleared.
 */
- (void)onClear;

/*!
 @brief Expert: callback when a <code>DocIdSet</code> is added to this cache.
 Implementing this method is typically useful in order to compute more
  fine-grained statistics about the filter cache.
 - seealso: #onDocIdSetEviction
 */
- (void)onDocIdSetCacheWithId:(id)readerCoreKey
                     withLong:(jlong)ramBytesUsed;

/*!
 @brief Expert: callback when one or more <code>DocIdSet</code>s are removed from this
  cache.
 - seealso: #onDocIdSetCache
 */
- (void)onDocIdSetEvictionWithId:(id)readerCoreKey
                         withInt:(jint)numEntries
                        withLong:(jlong)sumRamBytesUsed;

/*!
 @brief Expert: callback when a filter is added to this cache.
 Implementing this method is typically useful in order to compute more
  fine-grained statistics about the filter cache.
 - seealso: #onFilterEviction
 */
- (void)onFilterCacheWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                            withLong:(jlong)ramBytesUsed;

/*!
 @brief Expert: callback when a filter is evicted from this cache.
 - seealso: #onFilterCache
 */
- (void)onFilterEvictionWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                               withLong:(jlong)ramBytesUsed;

/*!
 @brief Expert: callback when there is a cache hit on a given filter.
 Implementing this method is typically useful in order to compute more
  fine-grained statistics about the filter cache.
 - seealso: #onMiss
 */
- (void)onHitWithId:(id)readerCoreKey
withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

/*!
 @brief Expert: callback when there is a cache miss on a given filter.
 - seealso: #onHit
 */
- (void)onMissWithId:(id)readerCoreKey
withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

/*!
 @brief Return the number of bytes used by the given filter.The default
  implementation returns <code>Accountable.ramBytesUsed()</code> if the filter
  implements <code>Accountable</code> and <code>1024</code> otherwise.
 */
- (jlong)ramBytesUsedWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

#pragma mark Package-Private

- (void)assertConsistent;

- (id<JavaUtilList>)cachedFilters;

- (void)evictIfNecessary;

- (OrgApacheLuceneSearchDocIdSet *)getWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                            withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)putIfAbsentWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
         withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                 withOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)set;

/*!
 @brief Whether evictions are required.
 */
- (jboolean)requiresEviction;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchLRUFilterCache)

inline jlong OrgApacheLuceneSearchLRUFilterCache_get_FILTER_DEFAULT_RAM_BYTES_USED(void);
#define OrgApacheLuceneSearchLRUFilterCache_FILTER_DEFAULT_RAM_BYTES_USED 216LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchLRUFilterCache, FILTER_DEFAULT_RAM_BYTES_USED, jlong)

inline jlong OrgApacheLuceneSearchLRUFilterCache_get_HASHTABLE_RAM_BYTES_PER_ENTRY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneSearchLRUFilterCache_HASHTABLE_RAM_BYTES_PER_ENTRY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneSearchLRUFilterCache, HASHTABLE_RAM_BYTES_PER_ENTRY, jlong)

inline jlong OrgApacheLuceneSearchLRUFilterCache_get_LINKED_HASHTABLE_RAM_BYTES_PER_ENTRY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneSearchLRUFilterCache_LINKED_HASHTABLE_RAM_BYTES_PER_ENTRY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneSearchLRUFilterCache, LINKED_HASHTABLE_RAM_BYTES_PER_ENTRY, jlong)

FOUNDATION_EXPORT void OrgApacheLuceneSearchLRUFilterCache_initWithInt_withLong_(OrgApacheLuceneSearchLRUFilterCache *self, jint maxSize, jlong maxRamBytesUsed);

FOUNDATION_EXPORT OrgApacheLuceneSearchLRUFilterCache *new_OrgApacheLuceneSearchLRUFilterCache_initWithInt_withLong_(jint maxSize, jlong maxRamBytesUsed) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchLRUFilterCache *create_OrgApacheLuceneSearchLRUFilterCache_initWithInt_withLong_(jint maxSize, jlong maxRamBytesUsed);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchLRUFilterCache)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchLRUFilterCache")
