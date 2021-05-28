//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/CollectionUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilCollectionUtil")
#ifdef RESTRICT_OrgApacheLuceneUtilCollectionUtil
#define INCLUDE_ALL_OrgApacheLuceneUtilCollectionUtil 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilCollectionUtil 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilCollectionUtil

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilCollectionUtil_) && (INCLUDE_ALL_OrgApacheLuceneUtilCollectionUtil || defined(INCLUDE_OrgApacheLuceneUtilCollectionUtil))
#define OrgApacheLuceneUtilCollectionUtil_

@protocol JavaUtilComparator;
@protocol JavaUtilList;

/*!
 @brief Methods for manipulating (sorting) collections.
 Sort methods work directly on the supplied lists and don't copy to/from arrays
  before/after. For medium size collections as used in the Lucene indexer that is
  much more efficient.
 */
@interface OrgApacheLuceneUtilCollectionUtil : NSObject

#pragma mark Public

/*!
 @brief Sorts the given random access <code>List</code> in natural order.
 The list must implement <code>RandomAccess</code>. This method uses the intro sort
  algorithm, but falls back to insertion sort for small lists.
 @throw IllegalArgumentExceptionif list is e.g. a linked list without random access.
 */
+ (void)introSortWithJavaUtilList:(id<JavaUtilList>)list;

/*!
 @brief Sorts the given random access <code>List</code> using the <code>Comparator</code>.
 The list must implement <code>RandomAccess</code>. This method uses the intro sort
  algorithm, but falls back to insertion sort for small lists.
 @throw IllegalArgumentExceptionif list is e.g. a linked list without random access.
 */
+ (void)introSortWithJavaUtilList:(id<JavaUtilList>)list
           withJavaUtilComparator:(id<JavaUtilComparator>)comp;

/*!
 @brief Sorts the given random access <code>List</code> in natural order.
 The list must implement <code>RandomAccess</code>. This method uses the Tim sort
  algorithm, but falls back to binary sort for small lists.
 @throw IllegalArgumentExceptionif list is e.g. a linked list without random access.
 */
+ (void)timSortWithJavaUtilList:(id<JavaUtilList>)list;

/*!
 @brief Sorts the given random access <code>List</code> using the <code>Comparator</code>.
 The list must implement <code>RandomAccess</code>. This method uses the Tim sort
  algorithm, but falls back to binary sort for small lists.
 @throw IllegalArgumentExceptionif list is e.g. a linked list without random access.
 */
+ (void)timSortWithJavaUtilList:(id<JavaUtilList>)list
         withJavaUtilComparator:(id<JavaUtilComparator>)comp;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCollectionUtil)

FOUNDATION_EXPORT void OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_withJavaUtilComparator_(id<JavaUtilList> list, id<JavaUtilComparator> comp);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_(id<JavaUtilList> list);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_withJavaUtilComparator_(id<JavaUtilList> list, id<JavaUtilComparator> comp);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_(id<JavaUtilList> list);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCollectionUtil)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilCollectionUtil")
