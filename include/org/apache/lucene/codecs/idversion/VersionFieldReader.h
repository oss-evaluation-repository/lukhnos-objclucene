//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/VersionFieldReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionFieldReader")
#ifdef RESTRICT_OrgApacheLuceneCodecsIdversionVersionFieldReader
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionFieldReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionFieldReader 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsIdversionVersionFieldReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsIdversionVersionFieldReader_) && (INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionFieldReader || defined(INCLUDE_OrgApacheLuceneCodecsIdversionVersionFieldReader))
#define OrgApacheLuceneCodecsIdversionVersionFieldReader_

#define RESTRICT_OrgApacheLuceneIndexTerms 1
#define INCLUDE_OrgApacheLuceneIndexTerms 1
#include "org/apache/lucene/index/Terms.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstFST;
@class OrgApacheLuceneUtilFstPairOutputs_Pair;
@protocol JavaUtilCollection;

/*!
 @brief BlockTree's implementation of <code>Terms</code>.
 */
@interface OrgApacheLuceneCodecsIdversionVersionFieldReader : OrgApacheLuceneIndexTerms < OrgApacheLuceneUtilAccountable > {
 @public
  jlong numTerms_;
  OrgApacheLuceneIndexFieldInfo *fieldInfo_;
  jlong sumTotalTermFreq_;
  jlong sumDocFreq_;
  jint docCount_;
  jlong indexStartFP_;
  jlong rootBlockFP_;
  OrgApacheLuceneUtilFstPairOutputs_Pair *rootCode_;
  OrgApacheLuceneUtilBytesRef *minTerm_;
  OrgApacheLuceneUtilBytesRef *maxTerm_;
  jint longsSize_;
  OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *parent_;
  OrgApacheLuceneUtilFstFST *index_;
}

#pragma mark Public

- (id<JavaUtilCollection>)getChildResources;

- (jint)getDocCount;

- (OrgApacheLuceneUtilBytesRef *)getMax;

- (OrgApacheLuceneUtilBytesRef *)getMin;

- (jlong)getSumDocFreq;

- (jlong)getSumTotalTermFreq;

- (jboolean)hasFreqs;

- (jboolean)hasOffsets;

- (jboolean)hasPayloads;

- (jboolean)hasPositions;

- (OrgApacheLuceneIndexTermsEnum *)iterator;

- (jlong)ramBytesUsed;

- (jlong)size;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader:(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *)parent
                                                                        withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                                                                                 withLong:(jlong)numTerms
                                                               withOrgApacheLuceneUtilFstPairOutputs_Pair:(OrgApacheLuceneUtilFstPairOutputs_Pair *)rootCode
                                                                                                 withLong:(jlong)sumTotalTermFreq
                                                                                                 withLong:(jlong)sumDocFreq
                                                                                                  withInt:(jint)docCount
                                                                                                 withLong:(jlong)indexStartFP
                                                                                                  withInt:(jint)longsSize
                                                                       withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)indexIn
                                                                          withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)minTerm
                                                                          withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)maxTerm;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsIdversionVersionFieldReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionFieldReader, fieldInfo_, OrgApacheLuceneIndexFieldInfo *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionFieldReader, rootCode_, OrgApacheLuceneUtilFstPairOutputs_Pair *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionFieldReader, minTerm_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionFieldReader, maxTerm_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionFieldReader, parent_, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionFieldReader, index_, OrgApacheLuceneUtilFstFST *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionVersionFieldReader_initPackagePrivateWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilFstPairOutputs_Pair_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsIdversionVersionFieldReader *self, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *parent, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong numTerms, OrgApacheLuceneUtilFstPairOutputs_Pair *rootCode, jlong sumTotalTermFreq, jlong sumDocFreq, jint docCount, jlong indexStartFP, jint longsSize, OrgApacheLuceneStoreIndexInput *indexIn, OrgApacheLuceneUtilBytesRef *minTerm, OrgApacheLuceneUtilBytesRef *maxTerm);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionVersionFieldReader *new_OrgApacheLuceneCodecsIdversionVersionFieldReader_initPackagePrivateWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilFstPairOutputs_Pair_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *parent, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong numTerms, OrgApacheLuceneUtilFstPairOutputs_Pair *rootCode, jlong sumTotalTermFreq, jlong sumDocFreq, jint docCount, jlong indexStartFP, jint longsSize, OrgApacheLuceneStoreIndexInput *indexIn, OrgApacheLuceneUtilBytesRef *minTerm, OrgApacheLuceneUtilBytesRef *maxTerm) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionVersionFieldReader *create_OrgApacheLuceneCodecsIdversionVersionFieldReader_initPackagePrivateWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilFstPairOutputs_Pair_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *parent, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong numTerms, OrgApacheLuceneUtilFstPairOutputs_Pair *rootCode, jlong sumTotalTermFreq, jlong sumDocFreq, jint docCount, jlong indexStartFP, jint longsSize, OrgApacheLuceneStoreIndexInput *indexIn, OrgApacheLuceneUtilBytesRef *minTerm, OrgApacheLuceneUtilBytesRef *maxTerm);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsIdversionVersionFieldReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionFieldReader")
