//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/BlockTreeTermsReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/codecs/PostingsReaderBase.h"
#include "org/apache/lucene/codecs/blocktree/BlockTreeTermsReader.h"
#include "org/apache/lucene/codecs/blocktree/FieldReader.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/Accountable.h"
#include "org/apache/lucene/util/Accountables.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/fst/ByteSequenceOutputs.h"
#include "org/apache/lucene/util/fst/Outputs.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/blocktree/BlockTreeTermsReader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader () {
 @public
  JavaUtilTreeMap *fields_;
  /*!
   @brief File offset where the directory starts in the terms file.
   */
  jlong dirOffset_;
  /*!
   @brief File offset where the directory starts in the index file.
   */
  jlong indexDirOffset_;
}

+ (OrgApacheLuceneUtilBytesRef *)readBytesRefWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg;

/*!
 @brief Seek <code>input</code> to the directory offset.
 */
- (void)seekDirWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input
                                         withLong:(jlong)dirOffset;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, fields_, JavaUtilTreeMap *)

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *inArg);

__attribute__((unused)) static void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_withLong_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *self, OrgApacheLuceneStoreIndexInput *input, jlong dirOffset);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader)

OrgApacheLuceneUtilFstOutputs *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS;
OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT;
NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_EXTENSION = @"tim";
NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_CODEC_NAME = @"BlockTreeTermsDict";
NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_EXTENSION = @"tip";
NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_CODEC_NAME = @"BlockTreeTermsIndex";

@implementation OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader

+ (OrgApacheLuceneUtilFstOutputs *)FST_OUTPUTS {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS;
}

+ (OrgApacheLuceneUtilBytesRef *)NO_OUTPUT {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT;
}

+ (jint)OUTPUT_FLAGS_NUM_BITS {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAGS_NUM_BITS;
}

+ (jint)OUTPUT_FLAGS_MASK {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAGS_MASK;
}

+ (jint)OUTPUT_FLAG_IS_FLOOR {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAG_IS_FLOOR;
}

+ (jint)OUTPUT_FLAG_HAS_TERMS {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAG_HAS_TERMS;
}

+ (NSString *)TERMS_EXTENSION {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_EXTENSION;
}

+ (NSString *)TERMS_CODEC_NAME {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_CODEC_NAME;
}

+ (jint)VERSION_START {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_START;
}

+ (jint)VERSION_AUTO_PREFIX_TERMS {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS;
}

+ (jint)VERSION_AUTO_PREFIX_TERMS_COND {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS_COND;
}

+ (jint)VERSION_CURRENT {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_CURRENT;
}

+ (NSString *)TERMS_INDEX_EXTENSION {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_EXTENSION;
}

+ (NSString *)TERMS_INDEX_CODEC_NAME {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_CODEC_NAME;
}

- (instancetype)initWithOrgApacheLuceneCodecsPostingsReaderBase:(OrgApacheLuceneCodecsPostingsReaderBase *)postingsReader
                       withOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state {
  OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(self, postingsReader, state);
  return self;
}

+ (OrgApacheLuceneUtilBytesRef *)readBytesRefWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg {
  return OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(inArg);
}

- (void)seekDirWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input
                                         withLong:(jlong)dirOffset {
  OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_withLong_(self, input, dirOffset);
}

- (void)close {
  @try {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ termsIn_, postingsReader_ } count:2 type:JavaIoCloseable_class_()]);
  }
  @finally {
    [((JavaUtilTreeMap *) nil_chk(fields_)) clear];
  }
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilSet>) nil_chk(JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([((JavaUtilTreeMap *) nil_chk(fields_)) keySet]))) iterator];
}

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field {
  JreAssert(field != nil, @"org/apache/lucene/codecs/blocktree/BlockTreeTermsReader.java:288 condition failed: assert field != null;");
  return [((JavaUtilTreeMap *) nil_chk(fields_)) getWithId:field];
}

- (jint)size {
  return [((JavaUtilTreeMap *) nil_chk(fields_)) size];
}

- (NSString *)brToStringWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b {
  if (b == nil) {
    return @"null";
  }
  else {
    @try {
      return JreStrcat("$C@", [b utf8ToString], ' ', b);
    }
    @catch (JavaLangThrowable *t) {
      return [b description];
    }
  }
}

