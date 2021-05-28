//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/FakeScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinFakeScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinFakeScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinFakeScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinFakeScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinFakeScorer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchJoinFakeScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinFakeScorer || defined(INCLUDE_OrgApacheLuceneSearchJoinFakeScorer))
#define OrgApacheLuceneSearchJoinFakeScorer_

#define RESTRICT_OrgApacheLuceneSearchScorer 1
#define INCLUDE_OrgApacheLuceneSearchScorer 1
#include "org/apache/lucene/search/Scorer.h"

@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchJoinFakeScorer : OrgApacheLuceneSearchScorer {
 @public
  jfloat score_;
  jint doc_;
  jint freq_;
}

#pragma mark Public

- (jint)advanceWithInt:(jint)target;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (jint)nextDoc;

- (jfloat)score;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivate;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinFakeScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinFakeScorer_initPackagePrivate(OrgApacheLuceneSearchJoinFakeScorer *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinFakeScorer *new_OrgApacheLuceneSearchJoinFakeScorer_initPackagePrivate(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinFakeScorer *create_OrgApacheLuceneSearchJoinFakeScorer_initPackagePrivate(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinFakeScorer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinFakeScorer")
