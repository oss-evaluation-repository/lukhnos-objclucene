//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/InMemorySorter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestInMemorySorter")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestInMemorySorter
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestInMemorySorter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestInMemorySorter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestInMemorySorter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestInMemorySorter_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestInMemorySorter || defined(INCLUDE_OrgApacheLuceneSearchSuggestInMemorySorter))
#define OrgApacheLuceneSearchSuggestInMemorySorter_

#define RESTRICT_OrgApacheLuceneSearchSuggestFstBytesRefSorter 1
#define INCLUDE_OrgApacheLuceneSearchSuggestFstBytesRefSorter 1
#include "org/apache/lucene/search/suggest/fst/BytesRefSorter.h"

@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilComparator;
@protocol OrgApacheLuceneUtilBytesRefIterator;

/*!
 @brief An <code>BytesRefSorter</code> that keeps all the entries in memory.
 */
@interface OrgApacheLuceneSearchSuggestInMemorySorter : NSObject < OrgApacheLuceneSearchSuggestFstBytesRefSorter >

#pragma mark Public

/*!
 @brief Creates an InMemorySorter, sorting entries by the
  provided comparator.
 */
- (instancetype __nonnull)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;

- (void)addWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)utf8;

- (id<JavaUtilComparator>)getComparator;

- (id<OrgApacheLuceneUtilBytesRefIterator>)iterator;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestInMemorySorter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestInMemorySorter_initWithJavaUtilComparator_(OrgApacheLuceneSearchSuggestInMemorySorter *self, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestInMemorySorter *new_OrgApacheLuceneSearchSuggestInMemorySorter_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestInMemorySorter *create_OrgApacheLuceneSearchSuggestInMemorySorter_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestInMemorySorter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestInMemorySorter")
