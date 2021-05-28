//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/index/IndexSplitter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/System.h"
#include "java/text/DecimalFormat.h"
#include "java/text/DecimalFormatSymbols.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "org/apache/lucene/codecs/Codec.h"
#include "org/apache/lucene/index/IndexSplitter.h"
#include "org/apache/lucene/index/SegmentCommitInfo.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentInfos.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"
#include "org/lukhnos/portmobile/file/Paths.h"
#include "org/lukhnos/portmobile/file/StandardCopyOption.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/IndexSplitter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexIndexSplitter ()

- (jint)getIdxWithNSString:(NSString *)name;

- (OrgApacheLuceneIndexSegmentCommitInfo *)getInfoWithNSString:(NSString *)name;

@end

__attribute__((unused)) static jint OrgApacheLuceneIndexIndexSplitter_getIdxWithNSString_(OrgApacheLuceneIndexIndexSplitter *self, NSString *name);

__attribute__((unused)) static OrgApacheLuceneIndexSegmentCommitInfo *OrgApacheLuceneIndexIndexSplitter_getInfoWithNSString_(OrgApacheLuceneIndexIndexSplitter *self, NSString *name);

@implementation OrgApacheLuceneIndexIndexSplitter

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgApacheLuceneIndexIndexSplitter_mainWithNSStringArray_(args);
}

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)dir {
  OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(self, dir);
  return self;
}

- (void)listSegments {
  JavaTextDecimalFormat *formatter = create_JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(@"###,###.###", JavaTextDecimalFormatSymbols_getInstanceWithJavaUtilLocale_(JreLoadStatic(JavaUtilLocale, ROOT)));
  for (jint x = 0; x < [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos_)) size]; x++) {
    OrgApacheLuceneIndexSegmentCommitInfo *info = JreRetainedLocalValue([((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos_)) infoWithInt:x]);
    NSString *sizeStr = JreRetainedLocalValue([formatter formatWithLong:[((OrgApacheLuceneIndexSegmentCommitInfo *) nil_chk(info)) sizeInBytes]]);
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$C$", ((OrgApacheLuceneIndexSegmentInfo *) nil_chk(info->info_))->name_, ' ', sizeStr)];
  }
}

- (jint)getIdxWithNSString:(NSString *)name {
  return OrgApacheLuceneIndexIndexSplitter_getIdxWithNSString_(self, name);
}

- (OrgApacheLuceneIndexSegmentCommitInfo *)getInfoWithNSString:(NSString *)name {
  return OrgApacheLuceneIndexIndexSplitter_getInfoWithNSString_(self, name);
}

- (void)removeWithNSStringArray:(IOSObjectArray *)segs {
  {
    IOSObjectArray *a__ = segs;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *n = *b__++;
      jint idx = OrgApacheLuceneIndexIndexSplitter_getIdxWithNSString_(self, n);
      [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos_)) removeWithInt:idx];
    }
  }
  [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos_)) changed];
  [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos_)) commitWithOrgApacheLuceneStoreDirectory:fsDir_];
}

- (void)splitWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)destDir
                            withNSStringArray:(IOSObjectArray *)segs {
  OrgLukhnosPortmobileFileFiles_createDirectoriesWithOrgLukhnosPortmobileFilePath_(destDir);
  OrgApacheLuceneStoreFSDirectory *destFSDir = OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(destDir);
  OrgApacheLuceneIndexSegmentInfos *destInfos = create_OrgApacheLuceneIndexSegmentInfos_init();
  destInfos->counter_ = ((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos_))->counter_;
  {
    IOSObjectArray *a__ = segs;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *n = *b__++;
      OrgApacheLuceneIndexSegmentCommitInfo *infoPerCommit = OrgApacheLuceneIndexIndexSplitter_getInfoWithNSString_(self, n);
      OrgApacheLuceneIndexSegmentInfo *info = JreRetainedLocalValue(((OrgApacheLuceneIndexSegmentCommitInfo *) nil_chk(infoPerCommit))->info_);
      OrgApacheLuceneIndexSegmentInfo *newInfo = create_OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(destFSDir, [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(info)) getVersion], info->name_, [info maxDoc], [info getUseCompoundFile], [info getCodec], [info getDiagnostics], [info getId], create_JavaUtilHashMap_init());
      [destInfos addWithOrgApacheLuceneIndexSegmentCommitInfo:create_OrgApacheLuceneIndexSegmentCommitInfo_initWithOrgApacheLuceneIndexSegmentInfo_withInt_withLong_withLong_withLong_(newInfo, [infoPerCommit getDelCount], [infoPerCommit getDelGen], [infoPerCommit getFieldInfosGen], [infoPerCommit getDocValuesGen])];
      id<JavaUtilCollection> files = JreRetainedLocalValue([infoPerCommit files]);
      for (NSString * __strong srcName in nil_chk(files)) {
        OrgLukhnosPortmobileFilePath *srcFile = JreRetainedLocalValue([((OrgLukhnosPortmobileFilePath *) nil_chk(dir_)) resolveWithNSString:srcName]);
        OrgLukhnosPortmobileFilePath *destFile = JreRetainedLocalValue([((OrgLukhnosPortmobileFilePath *) nil_chk(destDir)) resolveWithNSString:srcName]);
        OrgLukhnosPortmobileFileFiles_copy__WithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardCopyOptionArray_(srcFile, destFile, [IOSObjectArray arrayWithLength:0 type:OrgLukhnosPortmobileFileStandardCopyOption_class_()]);
      }
    }
  }
  [destInfos changed];
  [destInfos commitWithOrgApacheLuceneStoreDirectory:destFSDir];
}

