//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50CompoundFormat.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Throwable.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/CompoundFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50CompoundFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50CompoundReader.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/lucene50/Lucene50CompoundFormat must not be compiled with ARC (-fobjc-arc)"
#endif

NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION = @"cfs";
NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION = @"cfe";
NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC = @"Lucene50CompoundData";
NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC = @"Lucene50CompoundEntries";

@implementation OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat

+ (NSString *)DATA_EXTENSION {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION;
}

+ (NSString *)ENTRIES_EXTENSION {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION;
}

+ (NSString *)DATA_CODEC {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC;
}

+ (NSString *)ENTRY_CODEC {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC;
}

+ (jint)VERSION_START {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_START;
}

+ (jint)VERSION_CURRENT {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneStoreDirectory *)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  return create_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initPackagePrivateWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(dir, si, context);
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  NSString *dataFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si))->name_, @"", OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION);
  NSString *entriesFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(si->name_, @"", OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION);
  {
    OrgApacheLuceneStoreIndexOutput *data = [((OrgApacheLuceneStoreDirectory *) nil_chk(dir)) createOutputWithNSString:dataFile withOrgApacheLuceneStoreIOContext:context];
    JavaLangThrowable *__primaryException2 = nil;
    @try {
      OrgApacheLuceneStoreIndexOutput *entries = [dir createOutputWithNSString:entriesFile withOrgApacheLuceneStoreIOContext:context];
      JavaLangThrowable *__primaryException1 = nil;
      @try {
        OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(data, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT, [si getId], @"");
        OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(entries, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT, [si getId], @"");
        [((OrgApacheLuceneStoreIndexOutput *) nil_chk(entries)) writeVIntWithInt:[((id<JavaUtilSet>) nil_chk([si files])) size]];
        for (NSString * __strong file in nil_chk([si files])) {
          jlong startOffset = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(data)) getFilePointer];
          {
            OrgApacheLuceneStoreIndexInput *in = [dir openInputWithNSString:file withOrgApacheLuceneStoreIOContext:JreLoadStatic(OrgApacheLuceneStoreIOContext, READONCE)];
            JavaLangThrowable *__primaryException1 = nil;
            @try {
              [data copyBytesWithOrgApacheLuceneStoreDataInput:in withLong:[((OrgApacheLuceneStoreIndexInput *) nil_chk(in)) length]];
            }
            @catch (JavaLangThrowable *e) {
              __primaryException1 = e;
              @throw e;
            }
            @finally {
              if (in != nil) {
                if (__primaryException1 != nil) {
                  @try {
                    [in close];
                  }
                  @catch (JavaLangThrowable *e) {
                    [__primaryException1 addSuppressedWithJavaLangThrowable:e];
                  }
                }
                else {
                  [in close];
                }
              }
            }
          }
          jlong endOffset = [data getFilePointer];
          jlong length = endOffset - startOffset;
          [entries writeStringWithNSString:OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(file)];
          [entries writeLongWithLong:startOffset];
          [entries writeLongWithLong:length];
        }
        OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(data);
        OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(entries);
      }
      @catch (JavaLangThrowable *e) {
        __primaryException1 = e;
        @throw e;
      }
      @finally {
        if (entries != nil) {
          if (__primaryException1 != nil) {
            @try {
              [entries close];
            }
            @catch (JavaLangThrowable *e) {
              [__primaryException1 addSuppressedWithJavaLangThrowable:e];
            }
          }
          else {
            [entries close];
          }
        }
      }
    }
    @catch (JavaLangThrowable *e) {
      __primaryException2 = e;
      @throw e;
    }
    @finally {
      if (data != nil) {
        if (__primaryException2 != nil) {
          @try {
            [data close];
          }
          @catch (JavaLangThrowable *e) {
            [__primaryException2 addSuppressedWithJavaLangThrowable:e];
          }
        }
        else {
          [data close];
        }
      }
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreDirectory;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getCompoundReaderWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneStoreIOContext:);
  methods[2].selector = @selector(writeWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneStoreIOContext:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DATA_EXTENSION", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 4, -1, -1 },
    { "ENTRIES_EXTENSION", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 5, -1, -1 },
    { "DATA_CODEC", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 6, -1, -1 },
    { "ENTRY_CODEC", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 7, -1, -1 },
    { "VERSION_START", "I", .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_START, 0x18, -1, -1, -1, -1 },
    { "VERSION_CURRENT", "I", .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getCompoundReader", "LOrgApacheLuceneStoreDirectory;LOrgApacheLuceneIndexSegmentInfo;LOrgApacheLuceneStoreIOContext;", "LJavaIoIOException;", "write", &OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION, &OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION, &OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC, &OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat = { "Lucene50CompoundFormat", "org.apache.lucene.codecs.lucene50", ptrTable, methods, fields, 7, 0x11, 3, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat;
}

@end

void OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *self) {
  OrgApacheLuceneCodecsCompoundFormat_init(self);
}

OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *new_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, init)
}

OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *create_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat)
