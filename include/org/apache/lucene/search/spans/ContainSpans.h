//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/ContainSpans.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansContainSpans")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansContainSpans
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansContainSpans 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansContainSpans 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansContainSpans

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpansContainSpans_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansContainSpans || defined(INCLUDE_OrgApacheLuceneSearchSpansContainSpans))
#define OrgApacheLuceneSearchSpansContainSpans_

#define RESTRICT_OrgApacheLuceneSearchSpansConjunctionSpans 1
#define INCLUDE_OrgApacheLuceneSearchSpansConjunctionSpans 1
#include "org/apache/lucene/search/spans/ConjunctionSpans.h"

@class OrgApacheLuceneSearchSpansSpans;
@protocol JavaUtilList;
@protocol OrgApacheLuceneSearchSpansSpanCollector;

@interface OrgApacheLuceneSearchSpansContainSpans : OrgApacheLuceneSearchSpansConjunctionSpans {
 @public
  OrgApacheLuceneSearchSpansSpans *sourceSpans_;
  OrgApacheLuceneSearchSpansSpans *bigSpans_;
  OrgApacheLuceneSearchSpansSpans *littleSpans_;
}

#pragma mark Public

- (void)collectWithOrgApacheLuceneSearchSpansSpanCollector:(id<OrgApacheLuceneSearchSpansSpanCollector>)collector;

- (jint)endPosition;

- (jint)startPosition;

- (jint)width;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)bigSpans
                                            withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)littleSpans
                                            withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)sourceSpans;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithJavaUtilList:(id<JavaUtilList>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansContainSpans)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansContainSpans, sourceSpans_, OrgApacheLuceneSearchSpansSpans *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansContainSpans, bigSpans_, OrgApacheLuceneSearchSpansSpans *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansContainSpans, littleSpans_, OrgApacheLuceneSearchSpansSpans *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansContainSpans_initPackagePrivateWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansContainSpans *self, OrgApacheLuceneSearchSpansSpans *bigSpans, OrgApacheLuceneSearchSpansSpans *littleSpans, OrgApacheLuceneSearchSpansSpans *sourceSpans);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansContainSpans)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansContainSpans")