- (void)dealloc {
  RELEASE_(infos_);
  RELEASE_(fsDir_);
  RELEASE_(dir_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 4, -1, -1, -1 },
    { NULL, "I", 0x2, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexSegmentCommitInfo;", 0x2, 7, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 1, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(mainWithNSStringArray:);
  methods[1].selector = @selector(initWithOrgLukhnosPortmobileFilePath:);
  methods[2].selector = @selector(listSegments);
  methods[3].selector = @selector(getIdxWithNSString:);
  methods[4].selector = @selector(getInfoWithNSString:);
  methods[5].selector = @selector(removeWithNSStringArray:);
  methods[6].selector = @selector(splitWithOrgLukhnosPortmobileFilePath:withNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "infos_", "LOrgApacheLuceneIndexSegmentInfos;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "fsDir_", "LOrgApacheLuceneStoreFSDirectory;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "dir_", "LOrgLukhnosPortmobileFilePath;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "main", "[LNSString;", "LJavaLangException;", "LOrgLukhnosPortmobileFilePath;", "LJavaIoIOException;", "getIdx", "LNSString;", "getInfo", "remove", "split", "LOrgLukhnosPortmobileFilePath;[LNSString;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexSplitter = { "IndexSplitter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1, 7, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexIndexSplitter;
}

@end

void OrgApacheLuceneIndexIndexSplitter_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgApacheLuceneIndexIndexSplitter_initialize();
  if (((IOSObjectArray *) nil_chk(args))->size_ < 2) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Usage: IndexSplitter <srcDir> -l (list the segments and their sizes)"];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"IndexSplitter <srcDir> <destDir> <segments>+"];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"IndexSplitter <srcDir> -d (delete the following segments)"];
    return;
  }
  OrgLukhnosPortmobileFilePath *srcDir = OrgLukhnosPortmobileFilePaths_getWithNSString_(IOSObjectArray_Get(args, 0));
  OrgApacheLuceneIndexIndexSplitter *is = create_OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(srcDir);
  if (!OrgLukhnosPortmobileFileFiles_existsWithOrgLukhnosPortmobileFilePath_(srcDir)) {
    @throw create_JavaLangException_initWithNSString_(JreStrcat("$@$", @"srcdir:", [((OrgLukhnosPortmobileFilePath *) nil_chk(srcDir)) toAbsolutePath], @" doesn't exist"));
  }
  if ([((NSString *) nil_chk(IOSObjectArray_Get(args, 1))) isEqual:@"-l"]) {
    [is listSegments];
  }
  else if ([((NSString *) nil_chk(IOSObjectArray_Get(args, 1))) isEqual:@"-d"]) {
    id<JavaUtilList> segs = create_JavaUtilArrayList_init();
    for (jint x = 2; x < args->size_; x++) {
      [segs addWithId:IOSObjectArray_Get(args, x)];
    }
    [is removeWithNSStringArray:[segs toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]]];
  }
  else {
    OrgLukhnosPortmobileFilePath *targetDir = OrgLukhnosPortmobileFilePaths_getWithNSString_(IOSObjectArray_Get(args, 1));
    id<JavaUtilList> segs = create_JavaUtilArrayList_init();
    for (jint x = 2; x < args->size_; x++) {
      [segs addWithId:IOSObjectArray_Get(args, x)];
    }
    [is splitWithOrgLukhnosPortmobileFilePath:targetDir withNSStringArray:[segs toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]]];
  }
}

void OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(OrgApacheLuceneIndexIndexSplitter *self, OrgLukhnosPortmobileFilePath *dir) {
  NSObject_init(self);
  JreStrongAssign(&self->dir_, dir);
  JreStrongAssign(&self->fsDir_, OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(dir));
  JreStrongAssign(&self->infos_, OrgApacheLuceneIndexSegmentInfos_readLatestCommitWithOrgApacheLuceneStoreDirectory_(self->fsDir_));
}

OrgApacheLuceneIndexIndexSplitter *new_OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *dir) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexSplitter, initWithOrgLukhnosPortmobileFilePath_, dir)
}

OrgApacheLuceneIndexIndexSplitter *create_OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *dir) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexSplitter, initWithOrgLukhnosPortmobileFilePath_, dir)
}

jint OrgApacheLuceneIndexIndexSplitter_getIdxWithNSString_(OrgApacheLuceneIndexIndexSplitter *self, NSString *name) {
  for (jint x = 0; x < [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(self->infos_)) size]; x++) {
    if ([((NSString *) nil_chk(name)) isEqual:((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentCommitInfo *) nil_chk([((OrgApacheLuceneIndexSegmentInfos *) nil_chk(self->infos_)) infoWithInt:x]))->info_))->name_]) return x;
  }
  return -1;
}

OrgApacheLuceneIndexSegmentCommitInfo *OrgApacheLuceneIndexIndexSplitter_getInfoWithNSString_(OrgApacheLuceneIndexIndexSplitter *self, NSString *name) {
  for (jint x = 0; x < [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(self->infos_)) size]; x++) {
    if ([((NSString *) nil_chk(name)) isEqual:((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentCommitInfo *) nil_chk([((OrgApacheLuceneIndexSegmentInfos *) nil_chk(self->infos_)) infoWithInt:x]))->info_))->name_]) return [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(self->infos_)) infoWithInt:x];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexSplitter)
