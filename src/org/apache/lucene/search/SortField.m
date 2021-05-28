//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SortField.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Enum.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Comparator.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/FieldComparatorSource.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/StringHelper.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/SortField must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSortField () {
 @public
  NSString *field_;
  OrgApacheLuceneSearchSortField_Type *type_;
  OrgApacheLuceneSearchFieldComparatorSource *comparatorSource_;
  id<JavaUtilComparator> bytesComparator_;
}

- (void)initFieldTypeWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, type_, OrgApacheLuceneSearchSortField_Type *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, comparatorSource_, OrgApacheLuceneSearchFieldComparatorSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, bytesComparator_, id<JavaUtilComparator>)

__attribute__((unused)) static void OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type);

__attribute__((unused)) static void OrgApacheLuceneSearchSortField_Type_initWithNSString_withInt_(OrgApacheLuceneSearchSortField_Type *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneSearchSortField_1 : NSObject

- (instancetype)init;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortField_1)

__attribute__((unused)) static void OrgApacheLuceneSearchSortField_1_init(OrgApacheLuceneSearchSortField_1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchSortField_1 *new_OrgApacheLuceneSearchSortField_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSortField_1 *create_OrgApacheLuceneSearchSortField_1_init(void);

@interface OrgApacheLuceneSearchSortField_2 : NSObject

- (instancetype)init;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortField_2)

__attribute__((unused)) static void OrgApacheLuceneSearchSortField_2_init(OrgApacheLuceneSearchSortField_2 *self);

__attribute__((unused)) static OrgApacheLuceneSearchSortField_2 *new_OrgApacheLuceneSearchSortField_2_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSortField_2 *create_OrgApacheLuceneSearchSortField_2_init(void);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSortField)

OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_FIELD_SCORE;
OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_FIELD_DOC;
id OrgApacheLuceneSearchSortField_STRING_FIRST;
id OrgApacheLuceneSearchSortField_STRING_LAST;

@implementation OrgApacheLuceneSearchSortField

+ (OrgApacheLuceneSearchSortField *)FIELD_SCORE {
  return OrgApacheLuceneSearchSortField_FIELD_SCORE;
}

+ (OrgApacheLuceneSearchSortField *)FIELD_DOC {
  return OrgApacheLuceneSearchSortField_FIELD_DOC;
}

+ (id)STRING_FIRST {
  return OrgApacheLuceneSearchSortField_STRING_FIRST;
}

+ (id)STRING_LAST {
  return OrgApacheLuceneSearchSortField_STRING_LAST;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(self, field, type);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type
                     withBoolean:(jboolean)reverse {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(self, field, type, reverse);
  return self;
}

- (void)setMissingValueWithId:(id)missingValue {
  if (type_ == JreLoadEnum(OrgApacheLuceneSearchSortField_Type, STRING) || type_ == JreLoadEnum(OrgApacheLuceneSearchSortField_Type, STRING_VAL)) {
    if (!JreObjectEqualsEquals(missingValue, OrgApacheLuceneSearchSortField_STRING_FIRST) && !JreObjectEqualsEquals(missingValue, OrgApacheLuceneSearchSortField_STRING_LAST)) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"For STRING type, missing value must be either STRING_FIRST or STRING_LAST");
    }
  }
  else if (type_ != JreLoadEnum(OrgApacheLuceneSearchSortField_Type, INT) && type_ != JreLoadEnum(OrgApacheLuceneSearchSortField_Type, FLOAT) && type_ != JreLoadEnum(OrgApacheLuceneSearchSortField_Type, LONG) && type_ != JreLoadEnum(OrgApacheLuceneSearchSortField_Type, DOUBLE)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Missing value only works for numeric or STRING types");
  }
  JreStrongAssign(&self->missingValue_, missingValue);
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldComparatorSource:(OrgApacheLuceneSearchFieldComparatorSource *)comparator {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(self, field, comparator);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldComparatorSource:(OrgApacheLuceneSearchFieldComparatorSource *)comparator
                     withBoolean:(jboolean)reverse {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(self, field, comparator, reverse);
  return self;
}

- (void)initFieldTypeWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type {
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_Type_(self, field, type);
}

- (NSString *)getField {
  return field_;
}

- (OrgApacheLuceneSearchSortField_Type *)getType {
  return type_;
}

- (jboolean)getReverse {
  return reverse_;
}

- (OrgApacheLuceneSearchFieldComparatorSource *)getComparatorSource {
  return comparatorSource_;
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  switch ([type_ ordinal]) {
    case OrgApacheLuceneSearchSortField_Type_Enum_SCORE:
    [buffer appendWithNSString:@"<score>"];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_DOC:
    [buffer appendWithNSString:@"<doc>"];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_STRING:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<string: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_STRING_VAL:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<string_val: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_INT:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<int: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_LONG:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<long: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_FLOAT:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<float: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_DOUBLE:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<double: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_CUSTOM:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<custom:\""])) appendWithNSString:field_])) appendWithNSString:@"\": "])) appendWithId:comparatorSource_])) appendWithChar:'>'];
    break;
    case OrgApacheLuceneSearchSortField_Type_Enum_REWRITEABLE:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<rewriteable: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    default:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<???: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
  }
  if (reverse_) [buffer appendWithChar:'!'];
  if (missingValue_ != nil) {
    [buffer appendWithNSString:@" missingValue="];
    [buffer appendWithId:missingValue_];
  }
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (JreObjectEqualsEquals(self, o)) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchSortField class]])) return false;
  OrgApacheLuceneSearchSortField *other = (OrgApacheLuceneSearchSortField *) cast_chk(o, [OrgApacheLuceneSearchSortField class]);
  return (OrgApacheLuceneUtilStringHelper_equalsWithNSString_withNSString_(((OrgApacheLuceneSearchSortField *) nil_chk(other))->field_, self->field_) && other->type_ == self->type_ && other->reverse_ == self->reverse_ && (other->comparatorSource_ == nil ? self->comparatorSource_ == nil : [other->comparatorSource_ isEqual:self->comparatorSource_]));
}

