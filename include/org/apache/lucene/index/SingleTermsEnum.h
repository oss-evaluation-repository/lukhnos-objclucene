//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SingleTermsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSingleTermsEnum")
#ifdef RESTRICT_OrgApacheLuceneIndexSingleTermsEnum
#define INCLUDE_ALL_OrgApacheLuceneIndexSingleTermsEnum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSingleTermsEnum 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSingleTermsEnum

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexSingleTermsEnum_) && (INCLUDE_ALL_OrgApacheLuceneIndexSingleTermsEnum || defined(INCLUDE_OrgApacheLuceneIndexSingleTermsEnum))
#define OrgApacheLuceneIndexSingleTermsEnum_

#define RESTRICT_OrgApacheLuceneIndexFilteredTermsEnum 1
#define INCLUDE_OrgApacheLuceneIndexFilteredTermsEnum 1
#include "org/apache/lucene/index/FilteredTermsEnum.h"

@class OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Subclass of FilteredTermsEnum for enumerating a single term.
 <p>
  For example, this can be used by <code>MultiTermQuery</code>s
  that need only visit one term, but want to preserve
  MultiTermQuery semantics such as <code>MultiTermQuery.getRewriteMethod</code>
 .
 */
@interface OrgApacheLuceneIndexSingleTermsEnum : OrgApacheLuceneIndexFilteredTermsEnum

#pragma mark Public

/*!
 @brief Creates a new <code>SingleTermsEnum</code>.
 <p>
  After calling the constructor the enumeration is already pointing to the term,
  if it exists.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termText;

#pragma mark Protected

- (OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus *)acceptWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)arg0
                                                    withBoolean:(jboolean)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSingleTermsEnum)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexSingleTermsEnum *self, OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRef *termText);

FOUNDATION_EXPORT OrgApacheLuceneIndexSingleTermsEnum *new_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRef *termText) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSingleTermsEnum *create_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRef *termText);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSingleTermsEnum)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSingleTermsEnum")
