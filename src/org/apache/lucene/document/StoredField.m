//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/StoredField.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/StoredField.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/document/StoredField must not be compiled with ARC (-fobjc-arc)"
#endif

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentStoredField)

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentStoredField_TYPE;

@implementation OrgApacheLuceneDocumentStoredField

+ (OrgApacheLuceneDocumentFieldType *)TYPE {
  return OrgApacheLuceneDocumentStoredField_TYPE;
}

- (instancetype)initWithNSString:(NSString *)name
                   withByteArray:(IOSByteArray *)value {
  OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(self, name, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                   withByteArray:(IOSByteArray *)value
                         withInt:(jint)offset
                         withInt:(jint)length {
  OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_withInt_withInt_(self, name, value, offset, length);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)value {
  OrgApacheLuceneDocumentStoredField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(self, name, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value {
  OrgApacheLuceneDocumentStoredField_initWithNSString_withNSString_(self, name, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)value {
  OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(self, name, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                       withFloat:(jfloat)value {
  OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(self, name, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                        withLong:(jlong)value {
  OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(self, name, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                      withDouble:(jdouble)value {
  OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(self, name, value);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 6, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withByteArray:);
  methods[1].selector = @selector(initWithNSString:withByteArray:withInt:withInt:);
  methods[2].selector = @selector(initWithNSString:withOrgApacheLuceneUtilBytesRef:);
  methods[3].selector = @selector(initWithNSString:withNSString:);
  methods[4].selector = @selector(initWithNSString:withInt:);
  methods[5].selector = @selector(initWithNSString:withFloat:);
  methods[6].selector = @selector(initWithNSString:withLong:);
  methods[7].selector = @selector(initWithNSString:withDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE", "LOrgApacheLuceneDocumentFieldType;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;[B", "LNSString;[BII", "LNSString;LOrgApacheLuceneUtilBytesRef;", "LNSString;LNSString;", "LNSString;I", "LNSString;F", "LNSString;J", "LNSString;D", &OrgApacheLuceneDocumentStoredField_TYPE };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentStoredField = { "StoredField", "org.apache.lucene.document", ptrTable, methods, fields, 7, 0x11, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentStoredField;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentStoredField class]) {
    {
      JreStrongAssignAndConsume(&OrgApacheLuceneDocumentStoredField_TYPE, new_OrgApacheLuceneDocumentFieldType_init());
      [OrgApacheLuceneDocumentStoredField_TYPE setStoredWithBoolean:true];
      [OrgApacheLuceneDocumentStoredField_TYPE freeze];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentStoredField)
  }
}

@end

void OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(OrgApacheLuceneDocumentStoredField *self, NSString *name, IOSByteArray *value) {
  OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withOrgApacheLuceneDocumentFieldType_(self, name, value, OrgApacheLuceneDocumentStoredField_TYPE);
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(NSString *name, IOSByteArray *value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withByteArray_, name, value)
}

OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(NSString *name, IOSByteArray *value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withByteArray_, name, value)
}

void OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_withInt_withInt_(OrgApacheLuceneDocumentStoredField *self, NSString *name, IOSByteArray *value, jint offset, jint length) {
  OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_withOrgApacheLuceneDocumentFieldType_(self, name, value, offset, length, OrgApacheLuceneDocumentStoredField_TYPE);
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_withInt_withInt_(NSString *name, IOSByteArray *value, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withByteArray_withInt_withInt_, name, value, offset, length)
}

OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_withInt_withInt_(NSString *name, IOSByteArray *value, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withByteArray_withInt_withInt_, name, value, offset, length)
}

void OrgApacheLuceneDocumentStoredField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneDocumentStoredField *self, NSString *name, OrgApacheLuceneUtilBytesRef *value) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentFieldType_(self, name, value, OrgApacheLuceneDocumentStoredField_TYPE);
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(NSString *name, OrgApacheLuceneUtilBytesRef *value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withOrgApacheLuceneUtilBytesRef_, name, value)
}

OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(NSString *name, OrgApacheLuceneUtilBytesRef *value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withOrgApacheLuceneUtilBytesRef_, name, value)
}

void OrgApacheLuceneDocumentStoredField_initWithNSString_withNSString_(OrgApacheLuceneDocumentStoredField *self, NSString *name, NSString *value) {
  OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(self, name, value, OrgApacheLuceneDocumentStoredField_TYPE);
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withNSString_(NSString *name, NSString *value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withNSString_, name, value)
}

OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withNSString_(NSString *name, NSString *value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withNSString_, name, value)
}

void OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(OrgApacheLuceneDocumentStoredField *self, NSString *name, jint value) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, OrgApacheLuceneDocumentStoredField_TYPE);
  JreStrongAssign(&self->fieldsData_, JavaLangInteger_valueOfWithInt_(value));
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(NSString *name, jint value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withInt_, name, value)
}

OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(NSString *name, jint value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withInt_, name, value)
}

void OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(OrgApacheLuceneDocumentStoredField *self, NSString *name, jfloat value) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, OrgApacheLuceneDocumentStoredField_TYPE);
  JreStrongAssign(&self->fieldsData_, JavaLangFloat_valueOfWithFloat_(value));
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(NSString *name, jfloat value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withFloat_, name, value)
}

OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(NSString *name, jfloat value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withFloat_, name, value)
}

void OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(OrgApacheLuceneDocumentStoredField *self, NSString *name, jlong value) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, OrgApacheLuceneDocumentStoredField_TYPE);
  JreStrongAssign(&self->fieldsData_, JavaLangLong_valueOfWithLong_(value));
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(NSString *name, jlong value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withLong_, name, value)
}

OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(NSString *name, jlong value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withLong_, name, value)
}

void OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(OrgApacheLuceneDocumentStoredField *self, NSString *name, jdouble value) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, OrgApacheLuceneDocumentStoredField_TYPE);
  JreStrongAssign(&self->fieldsData_, JavaLangDouble_valueOfWithDouble_(value));
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(NSString *name, jdouble value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withDouble_, name, value)
}

OrgApacheLuceneDocumentStoredField *create_OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(NSString *name, jdouble value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStoredField, initWithNSString_withDouble_, name, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentStoredField)
