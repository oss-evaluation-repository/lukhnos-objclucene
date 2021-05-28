//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/DocumentDictionary.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Collections.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexableField.h"
#include "org/apache/lucene/index/MultiDocValues.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/search/suggest/DocumentDictionary.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/suggest/DocumentDictionary must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSuggestDocumentDictionary () {
 @public
  NSString *field_;
  NSString *weightField_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary, weightField_, NSString *)

@interface OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator () {
 @public
  OrgApacheLuceneSearchSuggestDocumentDictionary *this$0_;
  jint docCount_;
  id<JavaUtilSet> relevantFields_;
  jboolean hasPayloads_;
  jboolean hasContexts_;
  id<OrgApacheLuceneUtilBits> liveDocs_;
  jint currentDocId_;
  jlong currentWeight_;
  OrgApacheLuceneUtilBytesRef *currentPayload_;
  id<JavaUtilSet> currentContexts_;
  OrgApacheLuceneIndexNumericDocValues *weightValues_;
}

- (id<JavaUtilSet>)getRelevantFieldsWithNSStringArray:(IOSObjectArray *)fields;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator, relevantFields_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator, liveDocs_, id<OrgApacheLuceneUtilBits>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator, currentPayload_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator, currentContexts_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator, weightValues_, OrgApacheLuceneIndexNumericDocValues *)

__attribute__((unused)) static id<JavaUtilSet> OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_getRelevantFieldsWithNSStringArray_(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator *self, IOSObjectArray *fields);

@implementation OrgApacheLuceneSearchSuggestDocumentDictionary

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                           withNSString:(NSString *)field
                                           withNSString:(NSString *)weightField {
  OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(self, reader, field, weightField);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                           withNSString:(NSString *)field
                                           withNSString:(NSString *)weightField
                                           withNSString:(NSString *)payloadField {
  OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_(self, reader, field, weightField, payloadField);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                           withNSString:(NSString *)field
                                           withNSString:(NSString *)weightField
                                           withNSString:(NSString *)payloadField
                                           withNSString:(NSString *)contextsField {
  OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_(self, reader, field, weightField, payloadField, contextsField);
  return self;
}

- (id<OrgApacheLuceneSearchSuggestInputIterator>)getEntryIterator {
  return create_OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_(self, payloadField_ != nil, contextsField_ != nil);
}

- (void)dealloc {
  RELEASE_(reader_);
  RELEASE_(payloadField_);
  RELEASE_(contextsField_);
  RELEASE_(field_);
  RELEASE_(weightField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSuggestInputIterator;", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withNSString:withNSString:);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withNSString:withNSString:withNSString:);
  methods[2].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withNSString:withNSString:withNSString:withNSString:);
  methods[3].selector = @selector(getEntryIterator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "payloadField_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "contextsField_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "weightField_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;LNSString;LNSString;", "LOrgApacheLuceneIndexIndexReader;LNSString;LNSString;LNSString;", "LOrgApacheLuceneIndexIndexReader;LNSString;LNSString;LNSString;LNSString;", "LJavaIoIOException;", "LOrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentDictionary = { "DocumentDictionary", "org.apache.lucene.search.suggest", ptrTable, methods, fields, 7, 0x1, 4, 5, -1, 4, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentDictionary;
}

@end

void OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(OrgApacheLuceneSearchSuggestDocumentDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField) {
  OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_(self, reader, field, weightField, nil);
}

OrgApacheLuceneSearchSuggestDocumentDictionary *new_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentDictionary, initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_, reader, field, weightField)
}

OrgApacheLuceneSearchSuggestDocumentDictionary *create_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentDictionary, initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_, reader, field, weightField)
}

void OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_(OrgApacheLuceneSearchSuggestDocumentDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField) {
  OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_(self, reader, field, weightField, payloadField, nil);
}

OrgApacheLuceneSearchSuggestDocumentDictionary *new_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentDictionary, initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_, reader, field, weightField, payloadField)
}

OrgApacheLuceneSearchSuggestDocumentDictionary *create_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentDictionary, initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_, reader, field, weightField, payloadField)
}

void OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneSearchSuggestDocumentDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField, NSString *contextsField) {
  NSObject_init(self);
  JreStrongAssign(&self->reader_, reader);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->weightField_, weightField);
  JreStrongAssign(&self->payloadField_, payloadField);
  JreStrongAssign(&self->contextsField_, contextsField);
}

OrgApacheLuceneSearchSuggestDocumentDictionary *new_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField, NSString *contextsField) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentDictionary, initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_, reader, field, weightField, payloadField, contextsField)
}

OrgApacheLuceneSearchSuggestDocumentDictionary *create_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField, NSString *contextsField) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentDictionary, initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_, reader, field, weightField, payloadField, contextsField)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentDictionary)

@implementation OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator

