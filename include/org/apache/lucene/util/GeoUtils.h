//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/util/GeoUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilGeoUtils")
#ifdef RESTRICT_OrgApacheLuceneUtilGeoUtils
#define INCLUDE_ALL_OrgApacheLuceneUtilGeoUtils 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilGeoUtils 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilGeoUtils

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilGeoUtils_) && (INCLUDE_ALL_OrgApacheLuceneUtilGeoUtils || defined(INCLUDE_OrgApacheLuceneUtilGeoUtils))
#define OrgApacheLuceneUtilGeoUtils_

@class IOSDoubleArray;
@class JavaLangLong;
@class JavaUtilArrayList;

/*!
 @brief Basic reusable geo-spatial utility methods
 */
@interface OrgApacheLuceneUtilGeoUtils : NSObject
@property (readonly, class) jshort BITS NS_SWIFT_NAME(BITS);
@property (readonly, class) jdouble TOLERANCE NS_SWIFT_NAME(TOLERANCE);
@property (readonly, class) jdouble MIN_LON_INCL NS_SWIFT_NAME(MIN_LON_INCL);
@property (readonly, class) jdouble MAX_LON_INCL NS_SWIFT_NAME(MAX_LON_INCL);
@property (readonly, class) jdouble MIN_LAT_INCL NS_SWIFT_NAME(MIN_LAT_INCL);
@property (readonly, class) jdouble MAX_LAT_INCL NS_SWIFT_NAME(MAX_LAT_INCL);

#pragma mark Public

+ (jboolean)bboxContainsWithDouble:(jdouble)lon
                        withDouble:(jdouble)lat
                        withDouble:(jdouble)minLon
                        withDouble:(jdouble)minLat
                        withDouble:(jdouble)maxLon
                        withDouble:(jdouble)maxLat;

/*!
 @brief Converts a given circle (defined as a point/radius) to an approximated line-segment polygon
 @param lon longitudinal center of circle (in degrees)
 @param lat latitudinal center of circle (in degrees)
 @param radius distance radius of circle (in meters)
 @return a list of lon/lat points representing the circle
 */
+ (JavaUtilArrayList *)circleToPolyWithDouble:(jdouble)lon
                                   withDouble:(jdouble)lat
                                   withDouble:(jdouble)radius;

+ (jboolean)circleWithinRectWithDouble:(jdouble)rMinX
                            withDouble:(jdouble)rMinY
                            withDouble:(jdouble)rMaxX
                            withDouble:(jdouble)rMaxY
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)radius;

+ (jdouble)compareWithDouble:(jdouble)v1
                  withDouble:(jdouble)v2;

+ (NSString *)geoTermToStringWithLong:(jlong)term;

+ (jboolean)isValidLatWithDouble:(jdouble)lat;

+ (jboolean)isValidLonWithDouble:(jdouble)lon;

+ (JavaLangLong *)mortonHashWithDouble:(jdouble)lon
                            withDouble:(jdouble)lat;

+ (jdouble)mortonUnhashLatWithLong:(jlong)hash_;

+ (jdouble)mortonUnhashLonWithLong:(jlong)hash_;

/*!
 @brief Puts latitude in range of -90 to 90.
 */
+ (jdouble)normalizeLatWithDouble:(jdouble)lat_deg;

/*!
 @brief Puts longitude in range of -180 to +180.
 */
+ (jdouble)normalizeLonWithDouble:(jdouble)lon_deg;

/*!
 @brief simple even-odd point in polygon computation
     1.Determine if point is contained in the longitudinal range
     2.
 Determine whether point crosses the edge by computing the latitudinal delta
         between the end-point of a parallel vector (originating at the point) and the
         y-component of the edge sink
  NOTE: Requires polygon point (x,y) order either clockwise or counter-clockwise
 */
+ (jboolean)pointInPolygonWithDoubleArray:(IOSDoubleArray *)x
                          withDoubleArray:(IOSDoubleArray *)y
                               withDouble:(jdouble)lat
                               withDouble:(jdouble)lon;

/*!
 @brief Computes whether rectangle a contains rectangle b (touching allowed)
 */
+ (jboolean)rectContainsWithDouble:(jdouble)aMinX
                        withDouble:(jdouble)aMinY
                        withDouble:(jdouble)aMaxX
                        withDouble:(jdouble)aMaxY
                        withDouble:(jdouble)bMinX
                        withDouble:(jdouble)bMinY
                        withDouble:(jdouble)bMaxX
                        withDouble:(jdouble)bMaxY;