- (jlong)ramBytesUsed {
  jlong sizeInBytes = [((OrgApacheLuceneCodecsPostingsReaderBase *) nil_chk(postingsReader_)) ramBytesUsed];
  for (OrgApacheLuceneCodecsBlocktreeFieldReader * __strong reader in nil_chk([((JavaUtilTreeMap *) nil_chk(fields_)) values])) {
    sizeInBytes += [((OrgApacheLuceneCodecsBlocktreeFieldReader *) nil_chk(reader)) ramBytesUsed];
  }
  return sizeInBytes;
}

- (id<JavaUtilCollection>)getChildResources {
  id<JavaUtilList> resources = create_JavaUtilArrayList_init();
  [resources addAllWithJavaUtilCollection:OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(@"field", fields_)];
  [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"delegate", postingsReader_)];
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(resources);
}

- (void)checkIntegrity {
  OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(termsIn_);
  [((OrgApacheLuceneCodecsPostingsReaderBase *) nil_chk(postingsReader_)) checkIntegrity];
}

- (NSString *)description {
  return JreStrcat("$$I$@C", [[self java_getClass] getSimpleName], @"(fields=", [((JavaUtilTreeMap *) nil_chk(fields_)) size], @",delegate=", postingsReader_, ')');
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

- (void)dealloc {
  RELEASE_(termsIn_);
  RELEASE_(postingsReader_);
  RELEASE_(fields_);
  RELEASE_(segment_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0xa, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 5, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 6, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTerms;", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x0, 9, 10, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 12, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneCodecsPostingsReaderBase:withOrgApacheLuceneIndexSegmentReadState:);
  methods[1].selector = @selector(readBytesRefWithOrgApacheLuceneStoreIndexInput:);
  methods[2].selector = @selector(seekDirWithOrgApacheLuceneStoreIndexInput:withLong:);
  methods[3].selector = @selector(close);
  methods[4].selector = @selector(iterator);
  methods[5].selector = @selector(termsWithNSString:);
  methods[6].selector = @selector(size);
  methods[7].selector = @selector(brToStringWithOrgApacheLuceneUtilBytesRef:);
  methods[8].selector = @selector(ramBytesUsed);
  methods[9].selector = @selector(getChildResources);
  methods[10].selector = @selector(checkIntegrity);
  methods[11].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FST_OUTPUTS", "LOrgApacheLuceneUtilFstOutputs;", .constantValue.asLong = 0, 0x18, -1, 13, 14, -1 },
    { "NO_OUTPUT", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x18, -1, 15, -1, -1 },
    { "OUTPUT_FLAGS_NUM_BITS", "I", .constantValue.asInt = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAGS_NUM_BITS, 0x18, -1, -1, -1, -1 },
    { "OUTPUT_FLAGS_MASK", "I", .constantValue.asInt = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAGS_MASK, 0x18, -1, -1, -1, -1 },
    { "OUTPUT_FLAG_IS_FLOOR", "I", .constantValue.asInt = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAG_IS_FLOOR, 0x18, -1, -1, -1, -1 },
    { "OUTPUT_FLAG_HAS_TERMS", "I", .constantValue.asInt = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAG_HAS_TERMS, 0x18, -1, -1, -1, -1 },
    { "TERMS_EXTENSION", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 16, -1, -1 },
    { "TERMS_CODEC_NAME", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 17, -1, -1 },
    { "VERSION_START", "I", .constantValue.asInt = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_START, 0x19, -1, -1, -1, -1 },
    { "VERSION_AUTO_PREFIX_TERMS", "I", .constantValue.asInt = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS, 0x19, -1, -1, -1, -1 },
    { "VERSION_AUTO_PREFIX_TERMS_COND", "I", .constantValue.asInt = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS_COND, 0x19, -1, -1, -1, -1 },
    { "VERSION_CURRENT", "I", .constantValue.asInt = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_CURRENT, 0x19, -1, -1, -1, -1 },
    { "TERMS_INDEX_EXTENSION", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 18, -1, -1 },
    { "TERMS_INDEX_CODEC_NAME", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 19, -1, -1 },
    { "termsIn_", "LOrgApacheLuceneStoreIndexInput;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "postingsReader_", "LOrgApacheLuceneCodecsPostingsReaderBase;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fields_", "LJavaUtilTreeMap;", .constantValue.asLong = 0, 0x12, -1, -1, 20, -1 },
    { "dirOffset_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "indexDirOffset_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "segment_", "LNSString;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "version__", "I", .constantValue.asLong = 0, 0x10, 21, -1, -1, -1 },
    { "anyAutoPrefixTerms_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneCodecsPostingsReaderBase;LOrgApacheLuceneIndexSegmentReadState;", "LJavaIoIOException;", "readBytesRef", "LOrgApacheLuceneStoreIndexInput;", "seekDir", "LOrgApacheLuceneStoreIndexInput;J", "()Ljava/util/Iterator<Ljava/lang/String;>;", "terms", "LNSString;", "brToString", "LOrgApacheLuceneUtilBytesRef;", "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;", "toString", &OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS, "Lorg/apache/lucene/util/fst/Outputs<Lorg/apache/lucene/util/BytesRef;>;", &OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT, &OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_EXTENSION, &OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_CODEC_NAME, &OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_EXTENSION, &OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_CODEC_NAME, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/apache/lucene/codecs/blocktree/FieldReader;>;", "version" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader = { "BlockTreeTermsReader", "org.apache.lucene.codecs.blocktree", ptrTable, methods, fields, 7, 0x11, 12, 22, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader class]) {
    JreStrongAssign(&OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS, OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton());
    JreStrongAssign(&OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT, [((OrgApacheLuceneUtilFstOutputs *) nil_chk(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS)) getNoOutput]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader)
  }
}

@end

void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *self, OrgApacheLuceneCodecsPostingsReaderBase *postingsReader, OrgApacheLuceneIndexSegmentReadState *state) {
  OrgApacheLuceneCodecsFieldsProducer_init(self);
  JreStrongAssignAndConsume(&self->fields_, new_JavaUtilTreeMap_init());
  jboolean success = false;
  OrgApacheLuceneStoreIndexInput *indexIn = nil;
  JreStrongAssign(&self->postingsReader_, postingsReader);
  JreStrongAssign(&self->segment_, ((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentReadState *) nil_chk(state))->segmentInfo_))->name_);
  NSString *termsName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(self->segment_, state->segmentSuffix_, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_EXTENSION);
  @try {
    JreStrongAssign(&self->termsIn_, [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) openInputWithNSString:termsName withOrgApacheLuceneStoreIOContext:state->context_]);
    self->version__ = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(self->termsIn_, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_CODEC_NAME, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_START, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    if (self->version__ < OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS) {
      self->anyAutoPrefixTerms_ = false;
    }
    else if (self->version__ == OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS) {
      self->anyAutoPrefixTerms_ = true;
    }
    else {
      JreAssert(self->version__ >= OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS_COND, @"org/apache/lucene/codecs/blocktree/BlockTreeTermsReader.java:161 condition failed: assert version >= VERSION_AUTO_PREFIX_TERMS_COND;");
      jbyte b = [((OrgApacheLuceneStoreIndexInput *) nil_chk(self->termsIn_)) readByte];
      if (b == 0) {
        self->anyAutoPrefixTerms_ = false;
      }
      else if (b == 1) {
        self->anyAutoPrefixTerms_ = true;
      }
      else {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$B", @"invalid anyAutoPrefixTerms: expected 0 or 1 but got ", b), self->termsIn_);
      }
    }
    NSString *indexName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(self->segment_, state->segmentSuffix_, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_EXTENSION);
    indexIn = [state->directory_ openInputWithNSString:indexName withOrgApacheLuceneStoreIOContext:state->context_];
    OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(indexIn, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_CODEC_NAME, self->version__, self->version__, [state->segmentInfo_ getId], state->segmentSuffix_);
    OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(indexIn);
    [((OrgApacheLuceneCodecsPostingsReaderBase *) nil_chk(postingsReader)) init__WithOrgApacheLuceneStoreIndexInput:self->termsIn_ withOrgApacheLuceneIndexSegmentReadState:state];
    OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(self->termsIn_);
    OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_withLong_(self, self->termsIn_, self->dirOffset_);
    OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_withLong_(self, indexIn, self->indexDirOffset_);
    jint numFields = [((OrgApacheLuceneStoreIndexInput *) nil_chk(self->termsIn_)) readVInt];
    if (numFields < 0) {
      @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I", @"invalid numFields: ", numFields), self->termsIn_);
    }
    for (jint i = 0; i < numFields; ++i) {
      jint field = [self->termsIn_ readVInt];
      jlong numTerms = [self->termsIn_ readVLong];
      if (numTerms <= 0) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I", @"Illegal numTerms for field number: ", field), self->termsIn_);
      }
      jint numBytes = [self->termsIn_ readVInt];
      if (numBytes < 0) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I$I", @"invalid rootCode for field number: ", field, @", numBytes=", numBytes), self->termsIn_);
      }
      OrgApacheLuceneUtilBytesRef *rootCode = create_OrgApacheLuceneUtilBytesRef_initWithByteArray_([IOSByteArray arrayWithLength:numBytes]);
      [self->termsIn_ readBytesWithByteArray:rootCode->bytes_ withInt:0 withInt:numBytes];
      rootCode->length_ = numBytes;
      OrgApacheLuceneIndexFieldInfo *fieldInfo = [((OrgApacheLuceneIndexFieldInfos *) nil_chk(state->fieldInfos_)) fieldInfoWithInt:field];
      if (fieldInfo == nil) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I", @"invalid field number: ", field), self->termsIn_);
      }
      jlong sumTotalTermFreq = [fieldInfo getIndexOptions] == JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS) ? -1 : [self->termsIn_ readVLong];
      jlong sumDocFreq = [self->termsIn_ readVLong];
      jint docCount = [self->termsIn_ readVInt];
      jint longsSize = [self->termsIn_ readVInt];
      if (longsSize < 0) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$$$I", @"invalid longsSize for field: ", fieldInfo->name_, @", longsSize=", longsSize), self->termsIn_);
      }
      OrgApacheLuceneUtilBytesRef *minTerm = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(self->termsIn_);
      OrgApacheLuceneUtilBytesRef *maxTerm = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(self->termsIn_);
      if (docCount < 0 || docCount > [state->segmentInfo_ maxDoc]) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I$I", @"invalid docCount: ", docCount, @" maxDoc: ", [state->segmentInfo_ maxDoc]), self->termsIn_);
      }
      if (sumDocFreq < docCount) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$J$I", @"invalid sumDocFreq: ", sumDocFreq, @" docCount: ", docCount), self->termsIn_);
      }
      if (sumTotalTermFreq != -1 && sumTotalTermFreq < sumDocFreq) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$J$J", @"invalid sumTotalTermFreq: ", sumTotalTermFreq, @" sumDocFreq: ", sumDocFreq), self->termsIn_);
      }
      jlong indexStartFP = [((OrgApacheLuceneStoreIndexInput *) nil_chk(indexIn)) readVLong];
      OrgApacheLuceneCodecsBlocktreeFieldReader *previous = JreRetainedLocalValue([self->fields_ putWithId:fieldInfo->name_ withId:create_OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(self, fieldInfo, numTerms, rootCode, sumTotalTermFreq, sumDocFreq, docCount, indexStartFP, longsSize, indexIn, minTerm, maxTerm)]);
      if (previous != nil) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$$", @"duplicate field: ", fieldInfo->name_), self->termsIn_);
      }
    }
    [((OrgApacheLuceneStoreIndexInput *) nil_chk(indexIn)) close];
    success = true;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ indexIn, self } count:2 type:JavaIoCloseable_class_()]);
    }
  }
}

OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *new_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsPostingsReaderBase *postingsReader, OrgApacheLuceneIndexSegmentReadState *state) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_, postingsReader, state)
}

OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *create_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsPostingsReaderBase *postingsReader, OrgApacheLuceneIndexSegmentReadState *state) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_, postingsReader, state)
}

OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *inArg) {
  OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initialize();
  OrgApacheLuceneUtilBytesRef *bytes = create_OrgApacheLuceneUtilBytesRef_init();
  bytes->length_ = [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readVInt];
  JreStrongAssignAndConsume(&bytes->bytes_, [IOSByteArray newArrayWithLength:bytes->length_]);
  [inArg readBytesWithByteArray:bytes->bytes_ withInt:0 withInt:bytes->length_];
  return bytes;
}

void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_withLong_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *self, OrgApacheLuceneStoreIndexInput *input, jlong dirOffset) {
  [((OrgApacheLuceneStoreIndexInput *) nil_chk(input)) seekWithLong:[input length] - OrgApacheLuceneCodecsCodecUtil_footerLength() - 8];
  dirOffset = [input readLong];
  [input seekWithLong:dirOffset];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader)