- (instancetype)initWithOrgApacheLuceneSearchSuggestDocumentDictionary:(OrgApacheLuceneSearchSuggestDocumentDictionary *)outer$
                                                           withBoolean:(jboolean)hasPayloads
                                                           withBoolean:(jboolean)hasContexts {
  OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_(self, outer$, hasPayloads, hasContexts);
  return self;
}

- (jlong)weight {
  return currentWeight_;
}

- (OrgApacheLuceneUtilBytesRef *)next {
  while (true) {
    if (nextFieldsPosition_ < ((IOSObjectArray *) nil_chk(currentDocFields_))->size_) {
      id<OrgApacheLuceneIndexIndexableField> fieldValue = IOSObjectArray_Get(currentDocFields_, nextFieldsPosition_++);
      if ([((id<OrgApacheLuceneIndexIndexableField>) nil_chk(fieldValue)) binaryValue] != nil) {
        return [fieldValue binaryValue];
      }
      else if ([fieldValue stringValue] != nil) {
        return create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_([fieldValue stringValue]);
      }
      else {
        continue;
      }
    }
    if (currentDocId_ == docCount_) {
      break;
    }
    currentDocId_++;
    if (liveDocs_ != nil && ![liveDocs_ getWithInt:currentDocId_]) {
      continue;
    }
    OrgApacheLuceneDocumentDocument *doc = JreRetainedLocalValue([((OrgApacheLuceneIndexIndexReader *) nil_chk(this$0_->reader_)) documentWithInt:currentDocId_ withJavaUtilSet:relevantFields_]);
    OrgApacheLuceneUtilBytesRef *tempPayload = nil;
    if (hasPayloads_) {
      id<OrgApacheLuceneIndexIndexableField> payload = JreRetainedLocalValue([((OrgApacheLuceneDocumentDocument *) nil_chk(doc)) getFieldWithNSString:this$0_->payloadField_]);
      if (payload != nil) {
        if ([payload binaryValue] != nil) {
          tempPayload = [payload binaryValue];
        }
        else if ([payload stringValue] != nil) {
          tempPayload = create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_([payload stringValue]);
        }
      }
      if (tempPayload == nil) {
        tempPayload = create_OrgApacheLuceneUtilBytesRef_init();
      }
    }
    id<JavaUtilSet> tempContexts;
    if (hasContexts_) {
      tempContexts = create_JavaUtilHashSet_init();
      IOSObjectArray *contextFields = [((OrgApacheLuceneDocumentDocument *) nil_chk(doc)) getFieldsWithNSString:this$0_->contextsField_];
      {
        IOSObjectArray *a__ = contextFields;
        id<OrgApacheLuceneIndexIndexableField> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        id<OrgApacheLuceneIndexIndexableField> const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          id<OrgApacheLuceneIndexIndexableField> contextField = *b__++;
          if ([((id<OrgApacheLuceneIndexIndexableField>) nil_chk(contextField)) binaryValue] != nil) {
            [tempContexts addWithId:[contextField binaryValue]];
          }
          else if ([contextField stringValue] != nil) {
            [tempContexts addWithId:create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_([contextField stringValue])];
          }
          else {
            continue;
          }
        }
      }
    }
    else {
      tempContexts = JavaUtilCollections_emptySet();
    }
    JreStrongAssign(&currentDocFields_, [((OrgApacheLuceneDocumentDocument *) nil_chk(doc)) getFieldsWithNSString:this$0_->field_]);
    nextFieldsPosition_ = 0;
    if (((IOSObjectArray *) nil_chk(currentDocFields_))->size_ == 0) {
      continue;
    }
    id<OrgApacheLuceneIndexIndexableField> fieldValue = IOSObjectArray_Get(currentDocFields_, nextFieldsPosition_++);
    OrgApacheLuceneUtilBytesRef *tempTerm;
    if ([((id<OrgApacheLuceneIndexIndexableField>) nil_chk(fieldValue)) binaryValue] != nil) {
      tempTerm = [fieldValue binaryValue];
    }
    else if ([fieldValue stringValue] != nil) {
      tempTerm = create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_([fieldValue stringValue]);
    }
    else {
      continue;
    }
    JreStrongAssign(&currentPayload_, tempPayload);
    JreStrongAssign(&currentContexts_, tempContexts);
    currentWeight_ = [self getWeightWithOrgApacheLuceneDocumentDocument:doc withInt:currentDocId_];
    return tempTerm;
  }
  return nil;
}

- (OrgApacheLuceneUtilBytesRef *)payload {
  return currentPayload_;
}

- (jboolean)hasPayloads {
  return hasPayloads_;
}

- (jlong)getWeightWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc
                                              withInt:(jint)docId {
  id<OrgApacheLuceneIndexIndexableField> weight = JreRetainedLocalValue([((OrgApacheLuceneDocumentDocument *) nil_chk(doc)) getFieldWithNSString:this$0_->weightField_]);
  if (weight != nil) {
    return ([weight numericValue] != nil) ? [((NSNumber *) nil_chk([weight numericValue])) longLongValue] : 0;
  }
  else if (weightValues_ != nil) {
    return [weightValues_ getWithInt:docId];
  }
  else {
    return 0;
  }
}

