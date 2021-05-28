//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionFieldsConsumer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/FieldsConsumer.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/suggest/document/CompletionFieldsConsumer.h"
#include "org/apache/lucene/search/suggest/document/CompletionPostingsFormat.h"
#include "org/apache/lucene/search/suggest/document/NRTSuggesterBuilder.h"
#include "org/apache/lucene/store/ByteArrayDataInput.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/IOUtils.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/suggest/document/CompletionFieldsConsumer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer () {
 @public
  NSString *delegatePostingsFormatName_;
  id<JavaUtilMap> seenFields_;
  OrgApacheLuceneIndexSegmentWriteState *state_;
  OrgApacheLuceneStoreIndexOutput *dictOut_;
  OrgApacheLuceneCodecsFieldsConsumer *delegateFieldsConsumer_;
  jboolean closed_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, delegatePostingsFormatName_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, seenFields_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, state_, OrgApacheLuceneIndexSegmentWriteState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, dictOut_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, delegateFieldsConsumer_, OrgApacheLuceneCodecsFieldsConsumer *)

@interface OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData : NSObject {
 @public
  jlong filePointer_;
  jlong minWeight_;
  jlong maxWeight_;
  jbyte type_;
}

- (instancetype)initWithLong:(jlong)filePointer
                    withLong:(jlong)minWeight
                    withLong:(jlong)maxWeight
                    withByte:(jbyte)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *self, jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type);

__attribute__((unused)) static OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData)

@interface OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter : NSObject {
 @public
  OrgApacheLuceneIndexPostingsEnum *postingsEnum_;
  jint docCount_;
  jlong maxWeight_;
  jlong minWeight_;
  jbyte type_;
  jboolean first_;
  OrgApacheLuceneUtilBytesRefBuilder *scratch_;
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *builder_;
}

- (instancetype)init;

/*!
 @brief Stores the built FST in <code>output</code>
  Returns true if there was anything stored, false otherwise
 */
- (jboolean)finishWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)output;

/*!
 @brief Writes all postings (surface form, weight, document id) for <code>term</code>
 */
- (void)writeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
           withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter, postingsEnum_, OrgApacheLuceneIndexPostingsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter, scratch_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter, builder_, OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *self);

__attribute__((unused)) static OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter)

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer

- (instancetype)initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat:(OrgApacheLuceneCodecsPostingsFormat *)delegatePostingsFormat
                                withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(self, delegatePostingsFormat, state);
  return self;
}

- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields {
  [((OrgApacheLuceneCodecsFieldsConsumer *) nil_chk(delegateFieldsConsumer_)) writeWithOrgApacheLuceneIndexFields:fields];
  for (NSString * __strong field in nil_chk(fields)) {
    OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *termWriter = create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init();
    OrgApacheLuceneIndexTerms *terms = JreRetainedLocalValue([fields termsWithNSString:field]);
    OrgApacheLuceneIndexTermsEnum *termsEnum = JreRetainedLocalValue([((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator]);
    OrgApacheLuceneUtilBytesRef *term;
    while ((term = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next]) != nil) {
      [termWriter writeWithOrgApacheLuceneUtilBytesRef:term withOrgApacheLuceneIndexTermsEnum:termsEnum];
    }
    jlong filePointer = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(dictOut_)) getFilePointer];
    if ([termWriter finishWithOrgApacheLuceneStoreIndexOutput:dictOut_]) {
      [((id<JavaUtilMap>) nil_chk(seenFields_)) putWithId:field withId:create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(filePointer, termWriter->minWeight_, termWriter->maxWeight_, termWriter->type_)];
    }
  }
}

