//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DivFloatFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction))
#define OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction 1
#include "org/apache/lucene/queries/function/valuesource/DualFloatFunction.h"

@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneQueriesFunctionValueSource;

/*!
 @brief Function to divide "a" by "b"
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction : OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction

#pragma mark Public

/*!
 @param a the numerator.
 @param b the denominator.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)a
                              withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)b;

#pragma mark Protected

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)aVals
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)bVals;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDivFloatFunction")