- (NSUInteger)hash {
  jint hash_ = ((jint) [((OrgApacheLuceneSearchSortField_Type *) nil_chk(type_)) hash]) ^ (jint) 0x346565dd + ((jint) [JavaLangBoolean_valueOfWithBoolean_(reverse_) hash]) ^ (jint) 0xaf5998bb;
  if (field_ != nil) hash_ += ((jint) [field_ hash]) ^ (jint) 0xff5685dd;
  if (comparatorSource_ != nil) hash_ += ((jint) [comparatorSource_ hash]);
  return hash_;
}

- (void)setBytesComparatorWithJavaUtilComparator:(id<JavaUtilComparator>)b {
  JreStrongAssign(&bytesComparator_, b);
}

- (id<JavaUtilComparator>)getBytesComparator {
  return bytesComparator_;
}

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos {
  switch ([type_ ordinal]) {
    case OrgApacheLuceneSearchSortField_Type_Enum_SCORE:
    return create_OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(numHits);
    case OrgApacheLuceneSearchSortField_Type_Enum_DOC:
    return create_OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(numHits);
    case OrgApacheLuceneSearchSortField_Type_Enum_INT:
    return create_OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withJavaLangInteger_(numHits, field_, (JavaLangInteger *) cast_chk(missingValue_, [JavaLangInteger class]));
    case OrgApacheLuceneSearchSortField_Type_Enum_FLOAT:
    return create_OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withJavaLangFloat_(numHits, field_, (JavaLangFloat *) cast_chk(missingValue_, [JavaLangFloat class]));
    case OrgApacheLuceneSearchSortField_Type_Enum_LONG:
    return create_OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withJavaLangLong_(numHits, field_, (JavaLangLong *) cast_chk(missingValue_, [JavaLangLong class]));
    case OrgApacheLuceneSearchSortField_Type_Enum_DOUBLE:
    return create_OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withJavaLangDouble_(numHits, field_, (JavaLangDouble *) cast_chk(missingValue_, [JavaLangDouble class]));
    case OrgApacheLuceneSearchSortField_Type_Enum_CUSTOM:
    JreAssert(comparatorSource_ != nil, @"org/apache/lucene/search/SortField.java:347 condition failed: assert comparatorSource != null;");
    return [((OrgApacheLuceneSearchFieldComparatorSource *) nil_chk(comparatorSource_)) newComparatorWithNSString:field_ withInt:numHits withInt:sortPos withBoolean:reverse_];
    case OrgApacheLuceneSearchSortField_Type_Enum_STRING:
    return create_OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(numHits, field_, JreObjectEqualsEquals(missingValue_, OrgApacheLuceneSearchSortField_STRING_LAST));
    case OrgApacheLuceneSearchSortField_Type_Enum_STRING_VAL:
    return create_OrgApacheLuceneSearchFieldComparator_TermValComparator_initWithInt_withNSString_withBoolean_(numHits, field_, JreObjectEqualsEquals(missingValue_, OrgApacheLuceneSearchSortField_STRING_LAST));
    case OrgApacheLuceneSearchSortField_Type_Enum_REWRITEABLE:
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"SortField needs to be rewritten through Sort.rewrite(..) and SortField.rewrite(..)");
    default:
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@", @"Illegal sort type: ", type_));
  }
}

