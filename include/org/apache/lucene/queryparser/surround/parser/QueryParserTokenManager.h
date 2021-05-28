//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/parser/QueryParserTokenManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager))
#define OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_

#define RESTRICT_OrgApacheLuceneQueryparserSurroundParserQueryParserConstants 1
#define INCLUDE_OrgApacheLuceneQueryparserSurroundParserQueryParserConstants 1
#include "org/apache/lucene/queryparser/surround/parser/QueryParserConstants.h"

@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneQueryparserSurroundParserToken;
@protocol OrgApacheLuceneQueryparserSurroundParserCharStream;

/*!
 @brief Token Manager.
 */
@interface OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager : NSObject < OrgApacheLuceneQueryparserSurroundParserQueryParserConstants > {
 @public
  id<OrgApacheLuceneQueryparserSurroundParserCharStream> input_stream_;
  jchar curChar_;
  jint curLexState_;
  jint defaultLexState_;
  jint jjnewStateCnt_;
  jint jjround_;
  jint jjmatchedPos_;
  jint jjmatchedKind_;
}
@property (readonly, class, strong) IOSLongArray *jjbitVec0 NS_SWIFT_NAME(jjbitVec0);
@property (readonly, class, strong) IOSLongArray *jjbitVec2 NS_SWIFT_NAME(jjbitVec2);
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
- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserSurroundParserCharStream:(id<OrgApacheLuceneQueryparserSurroundParserCharStream>)stream;

/*!
 @brief Constructor.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserSurroundParserCharStream:(id<OrgApacheLuceneQueryparserSurroundParserCharStream>)stream
                                                                             withInt:(jint)lexState;

/*!
 @brief Get the next Token.
 */
- (OrgApacheLuceneQueryparserSurroundParserToken *)getNextToken;

/*!
 @brief Reinitialise parser.
 */
- (void)ReInitWithOrgApacheLuceneQueryparserSurroundParserCharStream:(id<OrgApacheLuceneQueryparserSurroundParserCharStream>)stream;

/*!
 @brief Reinitialise parser.
 */
- (void)ReInitWithOrgApacheLuceneQueryparserSurroundParserCharStream:(id<OrgApacheLuceneQueryparserSurroundParserCharStream>)stream
                                                             withInt:(jint)lexState;

/*!
 @brief Switch to specified lex state.
 */
- (void)SwitchToWithInt:(jint)lexState;

#pragma mark Protected

- (OrgApacheLuceneQueryparserSurroundParserToken *)jjFillToken;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, input_stream_, id<OrgApacheLuceneQueryparserSurroundParserCharStream>)

inline IOSLongArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_get_jjbitVec0(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_jjbitVec0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, jjbitVec0, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_get_jjbitVec2(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_jjbitVec2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, jjbitVec2, IOSLongArray *)

inline IOSIntArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_get_jjnextStates(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_jjnextStates;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, jjnextStates, IOSIntArray *)

/*!
 @brief Token literal values.
 */
inline IOSObjectArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_get_jjstrLiteralImages(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_jjstrLiteralImages;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, jjstrLiteralImages, IOSObjectArray *)

/*!
 @brief Lexer state names.
 */
inline IOSObjectArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_get_lexStateNames(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_lexStateNames;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, lexStateNames, IOSObjectArray *)

/*!
 @brief Lex State array.
 */
inline IOSIntArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_get_jjnewLexState(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_jjnewLexState;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, jjnewLexState, IOSIntArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_get_jjtoToken(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_jjtoToken;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, jjtoToken, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_get_jjtoSkip(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_jjtoSkip;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager, jjtoSkip, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_initWithOrgApacheLuceneQueryparserSurroundParserCharStream_(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *self, id<OrgApacheLuceneQueryparserSurroundParserCharStream> stream);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *new_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_initWithOrgApacheLuceneQueryparserSurroundParserCharStream_(id<OrgApacheLuceneQueryparserSurroundParserCharStream> stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *create_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_initWithOrgApacheLuceneQueryparserSurroundParserCharStream_(id<OrgApacheLuceneQueryparserSurroundParserCharStream> stream);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_initWithOrgApacheLuceneQueryparserSurroundParserCharStream_withInt_(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *self, id<OrgApacheLuceneQueryparserSurroundParserCharStream> stream, jint lexState);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *new_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_initWithOrgApacheLuceneQueryparserSurroundParserCharStream_withInt_(id<OrgApacheLuceneQueryparserSurroundParserCharStream> stream, jint lexState) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager *create_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager_initWithOrgApacheLuceneQueryparserSurroundParserCharStream_withInt_(id<OrgApacheLuceneQueryparserSurroundParserCharStream> stream, jint lexState);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundParserQueryParserTokenManager")
