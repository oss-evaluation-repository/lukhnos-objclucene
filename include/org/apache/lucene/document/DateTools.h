//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/DateTools.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentDateTools")
#ifdef RESTRICT_OrgApacheLuceneDocumentDateTools
#define INCLUDE_ALL_OrgApacheLuceneDocumentDateTools 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentDateTools 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentDateTools

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneDocumentDateTools_) && (INCLUDE_ALL_OrgApacheLuceneDocumentDateTools || defined(INCLUDE_OrgApacheLuceneDocumentDateTools))
#define OrgApacheLuceneDocumentDateTools_

@class JavaUtilDate;
@class JavaUtilTimeZone;
@class OrgApacheLuceneDocumentDateTools_Resolution;

/*!
 @brief Provides support for converting dates to strings and vice-versa.
 The strings are structured so that lexicographic sorting orders 
  them by date, which makes them suitable for use as field values 
  and search terms.  
 <P>This class also helps you to limit the resolution of your dates. Do not
  save dates with a finer resolution than you really need, as then 
 <code>TermRangeQuery</code> and <code>PrefixQuery</code> will require more memory and become slower.  
 <P>
  Another approach is <code>NumericUtils</code>, which provides
  a sortable binary representation (prefix encoded) of numeric values, which
  date/time are.
  For indexing a <code>Date</code> or <code>Calendar</code>, just get the unix timestamp as 
 <code>long</code> using <code>Date.getTime</code> or <code>Calendar.getTimeInMillis</code> and
  index this as a numeric value with <code>LongField</code>
  and use <code>NumericRangeQuery</code> to query it.
 */
@interface OrgApacheLuceneDocumentDateTools : NSObject
@property (readonly, class, strong) JavaUtilTimeZone *GMT NS_SWIFT_NAME(GMT);

#pragma mark Public

/*!
 @brief Converts a Date to a string suitable for indexing.
 @param date the date to be converted
 @param resolution the desired resolution, see   
 <code>round(Date, DateTools.Resolution)</code>
 @return a string in format <code>yyyyMMddHHmmssSSS</code> or shorter,
   depending on <code>resolution</code>; using GMT as timezone
 */
+ (NSString *)dateToStringWithJavaUtilDate:(JavaUtilDate *)date
withOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)resolution;

/*!
 @brief Limit a date's resolution.For example, the date <code>2004-09-21 13:50:11</code>
  will be changed to <code>2004-09-01 00:00:00</code> when using 
 <code>Resolution.MONTH</code>.
 @param resolution The desired resolution of the date to be returned
 @return the date with all values more precise than <code>resolution</code>
   set to 0 or 1
 */
+ (JavaUtilDate *)roundWithJavaUtilDate:(JavaUtilDate *)date
withOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)resolution;

/*!
 @brief Limit a date's resolution.For example, the date <code>1095767411000</code>
  (which represents 2004-09-21 13:50:11) will be changed to  
 <code>1093989600000</code> (2004-09-01 00:00:00) when using 
 <code>Resolution.MONTH</code>.
 @param resolution The desired resolution of the date to be returned
 @return the date with all values more precise than <code>resolution</code>
   set to 0 or 1, expressed as milliseconds since January 1, 1970, 00:00:00 GMT
 */
+ (jlong)roundWithLong:(jlong)time
withOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)resolution;

/*!
 @brief Converts a string produced by <code>timeToString</code> or 
 <code>dateToString</code> back to a time, represented as a
  Date object.
 @param dateString the date string to be converted
 @return the parsed time as a Date object
 @throw ParseExceptionif <code>dateString</code> is not in the 
   expected format
 */
+ (JavaUtilDate *)stringToDateWithNSString:(NSString *)dateString;

/*!
 @brief Converts a string produced by <code>timeToString</code> or 
 <code>dateToString</code> back to a time, represented as the
  number of milliseconds since January 1, 1970, 00:00:00 GMT.
 @param dateString the date string to be converted
 @return the number of milliseconds since January 1, 1970, 00:00:00 GMT
 @throw ParseExceptionif <code>dateString</code> is not in the 
   expected format
 */
+ (jlong)stringToTimeWithNSString:(NSString *)dateString;

/*!
 @brief Converts a millisecond time to a string suitable for indexing.
 @param time the date expressed as milliseconds since January 1, 1970, 00:00:00 GMT
 @param resolution the desired resolution, see   
 <code>round(long, DateTools.Resolution)</code>
 @return a string in format <code>yyyyMMddHHmmssSSS</code> or shorter,
   depending on <code>resolution</code>; using GMT as timezone
 */
+ (NSString *)timeToStringWithLong:(jlong)time
withOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)resolution;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentDateTools)

inline JavaUtilTimeZone *OrgApacheLuceneDocumentDateTools_get_GMT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilTimeZone *OrgApacheLuceneDocumentDateTools_GMT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneDocumentDateTools, GMT, JavaUtilTimeZone *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneDocumentDateTools_dateToStringWithJavaUtilDate_withOrgApacheLuceneDocumentDateTools_Resolution_(JavaUtilDate *date, OrgApacheLuceneDocumentDateTools_Resolution *resolution);