- (OrgApacheLuceneSearchSortField *)rewriteWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  return self;
}

- (jboolean)needsScores {
  return type_ == JreLoadEnum(OrgApacheLuceneSearchSortField_Type, SCORE);
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(type_);
  RELEASE_(comparatorSource_);
  RELEASE_(missingValue_);
  RELEASE_(bytesComparator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSortField_Type;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFieldComparatorSource;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, 12, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x1, -1, -1, -1, 13, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFieldComparator;", 0x1, 14, 15, 16, 17, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSortField;", 0x1, 18, 19, 16, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withOrgApacheLuceneSearchSortField_Type:);
  methods[1].selector = @selector(initWithNSString:withOrgApacheLuceneSearchSortField_Type:withBoolean:);
  methods[2].selector = @selector(setMissingValueWithId:);
  methods[3].selector = @selector(initWithNSString:withOrgApacheLuceneSearchFieldComparatorSource:);
  methods[4].selector = @selector(initWithNSString:withOrgApacheLuceneSearchFieldComparatorSource:withBoolean:);
  methods[5].selector = @selector(initFieldTypeWithNSString:withOrgApacheLuceneSearchSortField_Type:);
  methods[6].selector = @selector(getField);
  methods[7].selector = @selector(getType);
  methods[8].selector = @selector(getReverse);
  methods[9].selector = @selector(getComparatorSource);
  methods[10].selector = @selector(description);
  methods[11].selector = @selector(isEqual:);
  methods[12].selector = @selector(hash);
  methods[13].selector = @selector(setBytesComparatorWithJavaUtilComparator:);
  methods[14].selector = @selector(getBytesComparator);
  methods[15].selector = @selector(getComparatorWithInt:withInt:);
  methods[16].selector = @selector(rewriteWithOrgApacheLuceneSearchIndexSearcher:);
  methods[17].selector = @selector(needsScores);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FIELD_SCORE", "LOrgApacheLuceneSearchSortField;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "FIELD_DOC", "LOrgApacheLuceneSearchSortField;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "type_", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "reverse_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "comparatorSource_", "LOrgApacheLuceneSearchFieldComparatorSource;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "missingValue_", "LNSObject;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "STRING_FIRST", "LNSObject;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "STRING_LAST", "LNSObject;", .constantValue.asLong = 0, 0x19, -1, 23, -1, -1 },
    { "bytesComparator_", "LJavaUtilComparator;", .constantValue.asLong = 0, 0x2, -1, -1, 24, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LOrgApacheLuceneSearchSortField_Type;", "LNSString;LOrgApacheLuceneSearchSortField_Type;Z", "setMissingValue", "LNSObject;", "LNSString;LOrgApacheLuceneSearchFieldComparatorSource;", "LNSString;LOrgApacheLuceneSearchFieldComparatorSource;Z", "initFieldType", "toString", "equals", "hashCode", "setBytesComparator", "LJavaUtilComparator;", "(Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;)V", "()Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;", "getComparator", "II", "LJavaIoIOException;", "(II)Lorg/apache/lucene/search/FieldComparator<*>;", "rewrite", "LOrgApacheLuceneSearchIndexSearcher;", &OrgApacheLuceneSearchSortField_FIELD_SCORE, &OrgApacheLuceneSearchSortField_FIELD_DOC, &OrgApacheLuceneSearchSortField_STRING_FIRST, &OrgApacheLuceneSearchSortField_STRING_LAST, "Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;", "LOrgApacheLuceneSearchSortField_Type;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortField = { "SortField", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 18, 10, -1, 25, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSortField;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSortField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_FIELD_SCORE, new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(nil, JreLoadEnum(OrgApacheLuceneSearchSortField_Type, SCORE)));
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_FIELD_DOC, new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(nil, JreLoadEnum(OrgApacheLuceneSearchSortField_Type, DOC)));
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_STRING_FIRST, new_OrgApacheLuceneSearchSortField_1_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_STRING_LAST, new_OrgApacheLuceneSearchSortField_2_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSortField)
  }
}

