//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RAMFile.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreRAMFile")
#ifdef RESTRICT_OrgApacheLuceneStoreRAMFile
#define INCLUDE_ALL_OrgApacheLuceneStoreRAMFile 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreRAMFile 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreRAMFile

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneStoreRAMFile_) && (INCLUDE_ALL_OrgApacheLuceneStoreRAMFile || defined(INCLUDE_OrgApacheLuceneStoreRAMFile))
#define OrgApacheLuceneStoreRAMFile_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSByteArray;
@class JavaUtilArrayList;
@class OrgApacheLuceneStoreRAMDirectory;
@protocol JavaUtilCollection;

/*!
 @brief Represents a file in RAM as a list of byte[] buffers.
 */
@interface OrgApacheLuceneStoreRAMFile : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  JavaUtilArrayList *buffers_;
  jlong length_;
  OrgApacheLuceneStoreRAMDirectory *directory_;
  jlong sizeInBytes_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (jboolean)isEqual:(id)obj;

- (id<JavaUtilCollection>)getChildResources;

- (jlong)getLength;

- (NSUInteger)hash;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Protected

- (IOSByteArray *)addBufferWithInt:(jint)size;

- (IOSByteArray *)getBufferWithInt:(jint)index;

/*!
 @brief Expert: allocate a new buffer.
 Subclasses can allocate differently.
 @param size size of allocated buffer.
 @return allocated buffer.
 */
- (IOSByteArray *)newBufferWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

- (jint)numBuffers;

- (void)setLengthWithLong:(jlong)length;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneStoreRAMDirectory:(OrgApacheLuceneStoreRAMDirectory *)directory;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreRAMFile)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMFile, buffers_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMFile, directory_, OrgApacheLuceneStoreRAMDirectory *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreRAMFile_init(OrgApacheLuceneStoreRAMFile *self);

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMFile *new_OrgApacheLuceneStoreRAMFile_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMFile *create_OrgApacheLuceneStoreRAMFile_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(OrgApacheLuceneStoreRAMFile *self, OrgApacheLuceneStoreRAMDirectory *directory);

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMFile *new_OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(OrgApacheLuceneStoreRAMDirectory *directory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMFile *create_OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(OrgApacheLuceneStoreRAMDirectory *directory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreRAMFile)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreRAMFile")
