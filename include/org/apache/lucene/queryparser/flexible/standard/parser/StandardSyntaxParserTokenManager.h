//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/parser/StandardSyntaxParserTokenManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager))
#define OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserConstants 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserConstants 1
#include "org/apache/lucene/queryparser/flexible/standard/parser/StandardSyntaxParserConstants.h"

@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneQueryparserFlexibleStandardParserToken;
@protocol OrgApacheLuceneQueryparserFlexibleStandardParserCharStream;

/*!
 @brief Token Manager.
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager : NSObject < OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserConstants > {
 @public
  id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream> input_stream_;
  jchar curChar_;
  jint curLexState_;
  jint defaultLexState_;
  jint jjnewStateCnt_;
  jint jjround_;
  jint jjmatchedPos_;
  jint jjmatchedKind_;
}
@property (readonly, class, strong) IOSLongArray *jjbitVec0 NS_SWIFT_NAME(jjbitVec0);
@property (readonly, class, strong) IOSLongArray *jjbitVec1 NS_SWIFT_NAME(jjbitVec1);
@property (readonly, class, strong) IOSLongArray *jjbitVec3 NS_SWIFT_NAME(jjbitVec3);
@property (readonly, class, strong) IOSLongArray *jjbitVec4 NS_SWIFT_NAME(jjbitVec4);
@property (readonly, class, strong) IOSIntArray *jjnextStates NS_SWIFT_NAME(jjnextStates);
@property (readonly, class, strong) IOSObjectArray *jjstrLiteralImages NS_SWIFT_NAME(jjstrLiteralImages);
@property (readonly, class, strong) IOSObjectArray *lexStateNames NS_SWIFT_NAME(lexStateNames);
@property (readonly, class, strong) IOSIntArray *jjnewLexState NS_SWIFT_NAME(jjnewLexState);
@property (readonly, class, strong) IOSLongArray *jjtoToken NS_SWIFT_NAME(jjtoToken);
@property (readonly, class, strong) IOSLongArray *jjtoSkip NS_SWIFT_NAME(jjtoSkip);

#pragma mark Public

/*!
 @brief Constructor.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream:(id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream>)stream;

/*!
 @brief Constructor.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream:(id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream>)stream
                                                                                     withInt:(jint)lexState;

/*!
 @brief Get the next Token.
 */
- (OrgApacheLuceneQueryparserFlexibleStandardParserToken *)getNextToken;

/*!
 @brief Reinitialise parser.
 */
- (void)ReInitWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream:(id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream>)stream;

/*!
 @brief Reinitialise parser.
 */
- (void)ReInitWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream:(id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream>)stream
                                                                     withInt:(jint)lexState;

/*!
 @brief Switch to specified lex state.
 */
- (void)SwitchToWithInt:(jint)lexState;

#pragma mark Protected

- (OrgApacheLuceneQueryparserFlexibleStandardParserToken *)jjFillToken;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, input_stream_, id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream>)

inline IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjbitVec0(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjbitVec0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjbitVec0, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjbitVec1(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjbitVec1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjbitVec1, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjbitVec3(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjbitVec3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjbitVec3, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjbitVec4(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjbitVec4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjbitVec4, IOSLongArray *)

inline IOSIntArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjnextStates(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjnextStates;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjnextStates, IOSIntArray *)

/*!
 @brief Token literal values.
 */
inline IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjstrLiteralImages(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjstrLiteralImages;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjstrLiteralImages, IOSObjectArray *)

/*!
 @brief Lexer state names.
 */
inline IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_lexStateNames(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_lexStateNames;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, lexStateNames, IOSObjectArray *)

/*!
 @brief Lex State array.
 */
inline IOSIntArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjnewLexState(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjnewLexState;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjnewLexState, IOSIntArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjtoToken(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjtoToken;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjtoToken, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_get_jjtoSkip(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_jjtoSkip;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager, jjtoSkip, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_initWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream_(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager *self, id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream> stream);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager *new_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_initWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream_(id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream> stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager *create_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_initWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream_(id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream> stream);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_initWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream_withInt_(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager *self, id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream> stream, jint lexState);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager *new_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_initWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream_withInt_(id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream> stream, jint lexState) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager *create_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager_initWithOrgApacheLuceneQueryparserFlexibleStandardParserCharStream_withInt_(id<OrgApacheLuceneQueryparserFlexibleStandardParserCharStream> stream, jint lexState);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserStandardSyntaxParserTokenManager")
