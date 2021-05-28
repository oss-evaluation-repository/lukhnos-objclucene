//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/RussianStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgTartarusSnowballExtRussianStemmer")
#ifdef RESTRICT_OrgTartarusSnowballExtRussianStemmer
#define INCLUDE_ALL_OrgTartarusSnowballExtRussianStemmer 0
#else
#define INCLUDE_ALL_OrgTartarusSnowballExtRussianStemmer 1
#endif
#undef RESTRICT_OrgTartarusSnowballExtRussianStemmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgTartarusSnowballExtRussianStemmer_) && (INCLUDE_ALL_OrgTartarusSnowballExtRussianStemmer || defined(INCLUDE_OrgTartarusSnowballExtRussianStemmer))
#define OrgTartarusSnowballExtRussianStemmer_

#define RESTRICT_OrgTartarusSnowballSnowballProgram 1
#define INCLUDE_OrgTartarusSnowballSnowballProgram 1
#include "org/tartarus/snowball/SnowballProgram.h"

/*!
 @brief This class was automatically generated by a Snowball to Java compiler 
  It implements the stemming algorithm defined by a snowball script.
 */
@interface OrgTartarusSnowballExtRussianStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype __nonnull)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtRussianStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtRussianStemmer_init(OrgTartarusSnowballExtRussianStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtRussianStemmer *new_OrgTartarusSnowballExtRussianStemmer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgTartarusSnowballExtRussianStemmer *create_OrgTartarusSnowballExtRussianStemmer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtRussianStemmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgTartarusSnowballExtRussianStemmer")
