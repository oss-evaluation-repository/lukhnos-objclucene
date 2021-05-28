//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/LuceneLevenshteinDistance.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance")
#ifdef RESTRICT_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpellLuceneLevenshteinDistance_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance || defined(INCLUDE_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance))
#define OrgApacheLuceneSearchSpellLuceneLevenshteinDistance_

#define RESTRICT_OrgApacheLuceneSearchSpellStringDistance 1
#define INCLUDE_OrgApacheLuceneSearchSpellStringDistance 1
#include "org/apache/lucene/search/spell/StringDistance.h"

/*!
 @brief Damerau-Levenshtein (optimal string alignment) implemented in a consistent 
   way as Lucene's FuzzyTermsEnum with the transpositions option enabled.
 Notes:
   <ul>
     <li> This metric treats full unicode codepoints as characters
     <li> This metric scales raw edit distances into a floating point score
          based upon the shortest of the two terms    
 <li> Transpositions of two adjacent codepoints are treated as primitive 
          edits.    
 <li> Edits are applied in parallel: for example, "ab" and "bca" have 
          distance 3.  
 </ul>
   
   NOTE: this class is not particularly efficient. It is only intended
   for merging results from multiple DirectSpellCheckers.
 */
@interface OrgApacheLuceneSearchSpellLuceneLevenshteinDistance : NSObject < OrgApacheLuceneSearchSpellStringDistance >

#pragma mark Public

/*!
 @brief Creates a new comparator, mimicing the behavior of Lucene's internal
  edit distance.
 */
- (instancetype __nonnull)init;

- (jfloat)getDistanceWithNSString:(NSString *)target
                     withNSString:(NSString *)other;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpellLuceneLevenshteinDistance)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellLuceneLevenshteinDistance_init(OrgApacheLuceneSearchSpellLuceneLevenshteinDistance *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellLuceneLevenshteinDistance *new_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellLuceneLevenshteinDistance *create_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellLuceneLevenshteinDistance)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance")
