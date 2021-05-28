//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/hyphenation/Hyphen.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphen")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCompoundHyphenationHyphen
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphen 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphen 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCompoundHyphenationHyphen

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCompoundHyphenationHyphen_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphen || defined(INCLUDE_OrgApacheLuceneAnalysisCompoundHyphenationHyphen))
#define OrgApacheLuceneAnalysisCompoundHyphenationHyphen_

/*!
 @brief This class represents a hyphen.A 'full' hyphen is made of 3 parts: the
  pre-break text, post-break text and no-break.
 If no line-break is generated
  at this position, the no-break text is used, otherwise, pre-break and
  post-break are used. Typically, pre-break is equal to the hyphen character
  and the others are empty. However, this general scheme allows support for
  cases in some languages where words change spelling if they're split across
  lines, like german's 'backen' which hyphenates 'bak-ken'. BTW, this comes
  from TeX. 
  This class has been taken from the Apache FOP project (http://xmlgraphics.apache.org/fop/). They have been slightly modified.
 */
@interface OrgApacheLuceneAnalysisCompoundHyphenationHyphen : NSObject {
 @public
  NSString *preBreak_;
  NSString *noBreak_;
  NSString *postBreak_;
}

#pragma mark Public

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)pre;

- (instancetype __nonnull)initWithNSString:(NSString *)pre
                              withNSString:(NSString *)no
                              withNSString:(NSString *)post;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundHyphenationHyphen)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphen, preBreak_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphen, noBreak_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphen, postBreak_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_withNSString_withNSString_(OrgApacheLuceneAnalysisCompoundHyphenationHyphen *self, NSString *pre, NSString *no, NSString *post);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphen *new_OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_withNSString_withNSString_(NSString *pre, NSString *no, NSString *post) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphen *create_OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_withNSString_withNSString_(NSString *pre, NSString *no, NSString *post);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_(OrgApacheLuceneAnalysisCompoundHyphenationHyphen *self, NSString *pre);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphen *new_OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_(NSString *pre) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphen *create_OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_(NSString *pre);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundHyphenationHyphen)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphen")
