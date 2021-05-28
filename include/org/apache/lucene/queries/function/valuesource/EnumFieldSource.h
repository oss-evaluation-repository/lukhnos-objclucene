//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/EnumFieldSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource))
#define OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource 1
#include "org/apache/lucene/queries/function/valuesource/FieldCacheSource.h"

@class JavaLangInteger;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@protocol JavaUtilMap;

/*!
 @brief Obtains int field values from <code>org.apache.lucene.index.LeafReader.getNumericDocValues</code> and makes
  those values available as other numeric types, casting as needed.
 strVal of the value is not the int value, but its string (displayed) value
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource : OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource {
 @public
  id<JavaUtilMap> enumIntToStringMap_;
  id<JavaUtilMap> enumStringToIntMap_;
}
@property (readonly, class, strong) JavaLangInteger *DEFAULT_VALUE NS_SWIFT_NAME(DEFAULT_VALUE);

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)field
                           withJavaUtilMap:(id<JavaUtilMap>)enumIntToStringMap
                           withJavaUtilMap:(id<JavaUtilMap>)enumStringToIntMap;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource, enumIntToStringMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource, enumStringToIntMap_, id<JavaUtilMap>)

inline JavaLangInteger *OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_get_DEFAULT_VALUE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaLangInteger *OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_DEFAULT_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource, DEFAULT_VALUE, JavaLangInteger *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_initWithNSString_withJavaUtilMap_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource *self, NSString *field, id<JavaUtilMap> enumIntToStringMap, id<JavaUtilMap> enumStringToIntMap);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource *new_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_initWithNSString_withJavaUtilMap_withJavaUtilMap_(NSString *field, id<JavaUtilMap> enumIntToStringMap, id<JavaUtilMap> enumStringToIntMap) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource *create_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_initWithNSString_withJavaUtilMap_withJavaUtilMap_(NSString *field, id<JavaUtilMap> enumIntToStringMap, id<JavaUtilMap> enumStringToIntMap);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource")
