//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/MaxPayloadFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsMaxPayloadFunction")
#ifdef RESTRICT_OrgApacheLuceneSearchPayloadsMaxPayloadFunction
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsMaxPayloadFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsMaxPayloadFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPayloadsMaxPayloadFunction

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchPayloadsMaxPayloadFunction_) && (INCLUDE_ALL_OrgApacheLuceneSearchPayloadsMaxPayloadFunction || defined(INCLUDE_OrgApacheLuceneSearchPayloadsMaxPayloadFunction))
#define OrgApacheLuceneSearchPayloadsMaxPayloadFunction_

#define RESTRICT_OrgApacheLuceneSearchPayloadsPayloadFunction 1
#define INCLUDE_OrgApacheLuceneSearchPayloadsPayloadFunction 1
#include "org/apache/lucene/search/payloads/PayloadFunction.h"

/*!
 @brief Returns the maximum payload score seen, else 1 if there are no payloads on the doc.
 <p>
  Is thread safe and completely reusable.
 */
@interface OrgApacheLuceneSearchPayloadsMaxPayloadFunction : OrgApacheLuceneSearchPayloadsPayloadFunction

#pragma mark Public

- (instancetype __nonnull)init;

- (jfloat)currentScoreWithInt:(jint)docId
                 withNSString:(NSString *)field
                      withInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)numPayloadsSeen
                    withFloat:(jfloat)currentScore
                    withFloat:(jfloat)currentPayloadScore;

- (jfloat)docScoreWithInt:(jint)docId
             withNSString:(NSString *)field
                  withInt:(jint)numPayloadsSeen
                withFloat:(jfloat)payloadScore;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsMaxPayloadFunction)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init(OrgApacheLuceneSearchPayloadsMaxPayloadFunction *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsMaxPayloadFunction *new_OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsMaxPayloadFunction *create_OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsMaxPayloadFunction)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsMaxPayloadFunction")
