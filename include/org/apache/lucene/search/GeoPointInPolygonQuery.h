//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointInPolygonQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInPolygonQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchGeoPointInPolygonQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInPolygonQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInPolygonQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGeoPointInPolygonQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchGeoPointInPolygonQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInPolygonQuery || defined(INCLUDE_OrgApacheLuceneSearchGeoPointInPolygonQuery))
#define OrgApacheLuceneSearchGeoPointInPolygonQuery_

#define RESTRICT_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl 1
#define INCLUDE_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl 1
#include "org/apache/lucene/search/GeoPointInBBoxQueryImpl.h"

@class IOSDoubleArray;
@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;
@class OrgApacheLuceneUtilAttributeSource;

/*!
 @brief Implements a simple point in polygon query on a GeoPoint field.This is based on 
 <code>GeoPointInBBoxQueryImpl</code> and is implemented using a
  three phase approach.
 First, like <code>GeoPointInBBoxQueryImpl</code>
  candidate terms are queried using a numeric range based on the morton codes
  of the min and max lat/lon pairs. Terms passing this initial filter are passed
  to a secondary filter that verifies whether the decoded lat/lon point falls within
  (or on the boundary) of the bounding box query. Finally, the remaining candidate
  term is passed to the final point in polygon check. All value comparisons are subject
  to the same precision tolerance defined in org.apache.lucene.util.GeoUtils#TOLERANCE
  NOTES:
     1.  The polygon coordinates need to be in either clockwise or counter-clockwise order.
     2.  The polygon must not be self-crossing, otherwise the query may result in unexpected behavior
     3.  All latitude/longitude values must be in decimal degrees.
     4.  Complex computational geometry (e.g., dateline wrapping, polygon with holes) is not supported
     5.  For more advanced GeoSpatial indexing and query operations see spatial module
 */
@interface OrgApacheLuceneSearchGeoPointInPolygonQuery : OrgApacheLuceneSearchGeoPointInBBoxQueryImpl

#pragma mark Public

/*!
 @brief Constructs a new GeoPolygonQuery that will match encoded <code>org.apache.lucene.document.GeoPointField</code> terms
  that fall within or on the boundary of the polygon defined by the input parameters.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)field
                           withDoubleArray:(IOSDoubleArray *)polyLons
                           withDoubleArray:(IOSDoubleArray *)polyLats;

- (jboolean)isEqual:(id)o;

/*!
 @brief API utility method for returning the array of latitudinal values for this GeoPolygon
  The returned array is not a copy so do not change it!
 */
- (IOSDoubleArray *)getLats;

/*!
 @brief API utility method for returning the array of longitudinal values for this GeoPolygon
  The returned array is not a copy so do not change it!
 */
- (IOSDoubleArray *)getLons;

- (NSUInteger)hash;

- (void)setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)arg0
                                              withDouble:(jdouble)arg1
                                              withDouble:(jdouble)arg2
                                              withDouble:(jdouble)arg3
                                              withDouble:(jdouble)arg4 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointInPolygonQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats);

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoPointInPolygonQuery *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoPointInPolygonQuery *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointInPolygonQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInPolygonQuery")
