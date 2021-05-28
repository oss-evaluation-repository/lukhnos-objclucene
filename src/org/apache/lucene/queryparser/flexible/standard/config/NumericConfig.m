//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/config/NumericConfig.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/text/NumberFormat.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/NumericConfig.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/config/NumericConfig must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig () {
 @public
  jint precisionStep_;
  JavaTextNumberFormat *format_;
  OrgApacheLuceneDocumentFieldType_NumericType *type_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig, format_, JavaTextNumberFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig, type_, OrgApacheLuceneDocumentFieldType_NumericType *)

@implementation OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig

- (instancetype)initWithInt:(jint)precisionStep
   withJavaTextNumberFormat:(JavaTextNumberFormat *)format
withOrgApacheLuceneDocumentFieldType_NumericType:(OrgApacheLuceneDocumentFieldType_NumericType *)type {
  OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_(self, precisionStep, format, type);
  return self;
}

- (jint)getPrecisionStep {
  return precisionStep_;
}

- (void)setPrecisionStepWithInt:(jint)precisionStep {
  self->precisionStep_ = precisionStep;
}

- (JavaTextNumberFormat *)getNumberFormat {
  return format_;
}

- (OrgApacheLuceneDocumentFieldType_NumericType *)getType {
  return type_;
}

- (void)setTypeWithOrgApacheLuceneDocumentFieldType_NumericType:(OrgApacheLuceneDocumentFieldType_NumericType *)type {
  if (type == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"type cannot be null!");
  }
  JreStrongAssign(&self->type_, type);
}

- (void)setNumberFormatWithJavaTextNumberFormat:(JavaTextNumberFormat *)format {
  if (format == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"format cannot be null!");
  }
  JreStrongAssign(&self->format_, format);
}

- (jboolean)isEqual:(id)obj {
  if (JreObjectEqualsEquals(obj, self)) return true;
  if ([obj isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig class]]) {
    OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *other = (OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *) obj;
    if (self->precisionStep_ == ((OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *) nil_chk(other))->precisionStep_ && self->type_ == other->type_ && (JreObjectEqualsEquals(self->format_, other->format_) || ([((JavaTextNumberFormat *) nil_chk(self->format_)) isEqual:other->format_]))) {
      return true;
    }
  }
  return false;
}

- (void)dealloc {
  RELEASE_(format_);
  RELEASE_(type_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaTextNumberFormat;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneDocumentFieldType_NumericType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withJavaTextNumberFormat:withOrgApacheLuceneDocumentFieldType_NumericType:);
  methods[1].selector = @selector(getPrecisionStep);
  methods[2].selector = @selector(setPrecisionStepWithInt:);
  methods[3].selector = @selector(getNumberFormat);
  methods[4].selector = @selector(getType);
  methods[5].selector = @selector(setTypeWithOrgApacheLuceneDocumentFieldType_NumericType:);
  methods[6].selector = @selector(setNumberFormatWithJavaTextNumberFormat:);
  methods[7].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "precisionStep_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "format_", "LJavaTextNumberFormat;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "type_", "LOrgApacheLuceneDocumentFieldType_NumericType;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILJavaTextNumberFormat;LOrgApacheLuceneDocumentFieldType_NumericType;", "setPrecisionStep", "I", "setType", "LOrgApacheLuceneDocumentFieldType_NumericType;", "setNumberFormat", "LJavaTextNumberFormat;", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig = { "NumericConfig", "org.apache.lucene.queryparser.flexible.standard.config", ptrTable, methods, fields, 7, 0x1, 8, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *self, jint precisionStep, JavaTextNumberFormat *format, OrgApacheLuceneDocumentFieldType_NumericType *type) {
  NSObject_init(self);
  [self setPrecisionStepWithInt:precisionStep];
  [self setNumberFormatWithJavaTextNumberFormat:format];
  [self setTypeWithOrgApacheLuceneDocumentFieldType_NumericType:type];
}

OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *new_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_(jint precisionStep, JavaTextNumberFormat *format, OrgApacheLuceneDocumentFieldType_NumericType *type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig, initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_, precisionStep, format, type)
}

OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *create_OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_(jint precisionStep, JavaTextNumberFormat *format, OrgApacheLuceneDocumentFieldType_NumericType *type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig, initWithInt_withJavaTextNumberFormat_withOrgApacheLuceneDocumentFieldType_NumericType_, precisionStep, format, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig)
