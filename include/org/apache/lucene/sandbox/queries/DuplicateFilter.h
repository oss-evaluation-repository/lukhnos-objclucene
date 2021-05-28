//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/sandbox/queries/DuplicateFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSandboxQueriesDuplicateFilter")
#ifdef RESTRICT_OrgApacheLuceneSandboxQueriesDuplicateFilter
#define INCLUDE_ALL_OrgApacheLuceneSandboxQueriesDuplicateFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSandboxQueriesDuplicateFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneSandboxQueriesDuplicateFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSandboxQueriesDuplicateFilter_) && (INCLUDE_ALL_OrgApacheLuceneSandboxQueriesDuplicateFilter || defined(INCLUDE_OrgApacheLuceneSandboxQueriesDuplicateFilter))
#define OrgApacheLuceneSandboxQueriesDuplicateFilter_

#define RESTRICT_OrgApacheLuceneSearchFilter 1
#define INCLUDE_OrgApacheLuceneSearchFilter 1
#include "org/apache/lucene/search/Filter.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode;
@class OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode;
@class OrgApacheLuceneSearchDocIdSet;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Filter to remove duplicate values from search results.
 <p>
  WARNING: for this to work correctly, you may have to wrap
  your reader as it cannot current deduplicate across different
  index segments.
 - seealso: SlowCompositeReaderWrapper
 */
@interface OrgApacheLuceneSandboxQueriesDuplicateFilter : OrgApacheLuceneSearchFilter

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)fieldName;

- (instancetype __nonnull)initWithNSString:(NSString *)fieldName
withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode:(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)keepMode
withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode:(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)processingMode;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (NSString *)getFieldName;

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)getKeepMode;

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)getProcessingMode;

- (NSUInteger)hash;

- (void)setFieldNameWithNSString:(NSString *)fieldName;

- (void)setKeepModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode:(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)keepMode;

- (void)setProcessingModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode:(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)processingMode;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSandboxQueriesDuplicateFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, NSString *fieldName);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter *new_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(NSString *fieldName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter *create_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(NSString *fieldName);

FOUNDATION_EXPORT void OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, NSString *fieldName, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *keepMode, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *processingMode);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter *new_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_(NSString *fieldName, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *keepMode, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *processingMode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter *create_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_(NSString *fieldName, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *keepMode, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *processingMode);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSandboxQueriesDuplicateFilter)

#endif

#if !defined (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_) && (INCLUDE_ALL_OrgApacheLuceneSandboxQueriesDuplicateFilter || defined(INCLUDE_OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode))
#define OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_Enum) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_Enum_KM_USE_FIRST_OCCURRENCE = 0,
  OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_Enum_KM_USE_LAST_OCCURRENCE = 1,
};

/*!
 @brief KeepMode determines which document id to consider as the master, all others being
  identified as duplicates.Selecting the "first occurrence" can potentially save on IO.
 */
@interface OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode : JavaLangEnum

@property (readonly, class, nonnull) OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *KM_USE_FIRST_OCCURRENCE NS_SWIFT_NAME(KM_USE_FIRST_OCCURRENCE);
@property (readonly, class, nonnull) OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *KM_USE_LAST_OCCURRENCE NS_SWIFT_NAME(KM_USE_LAST_OCCURRENCE);
#pragma mark Public

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_values_[];

inline OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_get_KM_USE_FIRST_OCCURRENCE(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_FIRST_OCCURRENCE)

inline OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_get_KM_USE_LAST_OCCURRENCE(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_LAST_OCCURRENCE)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_values(void);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode)

#endif

#if !defined (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_) && (INCLUDE_ALL_OrgApacheLuceneSandboxQueriesDuplicateFilter || defined(INCLUDE_OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode))
#define OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_Enum) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_Enum_PM_FULL_VALIDATION = 0,
  OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_Enum_PM_FAST_INVALIDATION = 1,
};

/*!
 @brief "Full" processing mode starts by setting all bits to false and only setting bits
  for documents that contain the given field and are identified as none-duplicates.
 <p>
  "Fast" processing sets all bits to true then unsets all duplicate docs found for the
  given field. This approach avoids the need to read DocsEnum for terms that are seen
  to have a document frequency of exactly "1" (i.e. no duplicates). While a potentially
  faster approach , the downside is that bitsets produced will include bits set for
  documents that do not actually contain the field given.
 */
@interface OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode : JavaLangEnum

@property (readonly, class, nonnull) OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *PM_FULL_VALIDATION NS_SWIFT_NAME(PM_FULL_VALIDATION);
@property (readonly, class, nonnull) OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *PM_FAST_INVALIDATION NS_SWIFT_NAME(PM_FAST_INVALIDATION);
#pragma mark Public

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_values_[];

inline OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_get_PM_FULL_VALIDATION(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FULL_VALIDATION)

inline OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_get_PM_FAST_INVALIDATION(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FAST_INVALIDATION)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_values(void);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSandboxQueriesDuplicateFilter")
