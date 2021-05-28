//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/ConjunctionSpans.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansConjunctionSpans")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansConjunctionSpans
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansConjunctionSpans 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansConjunctionSpans 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansConjunctionSpans

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpansConjunctionSpans_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansConjunctionSpans || defined(INCLUDE_OrgApacheLuceneSearchSpansConjunctionSpans))
#define OrgApacheLuceneSearchSpansConjunctionSpans_

#define RESTRICT_OrgApacheLuceneSearchSpansSpans 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpans 1
#include "org/apache/lucene/search/spans/Spans.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@protocol JavaUtilList;

/*!
 @brief Common super class for multiple sub spans required in a document.
 */
@interface OrgApacheLuceneSearchSpansConjunctionSpans : OrgApacheLuceneSearchSpansSpans {
 @public
  IOSObjectArray *subSpans_;
  OrgApacheLuceneSearchDocIdSetIterator *conjunction_;
  jboolean atFirstInCurrentDoc_;
  jboolean oneExhaustedInCurrentDoc_;
}

#pragma mark Public

- (jint)advanceWithInt:(jint)target;

/*!
 @brief Return a <code>TwoPhaseIterator</code> view of this ConjunctionSpans.
 */
- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

- (jlong)cost;

- (jint)docID;

- (IOSObjectArray *)getSubSpans;

- (jint)nextDoc;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithJavaUtilList:(id<JavaUtilList>)subSpans;

- (jint)toMatchDoc;

- (jboolean)twoPhaseCurrentDocMatches;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansConjunctionSpans)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansConjunctionSpans, subSpans_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansConjunctionSpans, conjunction_, OrgApacheLuceneSearchDocIdSetIterator *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansConjunctionSpans_initPackagePrivateWithJavaUtilList_(OrgApacheLuceneSearchSpansConjunctionSpans *self, id<JavaUtilList> subSpans);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansConjunctionSpans)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansConjunctionSpans")
