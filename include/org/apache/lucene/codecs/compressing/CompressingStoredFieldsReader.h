//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressingStoredFieldsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader")
#ifdef RESTRICT_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader
#define INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_) && (INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader || defined(INCLUDE_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader))
#define OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_

#define RESTRICT_OrgApacheLuceneCodecsStoredFieldsReader 1
#define INCLUDE_OrgApacheLuceneCodecsStoredFieldsReader 1
#include "org/apache/lucene/codecs/StoredFieldsReader.h"

@class OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader;
@class OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument;
@class OrgApacheLuceneCodecsCompressingCompressionMode;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaUtilCollection;

/*!
 @brief <code>StoredFieldsReader</code> impl for <code>CompressingStoredFieldsFormat</code>.
 */
@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader : OrgApacheLuceneCodecsStoredFieldsReader

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                            withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                   withNSString:(NSString *)segmentSuffix
                             withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fn
                              withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context
                                                   withNSString:(NSString *)formatName
            withOrgApacheLuceneCodecsCompressingCompressionMode:(OrgApacheLuceneCodecsCompressingCompressionMode *)compressionMode;

- (void)checkIntegrity;

- (OrgApacheLuceneCodecsStoredFieldsReader *)java_clone;

/*!
 @brief Close the underlying <code>IndexInput</code>s.
 */
- (void)close;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneCodecsStoredFieldsReader *)getMergeInstance;

- (jlong)ramBytesUsed;

- (NSString *)description;

- (void)visitDocumentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

#pragma mark Package-Private

- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument *)documentWithInt:(jint)docID;

- (jint)getChunkSize;

- (OrgApacheLuceneCodecsCompressingCompressionMode *)getCompressionMode;

- (OrgApacheLuceneStoreIndexInput *)getFieldsStream;

- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)getIndexReader;

- (jlong)getMaxPointer;

- (jlong)getNumChunks;

- (jlong)getNumDirtyChunks;

- (jint)getPackedIntsVersion;

- (jint)getVersion;

/*!
 @brief Reads a long in a variable-length format.Reads between one and
  nine bytes.
 Small values typically take fewer bytes.
 */
+ (jlong)readTLongWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

/*!
 @brief Reads a double in a variable-length format.Reads between one and
  nine bytes.
 Small integral values typically take fewer bytes.
 */
+ (jdouble)readZDoubleWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

/*!
 @brief Reads a float in a variable-length format.Reads between one and
  five bytes.
 Small integral values typically take fewer bytes.
 */
+ (jfloat)readZFloatWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneIndexFieldInfos *fn, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode);

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneIndexFieldInfos *fn, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *create_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneIndexFieldInfos *fn, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode);

FOUNDATION_EXPORT jfloat OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZFloatWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

FOUNDATION_EXPORT jdouble OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZDoubleWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readTLongWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader)

#endif

#if !defined (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument_) && (INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader || defined(INCLUDE_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument))
#define OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument_

@class OrgApacheLuceneStoreDataInput;

/*!
 @brief A serialized document, you need to decode its input in order to get an actual 
 <code>Document</code>.
 */
@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument : NSObject {
 @public
  OrgApacheLuceneStoreDataInput *in_;
  jint length_;
  jint numStoredFields_;
}

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument, in_, OrgApacheLuceneStoreDataInput *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader")
