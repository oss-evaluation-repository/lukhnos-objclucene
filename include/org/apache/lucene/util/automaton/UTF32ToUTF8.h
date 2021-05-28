//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/UTF32ToUTF8.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonUTF32ToUTF8")
#ifdef RESTRICT_OrgApacheLuceneUtilAutomatonUTF32ToUTF8
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonUTF32ToUTF8 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonUTF32ToUTF8 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAutomatonUTF32ToUTF8

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilAutomatonUTF32ToUTF8_) && (INCLUDE_ALL_OrgApacheLuceneUtilAutomatonUTF32ToUTF8 || defined(INCLUDE_OrgApacheLuceneUtilAutomatonUTF32ToUTF8))
#define OrgApacheLuceneUtilAutomatonUTF32ToUTF8_

@class IOSIntArray;
@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilAutomatonAutomaton_Builder;

/*!
 @brief Converts UTF-32 automata to the equivalent UTF-8 representation.
 */
@interface OrgApacheLuceneUtilAutomatonUTF32ToUTF8 : NSObject {
 @public
  OrgApacheLuceneUtilAutomatonAutomaton_Builder *utf8_;
}
@property (class, strong) IOSIntArray *MASKS NS_SWIFT_NAME(MASKS);

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype __nonnull)init;

/*!
 @brief Converts an incoming utf32 automaton to an equivalent
   utf8 one.The incoming automaton need not be
   deterministic.
 Note that the returned automaton will
   not in general be deterministic, so you must
   determinize it if that's needed.
 */
- (OrgApacheLuceneUtilAutomatonAutomaton *)convertWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)utf32;

#pragma mark Package-Private

- (void)convertOneEdgeWithInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)startCodePoint
                      withInt:(jint)endCodePoint;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilAutomatonUTF32ToUTF8)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, utf8_, OrgApacheLuceneUtilAutomatonAutomaton_Builder *)

inline IOSIntArray *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_get_MASKS(void);
inline IOSIntArray *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_set_MASKS(IOSIntArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, MASKS, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *create_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonUTF32ToUTF8")
