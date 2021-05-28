//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TermCollectingRewrite.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite")
#ifdef RESTRICT_OrgApacheLuceneSearchTermCollectingRewrite
#define INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTermCollectingRewrite

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchTermCollectingRewrite_) && (INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite || defined(INCLUDE_OrgApacheLuceneSearchTermCollectingRewrite))
#define OrgApacheLuceneSearchTermCollectingRewrite_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery_RewriteMethod 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTermContext;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchTermCollectingRewrite_TermCollector;

@interface OrgApacheLuceneSearchTermCollectingRewrite : OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

#pragma mark Protected

/*!
 @brief Add a MultiTermQuery term to the top-level query builder.
 */
- (void)addClauseWithId:(id)topLevel
withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                withInt:(jint)docCount
              withFloat:(jfloat)boost;

- (void)addClauseWithId:(id)topLevel
withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                withInt:(jint)docCount
              withFloat:(jfloat)boost
withOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)states;

/*!
 @brief Finalize the creation of the query from the builder.
 */
- (OrgApacheLuceneSearchQuery *)buildWithId:(id)builder;

/*!
 @brief Return a suitable builder for the top-level Query for holding all expanded terms.
 */
- (id)getTopLevelBuilder;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivate;

- (void)collectTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query
withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector *)collector;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermCollectingRewrite)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermCollectingRewrite_initPackagePrivate(OrgApacheLuceneSearchTermCollectingRewrite *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermCollectingRewrite)

#endif

#if !defined (OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite || defined(INCLUDE_OrgApacheLuceneSearchTermCollectingRewrite_TermCollector))
#define OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_

@class OrgApacheLuceneIndexIndexReaderContext;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneSearchTermCollectingRewrite_TermCollector : NSObject {
 @public
  OrgApacheLuceneIndexLeafReaderContext *readerContext_;
  OrgApacheLuceneIndexIndexReaderContext *topReaderContext_;
  /*!
   @brief attributes used for communication with the enum
   */
  OrgApacheLuceneUtilAttributeSource *attributes_;
}

#pragma mark Public

/*!
 @brief return false to stop collecting
 */
- (jboolean)collectWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

/*!
 @brief the next segment's <code>TermsEnum</code> that is used to collect terms
 */
- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

- (void)setReaderContextWithOrgApacheLuceneIndexIndexReaderContext:(OrgApacheLuceneIndexIndexReaderContext *)topReaderContext
                         withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector, readerContext_, OrgApacheLuceneIndexLeafReaderContext *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector, topReaderContext_, OrgApacheLuceneIndexIndexReaderContext *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector, attributes_, OrgApacheLuceneUtilAttributeSource *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_init(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite")