+ (jboolean)rectCrossesWithDouble:(jdouble)aMinX
                       withDouble:(jdouble)aMinY
                       withDouble:(jdouble)aMaxX
                       withDouble:(jdouble)aMaxY
                       withDouble:(jdouble)bMinX
                       withDouble:(jdouble)bMinY
                       withDouble:(jdouble)bMaxX
                       withDouble:(jdouble)bMaxY;

/*!
 @brief Computes whether a rectangle crosses a circle
 */
+ (jboolean)rectCrossesCircleWithDouble:(jdouble)rMinX
                             withDouble:(jdouble)rMinY
                             withDouble:(jdouble)rMaxX
                             withDouble:(jdouble)rMaxY
                             withDouble:(jdouble)centerLon
                             withDouble:(jdouble)centerLat
                             withDouble:(jdouble)radius;

/*!
 @brief Computes whether a rectangle crosses a shape.
 (touching not allowed)
 */
+ (jboolean)rectCrossesPolyWithDouble:(jdouble)rMinX
                           withDouble:(jdouble)rMinY
                           withDouble:(jdouble)rMaxX
                           withDouble:(jdouble)rMaxY
                      withDoubleArray:(IOSDoubleArray *)shapeX
                      withDoubleArray:(IOSDoubleArray *)shapeY
                           withDouble:(jdouble)sMinX
                           withDouble:(jdouble)sMinY
                           withDouble:(jdouble)sMaxX
                           withDouble:(jdouble)sMaxY;

+ (jboolean)rectDisjointWithDouble:(jdouble)aMinX
                        withDouble:(jdouble)aMinY
                        withDouble:(jdouble)aMaxX
                        withDouble:(jdouble)aMaxY
                        withDouble:(jdouble)bMinX
                        withDouble:(jdouble)bMinY
                        withDouble:(jdouble)bMaxX
                        withDouble:(jdouble)bMaxY;

/*!
 @brief Computes whether a rectangle intersects another rectangle (crosses, within, touching, etc)
 */
+ (jboolean)rectIntersectsWithDouble:(jdouble)aMinX
                          withDouble:(jdouble)aMinY
                          withDouble:(jdouble)aMaxX
                          withDouble:(jdouble)aMaxY
                          withDouble:(jdouble)bMinX
                          withDouble:(jdouble)bMinY
                          withDouble:(jdouble)bMaxX
                          withDouble:(jdouble)bMaxY;

/*!
 @brief Computes whether a rectangle is wholly within another rectangle (shared boundaries allowed)
 */
+ (jboolean)rectWithinWithDouble:(jdouble)aMinX
                      withDouble:(jdouble)aMinY
                      withDouble:(jdouble)aMaxX
                      withDouble:(jdouble)aMaxY
                      withDouble:(jdouble)bMinX
                      withDouble:(jdouble)bMinY
                      withDouble:(jdouble)bMaxX
                      withDouble:(jdouble)bMaxY;

+ (jboolean)rectWithinCircleWithDouble:(jdouble)rMinX
                            withDouble:(jdouble)rMinY
                            withDouble:(jdouble)rMaxX
                            withDouble:(jdouble)rMaxY
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)radius;

/*!
 @brief Computes whether a rectangle is within a given polygon (shared boundaries allowed)
 */
+ (jboolean)rectWithinPolyWithDouble:(jdouble)rMinX
                          withDouble:(jdouble)rMinY
                          withDouble:(jdouble)rMaxX
                          withDouble:(jdouble)rMaxY
                     withDoubleArray:(IOSDoubleArray *)shapeX
                     withDoubleArray:(IOSDoubleArray *)shapeY
                          withDouble:(jdouble)sMinX
                          withDouble:(jdouble)sMinY
                          withDouble:(jdouble)sMaxX
                          withDouble:(jdouble)sMaxY;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilGeoUtils)

inline jshort OrgApacheLuceneUtilGeoUtils_get_BITS(void);
#define OrgApacheLuceneUtilGeoUtils_BITS 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilGeoUtils, BITS, jshort)

inline jdouble OrgApacheLuceneUtilGeoUtils_get_TOLERANCE(void);
#define OrgApacheLuceneUtilGeoUtils_TOLERANCE 1.0E-6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilGeoUtils, TOLERANCE, jdouble)

/*!
 @brief Minimum longitude value.
 */
inline jdouble OrgApacheLuceneUtilGeoUtils_get_MIN_LON_INCL(void);
#define OrgApacheLuceneUtilGeoUtils_MIN_LON_INCL -180.0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilGeoUtils, MIN_LON_INCL, jdouble)

/*!
 @brief Maximum longitude value.
 */