- (void)close {
  if (closed_) {
    return;
  }
  closed_ = true;
  NSString *indexFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state_))->segmentInfo_))->name_, state_->segmentSuffix_, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_INDEX_EXTENSION);
  jboolean success = false;
  @try {
    OrgApacheLuceneStoreIndexOutput *indexOut = [((OrgApacheLuceneStoreDirectory *) nil_chk(state_->directory_)) createOutputWithNSString:indexFile withOrgApacheLuceneStoreIOContext:state_->context_];
    JavaLangThrowable *__primaryException1 = nil;
    @try {
      [((OrgApacheLuceneCodecsFieldsConsumer *) nil_chk(delegateFieldsConsumer_)) close];
      OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(indexOut, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_VERSION_CURRENT, [state_->segmentInfo_ getId], state_->segmentSuffix_);
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(indexOut)) writeStringWithNSString:delegatePostingsFormatName_];
      [indexOut writeVIntWithInt:[((id<JavaUtilMap>) nil_chk(seenFields_)) size]];
      for (id<JavaUtilMap_Entry> __strong seenField in nil_chk([seenFields_ entrySet])) {
        OrgApacheLuceneIndexFieldInfo *fieldInfo = JreRetainedLocalValue([((OrgApacheLuceneIndexFieldInfos *) nil_chk(state_->fieldInfos_)) fieldInfoWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(seenField)) getKey]]);
        [indexOut writeVIntWithInt:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->number_];
        OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *metaData = JreRetainedLocalValue([seenField getValue]);
        [indexOut writeVLongWithLong:((OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *) nil_chk(metaData))->filePointer_];
        [indexOut writeVLongWithLong:metaData->minWeight_];
        [indexOut writeVLongWithLong:metaData->maxWeight_];
        [indexOut writeByteWithByte:metaData->type_];
      }
      OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(indexOut);
      OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(dictOut_);
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ dictOut_ } count:1 type:JavaIoCloseable_class_()]);
      success = true;
    }
    @catch (JavaLangThrowable *e) {
      __primaryException1 = e;
      @throw e;
    }
    @finally {
      if (indexOut != nil) {
        if (__primaryException1 != nil) {
          @try {
            [indexOut close];
          }
          @catch (JavaLangThrowable *e) {
            [__primaryException1 addSuppressedWithJavaLangThrowable:e];
          }
        }
        else {
          [indexOut close];
        }
      }
    }
  }
  @finally {
    if (success == false) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ dictOut_, delegateFieldsConsumer_ } count:2 type:JavaIoCloseable_class_()]);
    }
  }
}

- (void)dealloc {
  RELEASE_(delegatePostingsFormatName_);
  RELEASE_(seenFields_);
  RELEASE_(state_);
  RELEASE_(dictOut_);
  RELEASE_(delegateFieldsConsumer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat:withOrgApacheLuceneIndexSegmentWriteState:);
  methods[1].selector = @selector(writeWithOrgApacheLuceneIndexFields:);
  methods[2].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegatePostingsFormatName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "seenFields_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 4, -1 },
    { "state_", "LOrgApacheLuceneIndexSegmentWriteState;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "dictOut_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "delegateFieldsConsumer_", "LOrgApacheLuceneCodecsFieldsConsumer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "closed_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneCodecsPostingsFormat;LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "write", "LOrgApacheLuceneIndexFields;", "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/search/suggest/document/CompletionFieldsConsumer$CompletionMetaData;>;", "LOrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData;LOrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer = { "CompletionFieldsConsumer", "org.apache.lucene.search.suggest.document", ptrTable, methods, fields, 7, 0x10, 3, 6, -1, 5, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *self, OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat, OrgApacheLuceneIndexSegmentWriteState *state) {
  OrgApacheLuceneCodecsFieldsConsumer_init(self);
  JreStrongAssignAndConsume(&self->seenFields_, new_JavaUtilHashMap_init());
  self->closed_ = false;
  JreStrongAssign(&self->delegatePostingsFormatName_, [((OrgApacheLuceneCodecsPostingsFormat *) nil_chk(delegatePostingsFormat)) getName]);
  JreStrongAssign(&self->state_, state);
  NSString *dictFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_))->name_, state->segmentSuffix_, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_DICT_EXTENSION);
  jboolean success = false;
  @try {
    JreStrongAssign(&self->delegateFieldsConsumer_, [delegatePostingsFormat fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:state]);
    JreStrongAssign(&self->dictOut_, [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) createOutputWithNSString:dictFile withOrgApacheLuceneStoreIOContext:state->context_]);
    OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(self->dictOut_, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    success = true;
  }
  @finally {
    if (success == false) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ self->dictOut_, self->delegateFieldsConsumer_ } count:2 type:JavaIoCloseable_class_()]);
    }
  }
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat, OrgApacheLuceneIndexSegmentWriteState *state) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_, delegatePostingsFormat, state)
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat, OrgApacheLuceneIndexSegmentWriteState *state) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, initPackagePrivateWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_, delegatePostingsFormat, state)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer)

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData

