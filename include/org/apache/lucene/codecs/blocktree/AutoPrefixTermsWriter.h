//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter")
#ifdef RESTRICT_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_) && (INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter || defined(INCLUDE_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter))
#define OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_

@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilList;

/*!
 @brief Used in the first pass when writing a segment to locate
   "appropriate" auto-prefix terms to pre-compile into the index.
 This visits every term in the index to find prefixes that
   match >= min and <= max number of terms.
 */
@interface OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter : NSObject {
 @public
  id<JavaUtilList> prefixes_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                                                  withInt:(jint)minItemsInPrefix
                                                                  withInt:(jint)maxItemsInPrefix;

#pragma mark Package-Private

+ (NSString *)brToStringWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b;

- (void)savePrefixesWithInt:(jint)prefixLength
                    withInt:(jint)count;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter, prefixes_, id<JavaUtilList>)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_brToStringWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *b);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_initPackagePrivateWithOrgApacheLuceneIndexTerms_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *self, OrgApacheLuceneIndexTerms *terms, jint minItemsInPrefix, jint maxItemsInPrefix);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *new_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_initPackagePrivateWithOrgApacheLuceneIndexTerms_withInt_withInt_(OrgApacheLuceneIndexTerms *terms, jint minItemsInPrefix, jint maxItemsInPrefix) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *create_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_initPackagePrivateWithOrgApacheLuceneIndexTerms_withInt_withInt_(OrgApacheLuceneIndexTerms *terms, jint minItemsInPrefix, jint maxItemsInPrefix);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter)

#endif

#if !defined (OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_) && (INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter || defined(INCLUDE_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm))
#define OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

@class IOSByteArray;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Describes a range of term-space to match, either a simple prefix
   (foo*) or a floor-block range of a prefix (e.g.foo[a-m]*,
   foo[n-z]*) when there are too many terms starting with foo*.
 */
@interface OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm : NSObject < JavaLangComparable > {
 @public
  /*!
   @brief Common prefix
   */
  IOSByteArray *prefix_;
  /*!
   @brief If this is -2, this is a normal prefix (foo *), else it's the minimum lead byte of the suffix (e.g.'
   d' in foo[d-m]*).
   */
  jint floorLeadStart_;
  /*!
   @brief The lead byte (inclusive) of the suffix for the term range we match (e.g.'
   m' in foo[d-m*]); this is ignored when
   floorLeadStart is -2.
   */
  jint floorLeadEnd_;
  OrgApacheLuceneUtilBytesRef *term_;
}

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)prefix
                                    withInt:(jint)floorLeadStart
                                    withInt:(jint)floorLeadEnd;

- (jint)compareToWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

- (jint)compareToWithId:(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *)other;

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)inArg;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm, prefix_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm, term_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initWithByteArray_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *self, IOSByteArray *prefix, jint floorLeadStart, jint floorLeadEnd);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *new_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initWithByteArray_withInt_withInt_(IOSByteArray *prefix, jint floorLeadStart, jint floorLeadEnd) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *create_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initWithByteArray_withInt_withInt_(IOSByteArray *prefix, jint floorLeadStart, jint floorLeadEnd);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter")
