//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointInBBoxQueryImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl")
#ifdef RESTRICT_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl
#define INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_) && (INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl || defined(INCLUDE_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl))
#define OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_

#define RESTRICT_OrgApacheLuceneSearchGeoPointTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchGeoPointTermQuery 1
#include "org/apache/lucene/search/GeoPointTermQuery.h"

@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;
@class OrgApacheLuceneUtilAttributeSource;

/*!
 @brief Package private implementation for the public facing GeoPointInBBoxQuery delegate class.
 */
@interface OrgApacheLuceneSearchGeoPointInBBoxQueryImpl : OrgApacheLuceneSearchGeoPointTermQuery

#pragma mark Public

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (void)setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts;

#pragma mark Package-Private

/*!
 @brief Constructs a new GeoBBoxQuery that will match encoded GeoPoint terms that fall within or on the boundary
  of the bounding box defined by the input parameters
 @param field the field name
 @param minLon lower longitude (x) value of the bounding box
 @param minLat lower latitude (y) value of the bounding box
 @param maxLon upper longitude (x) value of the bounding box
 @param maxLat upper latitude (y) value of the bounding box
 */
- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)field
                                              withDouble:(jdouble)minLon
                                              withDouble:(jdouble)minLat
                                              withDouble:(jdouble)maxLon
                                              withDouble:(jdouble)maxLat;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initPackagePrivateWithNSString_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *self, NSString *field, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *new_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initPackagePrivateWithNSString_withDouble_withDouble_withDouble_withDouble_(NSString *field, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *create_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initPackagePrivateWithNSString_withDouble_withDouble_withDouble_withDouble_(NSString *field, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl)

#endif

#if !defined (OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum_) && (INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl || defined(INCLUDE_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum))
#define OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum_

#define RESTRICT_OrgApacheLuceneSearchGeoPointTermsEnum 1
#define INCLUDE_OrgApacheLuceneSearchGeoPointTermsEnum 1
#include "org/apache/lucene/search/GeoPointTermsEnum.h"

@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneSearchGeoPointInBBoxQueryImpl;

@interface OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum : OrgApacheLuceneSearchGeoPointTermsEnum

#pragma mark Protected

- (instancetype __nonnull)initWithOrgApacheLuceneSearchGeoPointInBBoxQueryImpl:(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *)outer$
                                             withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                                                    withDouble:(jdouble)minLon
                                                                    withDouble:(jdouble)minLat
                                                                    withDouble:(jdouble)maxLon
                                                                    withDouble:(jdouble)maxLat;

/*!
 @brief Determine whether the quad-cell crosses the shape
 */
- (jboolean)cellCrossesWithDouble:(jdouble)minLon
                       withDouble:(jdouble)minLat
                       withDouble:(jdouble)maxLon
                       withDouble:(jdouble)maxLat;

- (jboolean)cellIntersectsShapeWithDouble:(jdouble)minLon
                               withDouble:(jdouble)minLat
                               withDouble:(jdouble)maxLon
                               withDouble:(jdouble)maxLat;

/*!
 @brief Determine whether quad-cell is within the shape
 */
- (jboolean)cellWithinWithDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat;

- (jboolean)postFilterWithDouble:(jdouble)lon
                      withDouble:(jdouble)lat;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)arg0
                                                                   withDouble:(jdouble)arg1
                                                                   withDouble:(jdouble)arg2
                                                                   withDouble:(jdouble)arg3
                                                                   withDouble:(jdouble)arg4 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum_initWithOrgApacheLuceneSearchGeoPointInBBoxQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum *self, OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum *new_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum_initWithOrgApacheLuceneSearchGeoPointInBBoxQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum *create_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum_initWithOrgApacheLuceneSearchGeoPointInBBoxQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_GeoPointInBBoxTermsEnum)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl")
