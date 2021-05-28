//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SuggestWordFrequencyComparator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator")
#ifdef RESTRICT_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator || defined(INCLUDE_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator))
#define OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_

#define RESTRICT_JavaUtilComparator 1
#define INCLUDE_JavaUtilComparator 1
#include "java/util/Comparator.h"

@class OrgApacheLuceneSearchSpellSuggestWord;
@protocol JavaUtilFunctionFunction;
@protocol JavaUtilFunctionToDoubleFunction;
@protocol JavaUtilFunctionToIntFunction;
@protocol JavaUtilFunctionToLongFunction;

/*!
 @brief Frequency first, then score.
 */
@interface OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator : NSObject < JavaUtilComparator >

#pragma mark Public

/*!
 @brief Creates a new comparator that will compare by <code>SuggestWord.freq</code>,
  then by <code>SuggestWord.score</code>, then by <code>SuggestWord.string</code>.
 */
- (instancetype __nonnull)init;

- (jint)compareWithId:(OrgApacheLuceneSearchSpellSuggestWord *)first
               withId:(OrgApacheLuceneSearchSpellSuggestWord *)second;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_init(OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator *new_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator *create_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator")