- (id<JavaUtilSet>)getRelevantFieldsWithNSStringArray:(IOSObjectArray *)fields {
  return OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_getRelevantFieldsWithNSStringArray_(self, fields);
}

- (id<JavaUtilSet>)contexts {
  if (hasContexts_) {
    return currentContexts_;
  }
  return nil;
}

- (jboolean)hasContexts {
  return hasContexts_;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(relevantFields_);
  RELEASE_(liveDocs_);
  RELEASE_(currentPayload_);
  RELEASE_(currentContexts_);
  RELEASE_(weightValues_);
  RELEASE_(currentDocFields_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x82, 4, 5, -1, 6, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 7, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSuggestDocumentDictionary:withBoolean:withBoolean:);
  methods[1].selector = @selector(weight);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(payload);
  methods[4].selector = @selector(hasPayloads);
  methods[5].selector = @selector(getWeightWithOrgApacheLuceneDocumentDocument:withInt:);
  methods[6].selector = @selector(getRelevantFieldsWithNSStringArray:);
  methods[7].selector = @selector(contexts);
  methods[8].selector = @selector(hasContexts);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchSuggestDocumentDictionary;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "docCount_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "relevantFields_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
    { "hasPayloads_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "hasContexts_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "liveDocs_", "LOrgApacheLuceneUtilBits;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "currentDocId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentWeight_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentPayload_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentContexts_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 9, -1 },
    { "weightValues_", "LOrgApacheLuceneIndexNumericDocValues;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "currentDocFields_", "[LOrgApacheLuceneIndexIndexableField;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "nextFieldsPosition_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSuggestDocumentDictionary;ZZ", "LJavaIoIOException;", "getWeight", "LOrgApacheLuceneDocumentDocument;I", "getRelevantFields", "[LNSString;", "([Ljava/lang/String;)Ljava/util/Set<Ljava/lang/String;>;", "()Ljava/util/Set<Lorg/apache/lucene/util/BytesRef;>;", "Ljava/util/Set<Ljava/lang/String;>;", "Ljava/util/Set<Lorg/apache/lucene/util/BytesRef;>;", "LOrgApacheLuceneSearchSuggestDocumentDictionary;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator = { "DocumentInputIterator", "org.apache.lucene.search.suggest", ptrTable, methods, fields, 7, 0x4, 9, 13, 10, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator;
}

@end

void OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator *self, OrgApacheLuceneSearchSuggestDocumentDictionary *outer$, jboolean hasPayloads, jboolean hasContexts) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  self->currentDocId_ = -1;
  self->currentWeight_ = 0;
  JreStrongAssign(&self->currentPayload_, nil);
  JreStrongAssignAndConsume(&self->currentDocFields_, [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexIndexableField_class_()]);
  self->nextFieldsPosition_ = 0;
  self->hasPayloads_ = hasPayloads;
  self->hasContexts_ = hasContexts;
  self->docCount_ = [((OrgApacheLuceneIndexIndexReader *) nil_chk(outer$->reader_)) maxDoc] - 1;
  JreStrongAssign(&self->weightValues_, (outer$->weightField_ != nil) ? OrgApacheLuceneIndexMultiDocValues_getNumericValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(outer$->reader_, outer$->weightField_) : nil);
  JreStrongAssign(&self->liveDocs_, ([((id<JavaUtilList>) nil_chk([outer$->reader_ leaves])) size] > 0) ? OrgApacheLuceneIndexMultiFields_getLiveDocsWithOrgApacheLuceneIndexIndexReader_(outer$->reader_) : nil);
  JreStrongAssign(&self->relevantFields_, OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_getRelevantFieldsWithNSStringArray_(self, [IOSObjectArray arrayWithObjects:(id[]){ outer$->field_, outer$->weightField_, outer$->payloadField_, outer$->contextsField_ } count:4 type:NSString_class_()]));
}

OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator *new_OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentDictionary *outer$, jboolean hasPayloads, jboolean hasContexts) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator, initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_, outer$, hasPayloads, hasContexts)
}

OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator *create_OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentDictionary *outer$, jboolean hasPayloads, jboolean hasContexts) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator, initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_, outer$, hasPayloads, hasContexts)
}

id<JavaUtilSet> OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_getRelevantFieldsWithNSStringArray_(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator *self, IOSObjectArray *fields) {
  id<JavaUtilSet> relevantFields = create_JavaUtilHashSet_init();
  {
    IOSObjectArray *a__ = fields;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *relevantField = *b__++;
      if (relevantField != nil) {
        [relevantFields addWithId:relevantField];
      }
    }
  }
  return relevantFields;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator)