@end

void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type) {
  NSObject_init(self);
  self->reverse_ = false;
  JreStrongAssign(&self->missingValue_, nil);
  JreStrongAssign(&self->bytesComparator_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_Type_(self, field, type);
}

OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(NSString *field, OrgApacheLuceneSearchSortField_Type *type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_, field, type)
}

OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_(NSString *field, OrgApacheLuceneSearchSortField_Type *type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_, field, type)
}

void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse) {
  NSObject_init(self);
  self->reverse_ = false;
  JreStrongAssign(&self->missingValue_, nil);
  JreStrongAssign(&self->bytesComparator_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_Type_(self, field, type);
  self->reverse_ = reverse;
}

OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_, field, type, reverse)
}

OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortField, initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_, field, type, reverse)
}

void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator) {
  NSObject_init(self);
  self->reverse_ = false;
  JreStrongAssign(&self->missingValue_, nil);
  JreStrongAssign(&self->bytesComparator_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_Type_(self, field, JreLoadEnum(OrgApacheLuceneSearchSortField_Type, CUSTOM));
  JreStrongAssign(&self->comparatorSource_, comparator);
}

OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortField, initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_, field, comparator)
}

OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortField, initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_, field, comparator)
}

void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator, jboolean reverse) {
  NSObject_init(self);
  self->reverse_ = false;
  JreStrongAssign(&self->missingValue_, nil);
  JreStrongAssign(&self->bytesComparator_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_Type_(self, field, JreLoadEnum(OrgApacheLuceneSearchSortField_Type, CUSTOM));
  self->reverse_ = reverse;
  JreStrongAssign(&self->comparatorSource_, comparator);
}

OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator, jboolean reverse) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortField, initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_, field, comparator, reverse)
}

OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator, jboolean reverse) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortField, initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_, field, comparator, reverse)
}

void OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_Type_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type) {
  JreStrongAssign(&self->type_, type);
  if (field == nil) {
    if (type != JreLoadEnum(OrgApacheLuceneSearchSortField_Type, SCORE) && type != JreLoadEnum(OrgApacheLuceneSearchSortField_Type, DOC)) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"field can only be null when type is SCORE or DOC");
    }
  }
  else {
    JreStrongAssign(&self->field_, field);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortField)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSortField_Type)

OrgApacheLuceneSearchSortField_Type *OrgApacheLuceneSearchSortField_Type_values_[11];

@implementation OrgApacheLuceneSearchSortField_Type

+ (OrgApacheLuceneSearchSortField_Type *)SCORE {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, SCORE);
}

+ (OrgApacheLuceneSearchSortField_Type *)DOC {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, DOC);
}

+ (OrgApacheLuceneSearchSortField_Type *)STRING {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, STRING);
}

+ (OrgApacheLuceneSearchSortField_Type *)INT {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, INT);
}

+ (OrgApacheLuceneSearchSortField_Type *)FLOAT {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, FLOAT);
}

+ (OrgApacheLuceneSearchSortField_Type *)LONG {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, LONG);
}

+ (OrgApacheLuceneSearchSortField_Type *)DOUBLE {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, DOUBLE);
}

+ (OrgApacheLuceneSearchSortField_Type *)CUSTOM {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, CUSTOM);
}

+ (OrgApacheLuceneSearchSortField_Type *)STRING_VAL {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, STRING_VAL);
}

+ (OrgApacheLuceneSearchSortField_Type *)BYTES {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, BYTES);
}

+ (OrgApacheLuceneSearchSortField_Type *)REWRITEABLE {
  return JreEnum(OrgApacheLuceneSearchSortField_Type, REWRITEABLE);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchSortField_Type_values();
}

