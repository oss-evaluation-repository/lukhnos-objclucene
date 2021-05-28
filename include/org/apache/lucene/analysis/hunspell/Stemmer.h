//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hunspell/Stemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisHunspellStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisHunspellStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisHunspellStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisHunspellStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisHunspellStemmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisHunspellStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisHunspellStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisHunspellStemmer))
#define OrgApacheLuceneAnalysisHunspellStemmer_

@class IOSCharArray;
@class IOSObjectArray;
@class OrgApacheLuceneAnalysisHunspellDictionary;
@protocol JavaUtilList;

/*!
 @brief Stemmer uses the affix rules declared in the Dictionary to generate one or more stems for a word.It
  conforms to the algorithm in the original hunspell algorithm, including recursive suffix stripping.
 */
@interface OrgApacheLuceneAnalysisHunspellStemmer : NSObject {
 @public
  IOSObjectArray *prefixReaders_;
  IOSObjectArray *prefixArcs_;
  IOSObjectArray *suffixReaders_;
  IOSObjectArray *suffixArcs_;
}

#pragma mark Public

/*!
 @brief Constructs a new Stemmer which will use the provided Dictionary to create its stems.
 @param dictionary Dictionary that will be used to create the stems
 */
- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneAnalysisHunspellDictionary:(OrgApacheLuceneAnalysisHunspellDictionary *)dictionary;

/*!
 @brief Find the stem(s) of the provided word
 @param word Word to find the stems for
 @return List of stems for the word
 */
- (id<JavaUtilList>)stemWithCharArray:(IOSCharArray *)word
                              withInt:(jint)length;

/*!
 @brief Find the stem(s) of the provided word.
 @param word Word to find the stems for
 @return List of stems for the word
 */
- (id<JavaUtilList>)stemWithNSString:(NSString *)word;

/*!
 @brief Find the unique stem(s) of the provided word
 @param word Word to find the stems for
 @return List of stems for the word
 */
- (id<JavaUtilList>)uniqueStemsWithCharArray:(IOSCharArray *)word
                                     withInt:(jint)length;

#pragma mark Package-Private

/*!
 @brief Applies the affix rule to the given word, producing a list of stems if any are found
 @param strippedWord Word the affix has been removed and the strip added
 @param length valid length of stripped word
 @param affix HunspellAffix representing the affix rule itself
 @param prefixFlag when we already stripped a prefix, we cant simply recurse and check the suffix, unless both are compatible                    so we must check dictionary form against both to add it as a stem!
 @param recursionDepth current recursion depth
 @param prefix true if we are removing a prefix (false if it's a suffix)
 @return List of stems for the word, or an empty list if none are found
 */
- (id<JavaUtilList>)applyAffixWithCharArray:(IOSCharArray *)strippedWord
                                    withInt:(jint)length
                                    withInt:(jint)affix
                                    withInt:(jint)prefixFlag
                                    withInt:(jint)recursionDepth
                                withBoolean:(jboolean)prefix
                                withBoolean:(jboolean)circumfix
                                withBoolean:(jboolean)caseVariant;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisHunspellStemmer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellStemmer, prefixReaders_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellStemmer, prefixArcs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellStemmer, suffixReaders_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellStemmer, suffixArcs_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellStemmer_initPackagePrivateWithOrgApacheLuceneAnalysisHunspellDictionary_(OrgApacheLuceneAnalysisHunspellStemmer *self, OrgApacheLuceneAnalysisHunspellDictionary *dictionary);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellStemmer *new_OrgApacheLuceneAnalysisHunspellStemmer_initPackagePrivateWithOrgApacheLuceneAnalysisHunspellDictionary_(OrgApacheLuceneAnalysisHunspellDictionary *dictionary) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellStemmer *create_OrgApacheLuceneAnalysisHunspellStemmer_initPackagePrivateWithOrgApacheLuceneAnalysisHunspellDictionary_(OrgApacheLuceneAnalysisHunspellDictionary *dictionary);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHunspellStemmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisHunspellStemmer")