- (instancetype)initWithLong:(jlong)filePointer
                    withLong:(jlong)minWeight
                    withLong:(jlong)maxWeight
                    withByte:(jbyte)type {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(self, filePointer, minWeight, maxWeight, type);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLong:withLong:withLong:withByte:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "filePointer_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "minWeight_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "maxWeight_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "type_", "B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JJJB", "LOrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData = { "CompletionMetaData", "org.apache.lucene.search.suggest.document", ptrTable, methods, fields, 7, 0xa, 1, 4, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *self, jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type) {
  NSObject_init(self);
  self->filePointer_ = filePointer;
  self->minWeight_ = minWeight;
  self->maxWeight_ = maxWeight;
  self->type_ = type;
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData, initWithLong_withLong_withLong_withByte_, filePointer, minWeight, maxWeight, type)
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData, initWithLong_withLong_withLong_withByte_, filePointer, minWeight, maxWeight, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData)

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)finishWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)output {
  jboolean stored = [((OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *) nil_chk(builder_)) storeWithOrgApacheLuceneStoreDataOutput:output];
  JreAssert(stored || docCount_ == 0, JreStrcat("$IC", @"the FST is null but docCount is != 0 actual value: [", docCount_, ']'));
  if (docCount_ == 0) {
    minWeight_ = 0;
  }
  return stored;
}

- (void)writeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
           withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum {
  JreStrongAssign(&postingsEnum_, [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) postingsWithOrgApacheLuceneIndexPostingsEnum:postingsEnum_ withInt:OrgApacheLuceneIndexPostingsEnum_PAYLOADS]);
  [((OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *) nil_chk(builder_)) startTermWithOrgApacheLuceneUtilBytesRef:term];
  jint docFreq = 0;
  while ([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postingsEnum_)) nextDoc] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    jint docID = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postingsEnum_)) docID];
    for (jint i = 0; i < [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postingsEnum_)) freq]; i++) {
      [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postingsEnum_)) nextPosition];
      JreAssert([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postingsEnum_)) getPayload] != nil, @"org/apache/lucene/search/suggest/document/CompletionFieldsConsumer.java:206 condition failed: assert postingsEnum.getPayload() != null;");
      OrgApacheLuceneUtilBytesRef *payload = JreRetainedLocalValue([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postingsEnum_)) getPayload]);
      OrgApacheLuceneStoreByteArrayDataInput *input = create_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(((OrgApacheLuceneUtilBytesRef *) nil_chk(payload))->bytes_, payload->offset_, payload->length_);
      jint len = [input readVInt];
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) growWithInt:len];
      [scratch_ setLengthWithInt:len];
      [input readBytesWithByteArray:[scratch_ bytes] withInt:0 withInt:[scratch_ length]];
      jlong weight = [input readVInt] - 1;
      maxWeight_ = JavaLangMath_maxWithLong_withLong_(maxWeight_, weight);
      minWeight_ = JavaLangMath_minWithLong_withLong_(minWeight_, weight);
      jbyte type = [input readByte];
      if (first_) {
        self->type_ = type;
        first_ = false;
      }
      else if (self->type_ != type) {
        @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"single field name has mixed types");
      }
      [builder_ addEntryWithInt:docID withOrgApacheLuceneUtilBytesRef:[scratch_ get] withLong:weight];
    }
    docFreq++;
    docCount_ = JavaLangMath_maxWithInt_withInt_(docCount_, docFreq + 1);
  }
  [builder_ finishTerm];
}

- (void)dealloc {
  RELEASE_(postingsEnum_);
  RELEASE_(scratch_);
  RELEASE_(builder_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(finishWithOrgApacheLuceneStoreIndexOutput:);
  methods[2].selector = @selector(writeWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermsEnum:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "postingsEnum_", "LOrgApacheLuceneIndexPostingsEnum;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "docCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maxWeight_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "minWeight_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "type_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "first_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "scratch_", "LOrgApacheLuceneUtilBytesRefBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "builder_", "LOrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "finish", "LOrgApacheLuceneStoreIndexOutput;", "LJavaIoIOException;", "write", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneIndexTermsEnum;", "LOrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter = { "CompletionTermWriter", "org.apache.lucene.search.suggest.document", ptrTable, methods, fields, 7, 0xa, 3, 8, 5, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *self) {
  NSObject_init(self);
  JreStrongAssign(&self->postingsEnum_, nil);
  self->docCount_ = 0;
  self->maxWeight_ = 0;
  self->minWeight_ = JavaLangLong_MAX_VALUE;
  JreStrongAssignAndConsume(&self->scratch_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->builder_, new_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_initPackagePrivate());
  self->first_ = true;
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter, init)
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter)
