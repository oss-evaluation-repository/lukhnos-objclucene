//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionFieldsConsumer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer))
#define OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_

#define RESTRICT_OrgApacheLuceneCodecsFieldsConsumer 1
#define INCLUDE_OrgApacheLuceneCodecsFieldsConsumer 1
#include "org/apache/lucene/codecs/FieldsConsumer.h"

@class OrgApacheLuceneCodecsPostingsFormat;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexSegmentWriteState;

/*!
 @brief <p>
  Weighted FSTs for any indexed <code>SuggestField</code> is built on <code>write(Fields)</code>.
 A weighted FST maps the analyzed forms of a field to its
  surface form and document id. FSTs are stored in the CompletionDictionary (.lkp). 
 </p>
  <p>
  The file offsets of a field's FST are stored in the CompletionIndex (.cmp)
  along with the field's internal number <code>FieldInfo.number</code> on <code>close()</code>.
  </p>
 */
@interface OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer : OrgApacheLuceneCodecsFieldsConsumer

#pragma mark Public

- (void)close;

- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat:(OrgApacheLuceneCodecsPostingsFormat *)delegatePostingsFormat
                                          withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *self, OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat, OrgApacheLuceneIndexSegmentWriteState *state);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat, OrgApacheLuceneIndexSegmentWriteState *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat, OrgApacheLuceneIndexSegmentWriteState *state);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer")
