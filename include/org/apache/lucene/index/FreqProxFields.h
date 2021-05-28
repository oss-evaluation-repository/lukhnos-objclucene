//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FreqProxFields.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFields")
#ifdef RESTRICT_OrgApacheLuceneIndexFreqProxFields
#define INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFields 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFields 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFreqProxFields

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexFreqProxFields_) && (INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFields || defined(INCLUDE_OrgApacheLuceneIndexFreqProxFields))
#define OrgApacheLuceneIndexFreqProxFields_

#define RESTRICT_OrgApacheLuceneIndexFields 1
#define INCLUDE_OrgApacheLuceneIndexFields 1
#include "org/apache/lucene/index/Fields.h"

@class OrgApacheLuceneIndexTerms;
@protocol JavaUtilIterator;
@protocol JavaUtilList;
@protocol JavaUtilMap;

/*!
 @brief Implements limited (iterators only, no stats) <code>Fields</code>
  interface over the in-RAM buffered
   fields/terms/postings, to flush postings through the
   PostingsFormat.
 */
@interface OrgApacheLuceneIndexFreqProxFields : OrgApacheLuceneIndexFields {
 @public
  id<JavaUtilMap> fields_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithJavaUtilList:(id<JavaUtilList>)fieldList;

- (id<JavaUtilIterator>)iterator;

- (jint)size;

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field;

#pragma mark Package-Private

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFreqProxFields)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxFields, fields_, id<JavaUtilMap>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFreqProxFields_initPackagePrivateWithJavaUtilList_(OrgApacheLuceneIndexFreqProxFields *self, id<JavaUtilList> fieldList);

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxFields *new_OrgApacheLuceneIndexFreqProxFields_initPackagePrivateWithJavaUtilList_(id<JavaUtilList> fieldList) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxFields *create_OrgApacheLuceneIndexFreqProxFields_initPackagePrivateWithJavaUtilList_(id<JavaUtilList> fieldList);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFreqProxFields)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFields")
