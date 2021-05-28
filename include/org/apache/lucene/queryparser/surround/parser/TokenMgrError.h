//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/parser/TokenMgrError.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserTokenMgrError")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundParserTokenMgrError
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserTokenMgrError 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserTokenMgrError 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundParserTokenMgrError

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserSurroundParserTokenMgrError_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserTokenMgrError || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundParserTokenMgrError))
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_

#define RESTRICT_JavaLangError 1
#define INCLUDE_JavaLangError 1
#include "java/lang/Error.h"

@class JavaLangThrowable;

/*!
 @brief Token Manager Error.
 */
@interface OrgApacheLuceneQueryparserSurroundParserTokenMgrError : JavaLangError {
 @public
  /*!
   @brief Indicates the reason why the exception is thrown.It will have
  one of the above 4 values.
   */
  jint errorCode_;
}
@property (readonly, class) jint LEXICAL_ERROR NS_SWIFT_NAME(LEXICAL_ERROR);
@property (readonly, class) jint STATIC_LEXER_ERROR NS_SWIFT_NAME(STATIC_LEXER_ERROR);
@property (readonly, class) jint INVALID_LEXICAL_STATE NS_SWIFT_NAME(INVALID_LEXICAL_STATE);
@property (readonly, class) jint LOOP_DETECTED NS_SWIFT_NAME(LOOP_DETECTED);

#pragma mark Public

/*!
 @brief No arg constructor.
 */
- (instancetype __nonnull)init;

/*!
 @brief Full Constructor.
 */
- (instancetype __nonnull)initWithBoolean:(jboolean)EOFSeen
                                  withInt:(jint)lexState
                                  withInt:(jint)errorLine
                                  withInt:(jint)errorColumn
                             withNSString:(NSString *)errorAfter
                                 withChar:(jchar)curChar
                                  withInt:(jint)reason;

/*!
 @brief Constructor with message and reason.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)message
                                   withInt:(jint)reason;

/*!
 @brief You can also modify the body of this method to customize your error messages.
 For example, cases like LOOP_DETECTED and INVALID_LEXICAL_STATE are not
  of end-users concern, so you can return something like :
      "Internal Error : Please file a bug report .... "
  from this method for such cases in the release version of your parser.
 */
- (NSString *)getMessage;

#pragma mark Protected

/*!
 @brief Replaces unprintable characters by their escaped (or unicode escaped)
  equivalents in the given string
 */
+ (NSString *)addEscapesWithNSString:(NSString *)str;

/*!
 @brief Returns a detailed message for the Error when it is thrown by the
  token manager to indicate a lexical error.
 Parameters :
     EOFSeen     : indicates if EOF caused the lexical error
     curLexState : lexical state in which this error occurred
     errorLine   : line number when the error occurred
     errorColumn : column number when the error occurred
     errorAfter  : prefix that was seen before this error occurred
     curchar     : the offending character
  Note: You can customize the lexical error message by modifying this method.
 */
+ (NSString *)LexicalErrorWithBoolean:(jboolean)EOFSeen
                              withInt:(jint)lexState
                              withInt:(jint)errorLine
                              withInt:(jint)errorColumn
                         withNSString:(NSString *)errorAfter
                             withChar:(jchar)curChar;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundParserTokenMgrError)

/*!
 @brief Lexical error occurred.
 */
inline jint OrgApacheLuceneQueryparserSurroundParserTokenMgrError_get_LEXICAL_ERROR(void);
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LEXICAL_ERROR 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, LEXICAL_ERROR, jint)

/*!
 @brief An attempt was made to create a second instance of a static token manager.
 */
inline jint OrgApacheLuceneQueryparserSurroundParserTokenMgrError_get_STATIC_LEXER_ERROR(void);
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_STATIC_LEXER_ERROR 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, STATIC_LEXER_ERROR, jint)

/*!
 @brief Tried to change to an invalid lexical state.
 */
inline jint OrgApacheLuceneQueryparserSurroundParserTokenMgrError_get_INVALID_LEXICAL_STATE(void);
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INVALID_LEXICAL_STATE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, INVALID_LEXICAL_STATE, jint)

/*!
 @brief Detected (and bailed out of) an infinite loop in the token manager.
 */
inline jint OrgApacheLuceneQueryparserSurroundParserTokenMgrError_get_LOOP_DETECTED(void);
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LOOP_DETECTED 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, LOOP_DETECTED, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserSurroundParserTokenMgrError_addEscapesWithNSString_(NSString *str);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *create_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self, NSString *message, jint reason);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *create_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self, jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *create_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundParserTokenMgrError)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserTokenMgrError")
