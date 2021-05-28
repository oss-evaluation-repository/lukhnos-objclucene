//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/IntField.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/IntField.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/util/NumericUtils.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/document/IntField must not be compiled with ARC (-fobjc-arc)"
#endif

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentIntField)

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED;
OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentIntField_TYPE_STORED;

@implementation OrgApacheLuceneDocumentIntField

+ (OrgApacheLuceneDocumentFieldType *)TYPE_NOT_STORED {
  return OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED;
}

+ (OrgApacheLuceneDocumentFieldType *)TYPE_STORED {
  return OrgApacheLuceneDocumentIntField_TYPE_STORED;
}

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)stored {
  OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_(self, name, value, stored);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)value
withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)type {
  OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_(self, name, value, type);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withInt:withOrgApacheLuceneDocumentField_Store:);
  methods[1].selector = @selector(initWithNSString:withInt:withOrgApacheLuceneDocumentFieldType:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_NOT_STORED", "LOrgApacheLuceneDocumentFieldType;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "TYPE_STORED", "LOrgApacheLuceneDocumentFieldType;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;ILOrgApacheLuceneDocumentField_Store;", "LNSString;ILOrgApacheLuceneDocumentFieldType;", &OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED, &OrgApacheLuceneDocumentIntField_TYPE_STORED };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentIntField = { "IntField", "org.apache.lucene.document", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentIntField;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentIntField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setTokenizedWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericType:JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, INT)];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setNumericPrecisionStepWithInt:OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT_32];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED freeze];
    }
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentIntField_TYPE_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setTokenizedWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericType:JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, INT)];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setNumericPrecisionStepWithInt:OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT_32];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setStoredWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED freeze];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentIntField)
  }
}

@end

void OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentIntField *self, NSString *name, jint value, OrgApacheLuceneDocumentField_Store *stored) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, stored == JreLoadEnum(OrgApacheLuceneDocumentField_Store, YES) ? OrgApacheLuceneDocumentIntField_TYPE_STORED : OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED);
  JreStrongAssign(&self->fieldsData_, JavaLangInteger_valueOfWithInt_(value));
}

OrgApacheLuceneDocumentIntField *new_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_(NSString *name, jint value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentIntField, initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

OrgApacheLuceneDocumentIntField *create_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_(NSString *name, jint value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentIntField, initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

void OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentIntField *self, NSString *name, jint value, OrgApacheLuceneDocumentFieldType *type) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, type);
  if ([((OrgApacheLuceneDocumentFieldType *) nil_chk(type)) numericType] != JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, INT)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"type.numericType() must be INT but got ", [type numericType]));
  }
  JreStrongAssign(&self->fieldsData_, JavaLangInteger_valueOfWithInt_(value));
}

OrgApacheLuceneDocumentIntField *new_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_(NSString *name, jint value, OrgApacheLuceneDocumentFieldType *type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentIntField, initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_, name, value, type)
}

OrgApacheLuceneDocumentIntField *create_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_(NSString *name, jint value, OrgApacheLuceneDocumentFieldType *type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentIntField, initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_, name, value, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentIntField)
