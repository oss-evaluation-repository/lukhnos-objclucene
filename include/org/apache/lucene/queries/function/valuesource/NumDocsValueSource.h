//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/NumDocsValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource))
#define OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@protocol JavaUtilMap;

/*!
 @brief Returns the value of <code>IndexReader.numDocs()</code>
  for every document.This is the number of documents
  excluding deletions.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource : OrgApacheLuceneQueriesFunctionValueSource

#pragma mark Public

- (instancetype __nonnull)init;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *self);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource")