+ (OrgApacheLuceneSearchSortField_Type *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchSortField_Type_valueOfWithNSString_(name);
}

- (OrgApacheLuceneSearchSortField_Type_Enum)toNSEnum {
  return (OrgApacheLuceneSearchSortField_Type_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LOrgApacheLuceneSearchSortField_Type;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSortField_Type;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SCORE", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "DOC", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "STRING", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "INT", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "FLOAT", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "LONG", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "DOUBLE", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "CUSTOM", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "STRING_VAL", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "BYTES", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 11, -1, -1 },
    { "REWRITEABLE", "LOrgApacheLuceneSearchSortField_Type;", .constantValue.asLong = 0, 0x4019, -1, 12, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(OrgApacheLuceneSearchSortField_Type, SCORE), &JreEnum(OrgApacheLuceneSearchSortField_Type, DOC), &JreEnum(OrgApacheLuceneSearchSortField_Type, STRING), &JreEnum(OrgApacheLuceneSearchSortField_Type, INT), &JreEnum(OrgApacheLuceneSearchSortField_Type, FLOAT), &JreEnum(OrgApacheLuceneSearchSortField_Type, LONG), &JreEnum(OrgApacheLuceneSearchSortField_Type, DOUBLE), &JreEnum(OrgApacheLuceneSearchSortField_Type, CUSTOM), &JreEnum(OrgApacheLuceneSearchSortField_Type, STRING_VAL), &JreEnum(OrgApacheLuceneSearchSortField_Type, BYTES), &JreEnum(OrgApacheLuceneSearchSortField_Type, REWRITEABLE), "LOrgApacheLuceneSearchSortField;", "Ljava/lang/Enum<Lorg/apache/lucene/search/SortField$Type;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortField_Type = { "Type", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x4019, 2, 11, 13, -1, -1, 14, -1 };
  return &_OrgApacheLuceneSearchSortField_Type;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSortField_Type class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 11 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 11; i++) {
      ((void)(OrgApacheLuceneSearchSortField_Type_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      OrgApacheLuceneSearchSortField_Type_initWithNSString_withInt_(e, JreEnumConstantName(OrgApacheLuceneSearchSortField_Type_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSortField_Type)
  }
}

@end

void OrgApacheLuceneSearchSortField_Type_initWithNSString_withInt_(OrgApacheLuceneSearchSortField_Type *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneSearchSortField_Type_values() {
  OrgApacheLuceneSearchSortField_Type_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchSortField_Type_values_ count:11 type:OrgApacheLuceneSearchSortField_Type_class_()];
}

OrgApacheLuceneSearchSortField_Type *OrgApacheLuceneSearchSortField_Type_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchSortField_Type_initialize();
  for (int i = 0; i < 11; i++) {
    OrgApacheLuceneSearchSortField_Type *e = OrgApacheLuceneSearchSortField_Type_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheLuceneSearchSortField_Type *OrgApacheLuceneSearchSortField_Type_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneSearchSortField_Type_initialize();
  if (ordinal >= 11) {
    return nil;
  }
  return OrgApacheLuceneSearchSortField_Type_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortField_Type)

@implementation OrgApacheLuceneSearchSortField_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSortField_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)description {
  return @"SortField.STRING_FIRST";
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toString", "LOrgApacheLuceneSearchSortField;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortField_1 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSortField_1;
}

@end

void OrgApacheLuceneSearchSortField_1_init(OrgApacheLuceneSearchSortField_1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSortField_1 *new_OrgApacheLuceneSearchSortField_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortField_1, init)
}

OrgApacheLuceneSearchSortField_1 *create_OrgApacheLuceneSearchSortField_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortField_1, init)
}

@implementation OrgApacheLuceneSearchSortField_2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSortField_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)description {
  return @"SortField.STRING_LAST";
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toString", "LOrgApacheLuceneSearchSortField;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortField_2 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSortField_2;
}

@end

void OrgApacheLuceneSearchSortField_2_init(OrgApacheLuceneSearchSortField_2 *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSortField_2 *new_OrgApacheLuceneSearchSortField_2_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortField_2, init)
}

OrgApacheLuceneSearchSortField_2 *create_OrgApacheLuceneSearchSortField_2_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortField_2, init)
}