inline jdouble OrgApacheLuceneUtilGeoUtils_get_MAX_LON_INCL(void);
#define OrgApacheLuceneUtilGeoUtils_MAX_LON_INCL 180.0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilGeoUtils, MAX_LON_INCL, jdouble)

/*!
 @brief Minimum latitude value.
 */
inline jdouble OrgApacheLuceneUtilGeoUtils_get_MIN_LAT_INCL(void);
#define OrgApacheLuceneUtilGeoUtils_MIN_LAT_INCL -90.0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilGeoUtils, MIN_LAT_INCL, jdouble)

/*!
 @brief Maximum latitude value.
 */
inline jdouble OrgApacheLuceneUtilGeoUtils_get_MAX_LAT_INCL(void);
#define OrgApacheLuceneUtilGeoUtils_MAX_LAT_INCL 90.0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilGeoUtils, MAX_LAT_INCL, jdouble)

FOUNDATION_EXPORT JavaLangLong *OrgApacheLuceneUtilGeoUtils_mortonHashWithDouble_withDouble_(jdouble lon, jdouble lat);

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoUtils_mortonUnhashLonWithLong_(jlong hash_);

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoUtils_mortonUnhashLatWithLong_(jlong hash_);

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoUtils_compareWithDouble_withDouble_(jdouble v1, jdouble v2);

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoUtils_normalizeLonWithDouble_(jdouble lon_deg);

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoUtils_normalizeLatWithDouble_(jdouble lat_deg);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_bboxContainsWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble lon, jdouble lat, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_pointInPolygonWithDoubleArray_withDoubleArray_withDouble_withDouble_(IOSDoubleArray *x, IOSDoubleArray *y, jdouble lat, jdouble lon);

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilGeoUtils_geoTermToStringWithLong_(jlong term);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectDisjointWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble aMinX, jdouble aMinY, jdouble aMaxX, jdouble aMaxY, jdouble bMinX, jdouble bMinY, jdouble bMaxX, jdouble bMaxY);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectWithinWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble aMinX, jdouble aMinY, jdouble aMaxX, jdouble aMaxY, jdouble bMinX, jdouble bMinY, jdouble bMaxX, jdouble bMaxY);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectCrossesWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble aMinX, jdouble aMinY, jdouble aMaxX, jdouble aMaxY, jdouble bMinX, jdouble bMinY, jdouble bMaxX, jdouble bMaxY);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectContainsWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble aMinX, jdouble aMinY, jdouble aMaxX, jdouble aMaxY, jdouble bMinX, jdouble bMinY, jdouble bMaxX, jdouble bMaxY);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectIntersectsWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble aMinX, jdouble aMinY, jdouble aMaxX, jdouble aMaxY, jdouble bMinX, jdouble bMinY, jdouble bMaxX, jdouble bMaxY);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectCrossesPolyWithDouble_withDouble_withDouble_withDouble_withDoubleArray_withDoubleArray_withDouble_withDouble_withDouble_withDouble_(jdouble rMinX, jdouble rMinY, jdouble rMaxX, jdouble rMaxY, IOSDoubleArray *shapeX, IOSDoubleArray *shapeY, jdouble sMinX, jdouble sMinY, jdouble sMaxX, jdouble sMaxY);

FOUNDATION_EXPORT JavaUtilArrayList *OrgApacheLuceneUtilGeoUtils_circleToPolyWithDouble_withDouble_withDouble_(jdouble lon, jdouble lat, jdouble radius);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectWithinPolyWithDouble_withDouble_withDouble_withDouble_withDoubleArray_withDoubleArray_withDouble_withDouble_withDouble_withDouble_(jdouble rMinX, jdouble rMinY, jdouble rMaxX, jdouble rMaxY, IOSDoubleArray *shapeX, IOSDoubleArray *shapeY, jdouble sMinX, jdouble sMinY, jdouble sMaxX, jdouble sMaxY);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectWithinCircleWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble rMinX, jdouble rMinY, jdouble rMaxX, jdouble rMaxY, jdouble centerLon, jdouble centerLat, jdouble radius);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_rectCrossesCircleWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble rMinX, jdouble rMinY, jdouble rMaxX, jdouble rMaxY, jdouble centerLon, jdouble centerLat, jdouble radius);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_circleWithinRectWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(jdouble rMinX, jdouble rMinY, jdouble rMaxX, jdouble rMaxY, jdouble centerLon, jdouble centerLat, jdouble radius);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_isValidLatWithDouble_(jdouble lat);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilGeoUtils_isValidLonWithDouble_(jdouble lon);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilGeoUtils)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilGeoUtils")
