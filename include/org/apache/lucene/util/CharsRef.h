//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/CharsRef.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilCharsRef")
#ifdef RESTRICT_OrgApacheLuceneUtilCharsRef
#define INCLUDE_ALL_OrgApacheLuceneUtilCharsRef 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilCharsRef 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilCharsRef

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilCharsRef_) && (INCLUDE_ALL_OrgApacheLuceneUtilCharsRef || defined(INCLUDE_OrgApacheLuceneUtilCharsRef))
#define OrgApacheLuceneUtilCharsRef_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

#define RESTRICT_JavaLangCharSequence 1
#define INCLUDE_JavaLangCharSequence 1
#include "java/lang/CharSequence.h"

@class IOSCharArray;
@protocol JavaUtilComparator;
@protocol JavaUtilStreamIntStream;

/*!
 @brief Represents char[], as a slice (offset + length) into an existing char[].
 The <code>chars</code> member should never be null; use 
 <code>EMPTY_CHARS</code> if necessary.
 */
@interface OrgApacheLuceneUtilCharsRef : NSObject < JavaLangComparable, JavaLangCharSequence, NSCopying > {
 @public
  /*!
   @brief The contents of the CharsRef.Should never be <code>null</code>.
   */
  IOSCharArray *chars_;
  /*!
   @brief Offset of first valid character.
   */
  jint offset_;
  /*!
   @brief Length of used characters.
   */
  jint length_;
}
@property (readonly, class, strong) IOSCharArray *EMPTY_CHARS NS_SWIFT_NAME(EMPTY_CHARS);

#pragma mark Public

/*!
 @brief Creates a new <code>CharsRef</code> initialized an empty array zero-length
 */
- (instancetype __nonnull)init;

/*!
 @brief Creates a new <code>CharsRef</code> initialized with the given array, offset and
  length
 */
- (instancetype __nonnull)initWithCharArray:(IOSCharArray *)chars
                                    withInt:(jint)offset
                                    withInt:(jint)length;

/*!
 @brief Creates a new <code>CharsRef</code> initialized with an array of the given
  capacity
 */
- (instancetype __nonnull)initWithInt:(jint)capacity;

/*!
 @brief Creates a new <code>CharsRef</code> initialized with the given Strings character
  array
 */
- (instancetype __nonnull)initWithNSString:(NSString *)string;

- (jchar)charAtWithInt:(jint)index;

- (jboolean)charsEqualsWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)other;

/*!
 @brief Returns a shallow clone of this instance (the underlying characters are 
 <b>not</b> copied and will be shared by both the returned object and this
  object.
 - seealso: #deepCopyOf
 */
- (OrgApacheLuceneUtilCharsRef *)java_clone;

/*!
 @brief Signed int order comparison
 */
- (jint)compareToWithId:(OrgApacheLuceneUtilCharsRef *)other;

/*!
 @brief Creates a new CharsRef that points to a copy of the chars from  
 <code>other</code>
 <p>
  The returned CharsRef will have a length of other.length
  and an offset of zero.
 */
+ (OrgApacheLuceneUtilCharsRef *)deepCopyOfWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)other;

- (jboolean)isEqual:(id)other;

/*!
 */
+ (id<JavaUtilComparator>)getUTF16SortedAsUTF8Comparator;

- (NSUInteger)hash;

/*!
 @brief Performs internal consistency checks.
 Always returns true (or throws IllegalStateException)
 */
- (jboolean)isValid;

- (jint)java_length;

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilCharsRef)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCharsRef, chars_, IOSCharArray *)

/*!
 @brief An empty character array for convenience
 */
inline IOSCharArray *OrgApacheLuceneUtilCharsRef_get_EMPTY_CHARS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSCharArray *OrgApacheLuceneUtilCharsRef_EMPTY_CHARS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilCharsRef, EMPTY_CHARS, IOSCharArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_init(OrgApacheLuceneUtilCharsRef *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_initWithInt_(OrgApacheLuceneUtilCharsRef *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithInt_(jint capacity);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(OrgApacheLuceneUtilCharsRef *self, IOSCharArray *chars, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(IOSCharArray *chars, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(IOSCharArray *chars, jint offset, jint length);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_initWithNSString_(OrgApacheLuceneUtilCharsRef *self, NSString *string);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithNSString_(NSString *string) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithNSString_(NSString *string);

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneUtilCharsRef_getUTF16SortedAsUTF8Comparator(void);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *OrgApacheLuceneUtilCharsRef_deepCopyOfWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilCharsRef *other);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCharsRef)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilCharsRef")
