//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/ScaleFloatFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction))
#define OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

/*!
 @brief Scales values to be between min and max.
 <p>This implementation currently traverses all of the source values to obtain
  their min and max. 
 <p>This implementation currently cannot distinguish when documents have been
  deleted or documents that have no value, and 0.0 values will be used for
  these cases.  This means that if values are normally all greater than 0.0, one can
  still end up with 0.0 as the min value to map from.  In these cases, an
  appropriate map() function could be used as a workaround to change 0.0
  to a value in the real range.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *source_;
  jfloat min_;
  jfloat max_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                                  withFloat:(jfloat)min
                                                                  withFloat:(jfloat)max;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction, source_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction")
