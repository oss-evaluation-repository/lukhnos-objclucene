//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/PositionLengthAttributeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl || defined(INCLUDE_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl))
#define OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_

#define RESTRICT_OrgApacheLuceneUtilAttributeImpl 1
#define INCLUDE_OrgApacheLuceneUtilAttributeImpl 1
#include "org/apache/lucene/util/AttributeImpl.h"

#define RESTRICT_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute 1
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"

@protocol OrgApacheLuceneUtilAttributeReflector;

/*!
 @brief Default implementation of <code>PositionLengthAttribute</code>.
 */
@interface OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl : OrgApacheLuceneUtilAttributeImpl < OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute, NSCopying >

#pragma mark Public

/*!
 @brief Initializes this attribute with position length of 1.
 */
- (instancetype __nonnull)init;

- (void)clear;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)other;

- (jint)getPositionLength;

- (NSUInteger)hash;

- (OrgApacheLuceneUtilAttributeImpl *)java_clone;

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector;

- (void)setPositionLengthWithInt:(jint)positionLength;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl")
