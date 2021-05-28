//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene53/Lucene53NormsProducer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer")
#ifdef RESTRICT_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer || defined(INCLUDE_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer))
#define OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_

#define RESTRICT_OrgApacheLuceneCodecsNormsProducer 1
#define INCLUDE_OrgApacheLuceneCodecsNormsProducer 1
#include "org/apache/lucene/codecs/NormsProducer.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSegmentReadState;
@protocol JavaUtilCollection;

/*!
 @brief Reader for <code>Lucene53NormsFormat</code>
 */
@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer : OrgApacheLuceneCodecsNormsProducer

#pragma mark Public

- (void)checkIntegrity;

- (void)close;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneIndexNumericDocValues *)getNormsWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state
                                                                        withNSString:(NSString *)dataCodec
                                                                        withNSString:(NSString *)dataExtension
                                                                        withNSString:(NSString *)metaCodec
                                                                        withNSString:(NSString *)metaExtension;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initPackagePrivateWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *self, OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initPackagePrivateWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *create_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initPackagePrivateWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer)

#endif

#if !defined (OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer || defined(INCLUDE_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry))
#define OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry : NSObject {
 @public
  jbyte bytesPerValue_;
  jlong offset_;
}

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *create_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer")
