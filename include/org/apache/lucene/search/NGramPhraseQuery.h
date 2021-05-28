//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/NGramPhraseQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchNGramPhraseQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchNGramPhraseQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchNGramPhraseQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery || defined(INCLUDE_OrgApacheLuceneSearchNGramPhraseQuery))
#define OrgApacheLuceneSearchNGramPhraseQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchPhraseQuery;

/*!
 @brief This is a <code>PhraseQuery</code> which is optimized for n-gram phrase query.
 For example, when you query "ABCD" on a 2-gram field, you may want to use
  NGramPhraseQuery rather than <code>PhraseQuery</code>, because NGramPhraseQuery
  will <code>rewrite(IndexReader)</code> the query to "AB/0 CD/2", while <code>PhraseQuery</code>
  will query "AB/0 BC/1 CD/2" (where term/position).
 */
@interface OrgApacheLuceneSearchNGramPhraseQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

/*!
 @brief Constructor that takes gram size.
 @param n n-gram size
 */
- (instancetype __nonnull)initWithInt:(jint)n
 withOrgApacheLuceneSearchPhraseQuery:(OrgApacheLuceneSearchPhraseQuery *)query;

- (jboolean)isEqual:(id)o;

- (jfloat)getBoost;

/*!
 @brief Return the list of relative positions that each term should appear at.
 */
- (IOSIntArray *)getPositions;

/*!
 @brief Return the list of terms.
 */
- (IOSObjectArray *)getTerms;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (void)setBoostWithFloat:(jfloat)b;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchNGramPhraseQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchNGramPhraseQuery_initWithInt_withOrgApacheLuceneSearchPhraseQuery_(OrgApacheLuceneSearchNGramPhraseQuery *self, jint n, OrgApacheLuceneSearchPhraseQuery *query);

FOUNDATION_EXPORT OrgApacheLuceneSearchNGramPhraseQuery *new_OrgApacheLuceneSearchNGramPhraseQuery_initWithInt_withOrgApacheLuceneSearchPhraseQuery_(jint n, OrgApacheLuceneSearchPhraseQuery *query) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchNGramPhraseQuery *create_OrgApacheLuceneSearchNGramPhraseQuery_initWithInt_withOrgApacheLuceneSearchPhraseQuery_(jint n, OrgApacheLuceneSearchPhraseQuery *query);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchNGramPhraseQuery)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery")
