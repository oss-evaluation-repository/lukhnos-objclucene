//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/TermsCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinTermsCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinTermsCollector
#ifdef INCLUDE_OrgApacheLuceneSearchJoinTermsCollector_SV
#define INCLUDE_OrgApacheLuceneSearchJoinTermsCollector 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchJoinTermsCollector_MV
#define INCLUDE_OrgApacheLuceneSearchJoinTermsCollector 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchJoinTermsCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinTermsCollector))
#define OrgApacheLuceneSearchJoinTermsCollector_

#define RESTRICT_OrgApacheLuceneSearchSimpleCollector 1
#define INCLUDE_OrgApacheLuceneSearchSimpleCollector 1
#include "org/apache/lucene/search/SimpleCollector.h"

@class OrgApacheLuceneUtilBytesRefHash;

/*!
 @brief A collector that collects all terms from a specified field matching the query.
 */
@interface OrgApacheLuceneSearchJoinTermsCollector : OrgApacheLuceneSearchSimpleCollector {
 @public
  NSString *field_;
  OrgApacheLuceneUtilBytesRefHash *collectorTerms_;
}

#pragma mark Public

- (OrgApacheLuceneUtilBytesRefHash *)getCollectorTerms;

- (jboolean)needsScores;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)field;

/*!
 @brief Chooses the right <code>TermsCollector</code> implementation.
 @param field The field to collect terms for
 @param multipleValuesPerDocument Whether the field to collect terms for has multiple values per document.
 @return a <code>TermsCollector</code> instance
 */
+ (OrgApacheLuceneSearchJoinTermsCollector *)createWithNSString:(NSString *)field
                                                    withBoolean:(jboolean)multipleValuesPerDocument;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinTermsCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinTermsCollector, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinTermsCollector, collectorTerms_, OrgApacheLuceneUtilBytesRefHash *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinTermsCollector_initPackagePrivateWithNSString_(OrgApacheLuceneSearchJoinTermsCollector *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsCollector *OrgApacheLuceneSearchJoinTermsCollector_createWithNSString_withBoolean_(NSString *field, jboolean multipleValuesPerDocument);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinTermsCollector)

#endif

#if !defined (OrgApacheLuceneSearchJoinTermsCollector_MV_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinTermsCollector_MV))
#define OrgApacheLuceneSearchJoinTermsCollector_MV_

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneSearchJoinTermsCollector_MV : OrgApacheLuceneSearchJoinTermsCollector {
 @public
  OrgApacheLuceneUtilBytesRef *scratch_;
}

#pragma mark Public

- (void)collectWithInt:(jint)doc;

#pragma mark Protected

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinTermsCollector_MV)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinTermsCollector_MV, scratch_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinTermsCollector_MV_initWithNSString_(OrgApacheLuceneSearchJoinTermsCollector_MV *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsCollector_MV *new_OrgApacheLuceneSearchJoinTermsCollector_MV_initWithNSString_(NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsCollector_MV *create_OrgApacheLuceneSearchJoinTermsCollector_MV_initWithNSString_(NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinTermsCollector_MV)

#endif

#if !defined (OrgApacheLuceneSearchJoinTermsCollector_SV_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinTermsCollector_SV))
#define OrgApacheLuceneSearchJoinTermsCollector_SV_

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneSearchJoinTermsCollector_SV : OrgApacheLuceneSearchJoinTermsCollector {
 @public
  OrgApacheLuceneUtilBytesRef *spare_;
}

#pragma mark Public

- (void)collectWithInt:(jint)doc;

#pragma mark Protected

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinTermsCollector_SV)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinTermsCollector_SV, spare_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinTermsCollector_SV_initWithNSString_(OrgApacheLuceneSearchJoinTermsCollector_SV *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsCollector_SV *new_OrgApacheLuceneSearchJoinTermsCollector_SV_initWithNSString_(NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsCollector_SV *create_OrgApacheLuceneSearchJoinTermsCollector_SV_initWithNSString_(NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinTermsCollector_SV)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsCollector")
