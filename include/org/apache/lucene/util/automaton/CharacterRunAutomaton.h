//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/CharacterRunAutomaton.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton")
#ifdef RESTRICT_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilAutomatonCharacterRunAutomaton_) && (INCLUDE_ALL_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton || defined(INCLUDE_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton))
#define OrgApacheLuceneUtilAutomatonCharacterRunAutomaton_

#define RESTRICT_OrgApacheLuceneUtilAutomatonRunAutomaton 1
#define INCLUDE_OrgApacheLuceneUtilAutomatonRunAutomaton 1
#include "org/apache/lucene/util/automaton/RunAutomaton.h"

@class IOSCharArray;
@class OrgApacheLuceneUtilAutomatonAutomaton;

/*!
 @brief Automaton representation for matching char[].
 */
@interface OrgApacheLuceneUtilAutomatonCharacterRunAutomaton : OrgApacheLuceneUtilAutomatonRunAutomaton

#pragma mark Public

/*!
 @brief Construct with a default number of maxDeterminizedStates.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

/*!
 @brief Construct specifying maxDeterminizedStates.
 @param a Automaton to match
 @param maxDeterminizedStates maximum number of states that the automataon    can have once determinized.  If more states are required to determinize
     it then a TooComplexToDeterminizeException is thrown.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                withInt:(jint)maxDeterminizedStates;

/*!
 @brief Returns true if the given string is accepted by this automaton
 */
- (jboolean)runWithCharArray:(IOSCharArray *)s
                     withInt:(jint)offset
                     withInt:(jint)length;

/*!
 @brief Returns true if the given string is accepted by this automaton.
 */
- (jboolean)runWithNSString:(NSString *)s;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)arg0
                                                                withInt:(jint)arg1
                                                            withBoolean:(jboolean)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)arg0
                                                                withInt:(jint)arg1
                                                            withBoolean:(jboolean)arg2
                                                                withInt:(jint)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonCharacterRunAutomaton)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonCharacterRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonCharacterRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonCharacterRunAutomaton *new_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonCharacterRunAutomaton *create_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonCharacterRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonCharacterRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonCharacterRunAutomaton *new_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint maxDeterminizedStates) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonCharacterRunAutomaton *create_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint maxDeterminizedStates);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonCharacterRunAutomaton)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonCharacterRunAutomaton")
