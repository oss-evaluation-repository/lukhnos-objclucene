//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BlendedTermQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchBlendedTermQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchBlendedTermQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchBlendedTermQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchBlendedTermQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchBlendedTermQuery
#ifdef INCLUDE_OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite
#define INCLUDE_OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchBlendedTermQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchBlendedTermQuery || defined(INCLUDE_OrgApacheLuceneSearchBlendedTermQuery))
#define OrgApacheLuceneSearchBlendedTermQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod;

/*!
 @brief A <code>Query</code> that blends index statistics across multiple terms.
 This is particularly useful when several terms should produce identical
  scores, regardless of their index statistics. 
 <p>For instance imagine that you are resolving synonyms at search time,
  all terms should produce identical scores instead of the default behavior,
  which tends to give higher scores to rare terms. 
 <p>An other useful use-case is cross-field search: imagine that you would
  like to search for <code>john</code> on two fields: <code>first_name</code> and 
 <code>last_name</code>. You might not want to give a higher weight to matches
  on the field where <code>john</code> is rarer, in which case 
 <code>BlendedTermQuery</code> would help as well.
 */
@interface OrgApacheLuceneSearchBlendedTermQuery : OrgApacheLuceneSearchQuery
@property (readonly, class, strong) OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *BOOLEAN_REWRITE NS_SWIFT_NAME(BOOLEAN_REWRITE);
@property (readonly, class, strong) OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *DISJUNCTION_MAX_REWRITE NS_SWIFT_NAME(DISJUNCTION_MAX_REWRITE);

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchBlendedTermQuery)

/*!
 @brief A <code>RewriteMethod</code> that adds all sub queries to a <code>BooleanQuery</code>
  which has <code>coords disabled</code>.This
  <code>RewriteMethod</code> is useful when matching on several fields is
  considered better than having a good match on a single field.
 */
inline OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *OrgApacheLuceneSearchBlendedTermQuery_get_BOOLEAN_REWRITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchBlendedTermQuery, BOOLEAN_REWRITE, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)

/*!
 @brief <code>DisjunctionMaxRewrite</code> instance with a tie-breaker of <code>0.01</code>.
 */
inline OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *OrgApacheLuceneSearchBlendedTermQuery_get_DISJUNCTION_MAX_REWRITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *OrgApacheLuceneSearchBlendedTermQuery_DISJUNCTION_MAX_REWRITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchBlendedTermQuery, DISJUNCTION_MAX_REWRITE, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlendedTermQuery)

#endif

#if !defined (OrgApacheLuceneSearchBlendedTermQuery_Builder_) && (INCLUDE_ALL_OrgApacheLuceneSearchBlendedTermQuery || defined(INCLUDE_OrgApacheLuceneSearchBlendedTermQuery_Builder))
#define OrgApacheLuceneSearchBlendedTermQuery_Builder_

@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTermContext;
@class OrgApacheLuceneSearchBlendedTermQuery;
@class OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod;

/*!
 @brief A Builder for <code>BlendedTermQuery</code>.
 */
@interface OrgApacheLuceneSearchBlendedTermQuery_Builder : NSObject

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype __nonnull)init;

/*!
 @brief Add a new <code>Term</code> to this builder, with a default boost of <code>1</code>.
 - seealso: #add(Term, float)
 */
- (OrgApacheLuceneSearchBlendedTermQuery_Builder *)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

/*!
 @brief Add a <code>Term</code> with the provided boost.The higher the boost, the
   more this term will contribute to the overall score of the  
 <code>BlendedTermQuery</code>.
 */
- (OrgApacheLuceneSearchBlendedTermQuery_Builder *)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                                         withFloat:(jfloat)boost;

/*!
 @brief Expert: Add a <code>Term</code> with the provided boost and context.
 This method is useful if you already have a <code>TermContext</code>
  object constructed for the given term.
 */
- (OrgApacheLuceneSearchBlendedTermQuery_Builder *)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                                         withFloat:(jfloat)boost
                                               withOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)context;

/*!
 @brief Build the <code>BlendedTermQuery</code>.
 */
- (OrgApacheLuceneSearchBlendedTermQuery *)build;

/*!
 @brief Set the <code>RewriteMethod</code>.Default is to use
   <code>BlendedTermQuery.DISJUNCTION_MAX_REWRITE</code>.
 - seealso: RewriteMethod
 */
- (OrgApacheLuceneSearchBlendedTermQuery_Builder *)setRewriteMethodWithOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)rewiteMethod;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBlendedTermQuery_Builder)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBlendedTermQuery_Builder_init(OrgApacheLuceneSearchBlendedTermQuery_Builder *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchBlendedTermQuery_Builder *new_OrgApacheLuceneSearchBlendedTermQuery_Builder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBlendedTermQuery_Builder *create_OrgApacheLuceneSearchBlendedTermQuery_Builder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlendedTermQuery_Builder)

#endif

#if !defined (OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_) && (INCLUDE_ALL_OrgApacheLuceneSearchBlendedTermQuery || defined(INCLUDE_OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod))
#define OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_

@class IOSObjectArray;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief A <code>RewriteMethod</code> defines how queries for individual terms should
   be merged.
 - seealso: BlendedTermQuery#BOOLEAN_REWRITE
 - seealso: BlendedTermQuery.DisjunctionMaxRewrite
 */
@interface OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod : NSObject

#pragma mark Public

/*!
 @brief Merge the provided sub queries into a single <code>Query</code> object.
 */
- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)subQueries;

#pragma mark Protected

/*!
 @brief Sole constructor
 */
- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_init(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod)

#endif

#if !defined (OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_) && (INCLUDE_ALL_OrgApacheLuceneSearchBlendedTermQuery || defined(INCLUDE_OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite))
#define OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_

@class IOSObjectArray;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief A <code>RewriteMethod</code> that creates a <code>DisjunctionMaxQuery</code> out
  of the sub queries.This <code>RewriteMethod</code> is useful when having a
  good match on a single field is considered better than having average
  matches on several fields.
 */
@interface OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite : OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod

#pragma mark Public

/*!
 @brief This <code>RewriteMethod</code> will create <code>DisjunctionMaxQuery</code>
   instances that have the provided tie breaker.
 - seealso: DisjunctionMaxQuery
 */
- (instancetype __nonnull)initWithFloat:(jfloat)tieBreakerMultiplier;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)subQueries;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_initWithFloat_(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *self, jfloat tieBreakerMultiplier);

FOUNDATION_EXPORT OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *new_OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_initWithFloat_(jfloat tieBreakerMultiplier) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *create_OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_initWithFloat_(jfloat tieBreakerMultiplier);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchBlendedTermQuery")