FOUNDATION_EXPORT NSString *OrgApacheLuceneDocumentDateTools_timeToStringWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_(jlong time, OrgApacheLuceneDocumentDateTools_Resolution *resolution);

FOUNDATION_EXPORT jlong OrgApacheLuceneDocumentDateTools_stringToTimeWithNSString_(NSString *dateString);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheLuceneDocumentDateTools_stringToDateWithNSString_(NSString *dateString);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheLuceneDocumentDateTools_roundWithJavaUtilDate_withOrgApacheLuceneDocumentDateTools_Resolution_(JavaUtilDate *date, OrgApacheLuceneDocumentDateTools_Resolution *resolution);

FOUNDATION_EXPORT jlong OrgApacheLuceneDocumentDateTools_roundWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_(jlong time, OrgApacheLuceneDocumentDateTools_Resolution *resolution);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentDateTools)

#endif

#if !defined (OrgApacheLuceneDocumentDateTools_Resolution_) && (INCLUDE_ALL_OrgApacheLuceneDocumentDateTools || defined(INCLUDE_OrgApacheLuceneDocumentDateTools_Resolution))
#define OrgApacheLuceneDocumentDateTools_Resolution_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;
@class JavaTextSimpleDateFormat;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneDocumentDateTools_Resolution_Enum) {
  OrgApacheLuceneDocumentDateTools_Resolution_Enum_YEAR = 0,
  OrgApacheLuceneDocumentDateTools_Resolution_Enum_MONTH = 1,
  OrgApacheLuceneDocumentDateTools_Resolution_Enum_DAY = 2,
  OrgApacheLuceneDocumentDateTools_Resolution_Enum_HOUR = 3,
  OrgApacheLuceneDocumentDateTools_Resolution_Enum_MINUTE = 4,
  OrgApacheLuceneDocumentDateTools_Resolution_Enum_SECOND = 5,
  OrgApacheLuceneDocumentDateTools_Resolution_Enum_MILLISECOND = 6,
};

/*!
 @brief Specifies the time granularity.
 */
@interface OrgApacheLuceneDocumentDateTools_Resolution : JavaLangEnum {
 @public
  jint formatLen_;
  JavaTextSimpleDateFormat *format_;
}

@property (readonly, class, nonnull) OrgApacheLuceneDocumentDateTools_Resolution *YEAR NS_SWIFT_NAME(YEAR);
@property (readonly, class, nonnull) OrgApacheLuceneDocumentDateTools_Resolution *MONTH NS_SWIFT_NAME(MONTH);
@property (readonly, class, nonnull) OrgApacheLuceneDocumentDateTools_Resolution *DAY NS_SWIFT_NAME(DAY);
@property (readonly, class, nonnull) OrgApacheLuceneDocumentDateTools_Resolution *HOUR NS_SWIFT_NAME(HOUR);
@property (readonly, class, nonnull) OrgApacheLuceneDocumentDateTools_Resolution *MINUTE NS_SWIFT_NAME(MINUTE);
@property (readonly, class, nonnull) OrgApacheLuceneDocumentDateTools_Resolution *SECOND NS_SWIFT_NAME(SECOND);
@property (readonly, class, nonnull) OrgApacheLuceneDocumentDateTools_Resolution *MILLISECOND NS_SWIFT_NAME(MILLISECOND);
#pragma mark Public

/*!
 @brief this method returns the name of the resolution
  in lowercase (for backwards compatibility)
 */
- (NSString *)description;

+ (OrgApacheLuceneDocumentDateTools_Resolution *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (OrgApacheLuceneDocumentDateTools_Resolution_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentDateTools_Resolution)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_values_[];

/*!
 @brief Limit a date's resolution to year granularity.
 */
inline OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_get_YEAR(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentDateTools_Resolution, YEAR)

/*!
 @brief Limit a date's resolution to month granularity.
 */
inline OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_get_MONTH(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentDateTools_Resolution, MONTH)

/*!
 @brief Limit a date's resolution to day granularity.
 */
inline OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_get_DAY(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentDateTools_Resolution, DAY)

/*!
 @brief Limit a date's resolution to hour granularity.
 */
inline OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_get_HOUR(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentDateTools_Resolution, HOUR)

/*!
 @brief Limit a date's resolution to minute granularity.
 */
inline OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_get_MINUTE(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentDateTools_Resolution, MINUTE)

/*!
 @brief Limit a date's resolution to second granularity.
 */
inline OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_get_SECOND(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentDateTools_Resolution, SECOND)

/*!
 @brief Limit a date's resolution to millisecond granularity.
 */
inline OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_get_MILLISECOND(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentDateTools_Resolution, MILLISECOND)

J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentDateTools_Resolution, format_, JavaTextSimpleDateFormat *)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneDocumentDateTools_Resolution_values(void);

FOUNDATION_EXPORT OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentDateTools_Resolution)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentDateTools")
