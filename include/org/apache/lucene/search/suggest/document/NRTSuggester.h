//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/NRTSuggester.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggester")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentNRTSuggester
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggester 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggester 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentNRTSuggester

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentNRTSuggester_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggester || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentNRTSuggester))
#define OrgApacheLuceneSearchSuggestDocumentNRTSuggester_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneSearchSuggestDocumentCompletionScorer;
@class OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief <p>
  NRTSuggester executes Top N search on a weighted FST specified by a <code>CompletionScorer</code>
  <p>
  See <code>lookup(CompletionScorer, Bits, TopSuggestDocsCollector)</code> for more implementation
  details.
 <p>
  FST Format: 
 <ul>
    <li>Input: analyzed forms of input terms</li>
    <li>Output: Pair&lt;Long, BytesRef&gt; containing weight, surface form and docID</li>
  </ul>
  <p>
  NOTE: 
 <ul>
    <li>having too many deletions or using a very restrictive filter can make the search inadmissible due to
      over-pruning of potential paths. See <code>CompletionScorer.accept(int, Bits)</code></li>
    <li>when matched documents are arbitrarily filtered (<code>CompletionScorer.filtered</code> set to <code>true</code>,
      it is assumed that the filter will roughly filter out half the number of documents that match
      the provided automaton</li>
    <li>lookup performance will degrade as more accepted completions lead to filtered out documents</li>
  </ul>
 */
@interface OrgApacheLuceneSearchSuggestDocumentNRTSuggester : NSObject < OrgApacheLuceneUtilAccountable >

#pragma mark Public

- (id<JavaUtilCollection>)getChildResources;

/*!
 @brief Loads a <code>NRTSuggester</code> from <code>org.apache.lucene.store.IndexInput</code>
 */
+ (OrgApacheLuceneSearchSuggestDocumentNRTSuggester *)load__WithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input;

/*!
 @brief Collects at most <code>TopSuggestDocsCollector.getCountToCollect()</code> completions that
  match the provided <code>CompletionScorer</code>.
 <p>
  The <code>CompletionScorer.automaton</code> is intersected with the <code>fst</code>.
  <code>CompletionScorer.weight</code> is used to compute boosts and/or extract context
  for each matched partial paths. A top N search is executed on <code>fst</code> seeded with
  the matched partial paths. Upon reaching a completed path, <code>CompletionScorer.accept(int, Bits)</code>
  and <code>CompletionScorer.score(float, float)</code> is used on the document id, index weight
  and query boost to filter and score the entry, before being collected via 
 <code>TopSuggestDocsCollector.collect(int, CharSequence, CharSequence, float)</code>
 */
- (void)lookupWithOrgApacheLuceneSearchSuggestDocumentCompletionScorer:(OrgApacheLuceneSearchSuggestDocumentCompletionScorer *)scorer
                                           withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
       withOrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector *)collector;

- (jlong)ramBytesUsed;

#pragma mark Package-Private

+ (jlong)decodeWithLong:(jlong)output;

+ (jlong)encodeWithLong:(jlong)input;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentNRTSuggester)

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentNRTSuggester *OrgApacheLuceneSearchSuggestDocumentNRTSuggester_load__WithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *input);

FOUNDATION_EXPORT jlong OrgApacheLuceneSearchSuggestDocumentNRTSuggester_encodeWithLong_(jlong input);

FOUNDATION_EXPORT jlong OrgApacheLuceneSearchSuggestDocumentNRTSuggester_decodeWithLong_(jlong output);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentNRTSuggester)

#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggester || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor))
#define OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_

@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilCharsRefBuilder;

/*!
 @brief Helper to encode/decode payload (surface + PAYLOAD_SEP + docID) output
 */
@interface OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor : NSObject

#pragma mark Package-Private

- (instancetype __nonnull)init;

+ (OrgApacheLuceneUtilBytesRef *)makeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)surface
                                                             withInt:(jint)docID
                                                             withInt:(jint)payloadSep;

+ (jint)parseDocIDWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)output
                                          withInt:(jint)payloadSepIndex;

+ (jint)parseSurfaceFormWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)output
                                                withInt:(jint)payloadSep
                 withOrgApacheLuceneUtilCharsRefBuilder:(OrgApacheLuceneUtilCharsRefBuilder *)spare;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_init(OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor *new_OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor *create_OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_init(void);

FOUNDATION_EXPORT jint OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_parseSurfaceFormWithOrgApacheLuceneUtilBytesRef_withInt_withOrgApacheLuceneUtilCharsRefBuilder_(OrgApacheLuceneUtilBytesRef *output, jint payloadSep, OrgApacheLuceneUtilCharsRefBuilder *spare);

FOUNDATION_EXPORT jint OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_parseDocIDWithOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneUtilBytesRef *output, jint payloadSepIndex);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_makeWithOrgApacheLuceneUtilBytesRef_withInt_withInt_(OrgApacheLuceneUtilBytesRef *surface, jint docID, jint payloadSep);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggester")
