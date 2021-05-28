//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ReaderManager.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/ReaderManager.h"
#include "org/apache/lucene/search/ReferenceManager.h"
#include "org/apache/lucene/store/Directory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/ReaderManager must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation OrgApacheLuceneIndexReaderManager

- (instancetype)initWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                            withBoolean:(jboolean)applyAllDeletes {
  OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_(self, writer, applyAllDeletes);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir {
  OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneStoreDirectory_(self, dir);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)reader {
  OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneIndexDirectoryReader_(self, reader);
  return self;
}

- (void)decRefWithId:(OrgApacheLuceneIndexDirectoryReader *)reference {
  [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(reference)) decRef];
}

- (OrgApacheLuceneIndexDirectoryReader *)refreshIfNeededWithId:(OrgApacheLuceneIndexDirectoryReader *)referenceToRefresh {
  return OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_(referenceToRefresh);
}

- (jboolean)tryIncRefWithId:(OrgApacheLuceneIndexDirectoryReader *)reference {
  return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(reference)) tryIncRef];
}

- (jint)getRefCountWithId:(OrgApacheLuceneIndexDirectoryReader *)reference {
  return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(reference)) getRefCount];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 3, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDirectoryReader;", 0x4, 5, 3, 1, -1, -1, -1 },
    { NULL, "Z", 0x4, 6, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 7, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexWriter:withBoolean:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreDirectory:);
  methods[2].selector = @selector(initWithOrgApacheLuceneIndexDirectoryReader:);
  methods[3].selector = @selector(decRefWithId:);
  methods[4].selector = @selector(refreshIfNeededWithId:);
  methods[5].selector = @selector(tryIncRefWithId:);
  methods[6].selector = @selector(getRefCountWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexWriter;Z", "LJavaIoIOException;", "LOrgApacheLuceneStoreDirectory;", "LOrgApacheLuceneIndexDirectoryReader;", "decRef", "refreshIfNeeded", "tryIncRef", "getRefCount", "Lorg/apache/lucene/search/ReferenceManager<Lorg/apache/lucene/index/DirectoryReader;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexReaderManager = { "ReaderManager", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x11, 7, 0, -1, -1, -1, 8, -1 };
  return &_OrgApacheLuceneIndexReaderManager;
}

@end

void OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_(OrgApacheLuceneIndexReaderManager *self, OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes) {
  OrgApacheLuceneSearchReferenceManager_init(self);
  JreVolatileStrongAssign(&self->current_, OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneIndexIndexWriter_withBoolean_(writer, applyAllDeletes));
}

OrgApacheLuceneIndexReaderManager *new_OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexReaderManager, initWithOrgApacheLuceneIndexIndexWriter_withBoolean_, writer, applyAllDeletes)
}

OrgApacheLuceneIndexReaderManager *create_OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexReaderManager, initWithOrgApacheLuceneIndexIndexWriter_withBoolean_, writer, applyAllDeletes)
}

void OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneIndexReaderManager *self, OrgApacheLuceneStoreDirectory *dir) {
  OrgApacheLuceneSearchReferenceManager_init(self);
  JreVolatileStrongAssign(&self->current_, OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneStoreDirectory_(dir));
}

OrgApacheLuceneIndexReaderManager *new_OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexReaderManager, initWithOrgApacheLuceneStoreDirectory_, dir)
}

OrgApacheLuceneIndexReaderManager *create_OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexReaderManager, initWithOrgApacheLuceneStoreDirectory_, dir)
}

void OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexReaderManager *self, OrgApacheLuceneIndexDirectoryReader *reader) {
  OrgApacheLuceneSearchReferenceManager_init(self);
  JreVolatileStrongAssign(&self->current_, reader);
}

OrgApacheLuceneIndexReaderManager *new_OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexDirectoryReader *reader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexReaderManager, initWithOrgApacheLuceneIndexDirectoryReader_, reader)
}

OrgApacheLuceneIndexReaderManager *create_OrgApacheLuceneIndexReaderManager_initWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexDirectoryReader *reader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexReaderManager, initWithOrgApacheLuceneIndexDirectoryReader_, reader)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexReaderManager)
