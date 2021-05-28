//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/PositionSpan.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightPositionSpan")
#ifdef RESTRICT_OrgApacheLuceneSearchHighlightPositionSpan
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightPositionSpan 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightPositionSpan 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchHighlightPositionSpan

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchHighlightPositionSpan_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightPositionSpan || defined(INCLUDE_OrgApacheLuceneSearchHighlightPositionSpan))
#define OrgApacheLuceneSearchHighlightPositionSpan_

/*!
 @brief Utility class to record Positions Spans
 */
@interface OrgApacheLuceneSearchHighlightPositionSpan : NSObject {
 @public
  jint start_;
  jint end_;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)start
                              withInt:(jint)end;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightPositionSpan)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightPositionSpan_initWithInt_withInt_(OrgApacheLuceneSearchHighlightPositionSpan *self, jint start, jint end);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightPositionSpan *new_OrgApacheLuceneSearchHighlightPositionSpan_initWithInt_withInt_(jint start, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightPositionSpan *create_OrgApacheLuceneSearchHighlightPositionSpan_initWithInt_withInt_(jint start, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightPositionSpan)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightPositionSpan")
