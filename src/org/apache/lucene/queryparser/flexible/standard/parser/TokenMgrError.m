//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/parser/TokenMgrError.java
//

#include "J2ObjC_source.h"
#include "java/lang/Error.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/TokenMgrError.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/parser/TokenMgrError must not be compiled with ARC (-fobjc-arc)"
#endif

/*!
 @brief The version identifier for this Serializable class.
 Increment only if the <i>serialized</i> form of the
  class changes.
 */
inline jlong OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_get_serialVersionUID(void);
#define OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError, serialVersionUID, jlong)

@implementation OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError

+ (jint)LEXICAL_ERROR {
  return OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_LEXICAL_ERROR;
}

+ (jint)STATIC_LEXER_ERROR {
  return OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_STATIC_LEXER_ERROR;
}

+ (jint)INVALID_LEXICAL_STATE {
  return OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_INVALID_LEXICAL_STATE;
}

+ (jint)LOOP_DETECTED {
  return OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_LOOP_DETECTED;
}

+ (NSString *)addEscapesWithNSString:(NSString *)str {
  return OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_addEscapesWithNSString_(str);
}

+ (NSString *)LexicalErrorWithBoolean:(jboolean)EOFSeen
                              withInt:(jint)lexState
                              withInt:(jint)errorLine
                              withInt:(jint)errorColumn
                         withNSString:(NSString *)errorAfter
                             withChar:(jchar)curChar {
  return OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar);
}

- (NSString *)getMessage {
  return [super getMessage];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)message
                         withInt:(jint)reason {
  OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithNSString_withInt_(self, message, reason);
  return self;
}

- (instancetype)initWithBoolean:(jboolean)EOFSeen
                        withInt:(jint)lexState
                        withInt:(jint)errorLine
                        withInt:(jint)errorColumn
                   withNSString:(NSString *)errorAfter
                       withChar:(jchar)curChar
                        withInt:(jint)reason {
  OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(self, EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar, reason);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1c, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xc, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(addEscapesWithNSString:);
  methods[1].selector = @selector(LexicalErrorWithBoolean:withInt:withInt:withInt:withNSString:withChar:);
  methods[2].selector = @selector(getMessage);
  methods[3].selector = @selector(init);
  methods[4].selector = @selector(initWithNSString:withInt:);
  methods[5].selector = @selector(initWithBoolean:withInt:withInt:withInt:withNSString:withChar:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "LEXICAL_ERROR", "I", .constantValue.asInt = OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_LEXICAL_ERROR, 0x18, -1, -1, -1, -1 },
    { "STATIC_LEXER_ERROR", "I", .constantValue.asInt = OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_STATIC_LEXER_ERROR, 0x18, -1, -1, -1, -1 },
    { "INVALID_LEXICAL_STATE", "I", .constantValue.asInt = OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_INVALID_LEXICAL_STATE, 0x18, -1, -1, -1, -1 },
    { "LOOP_DETECTED", "I", .constantValue.asInt = OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_LOOP_DETECTED, 0x18, -1, -1, -1, -1 },
    { "errorCode_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addEscapes", "LNSString;", "LexicalError", "ZIIILNSString;C", "LNSString;I", "ZIIILNSString;CI" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError = { "TokenMgrError", "org.apache.lucene.queryparser.flexible.standard.parser", ptrTable, methods, fields, 7, 0x1, 6, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError;
}

@end

NSString *OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_addEscapesWithNSString_(NSString *str) {
  OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initialize();
  JavaLangStringBuilder *retval = create_JavaLangStringBuilder_init();
  jchar ch;
  for (jint i = 0; i < [((NSString *) nil_chk(str)) java_length]; i++) {
    switch ([str charAtWithInt:i]) {
      case 0:
      continue;
      case 0x0008:
      [retval appendWithNSString:@"\\b"];
      continue;
      case 0x0009:
      [retval appendWithNSString:@"\\t"];
      continue;
      case 0x000a:
      [retval appendWithNSString:@"\\n"];
      continue;
      case 0x000c:
      [retval appendWithNSString:@"\\f"];
      continue;
      case 0x000d:
      [retval appendWithNSString:@"\\r"];
      continue;
      case '"':
      [retval appendWithNSString:@"\\\""];
      continue;
      case '\'':
      [retval appendWithNSString:@"\\'"];
      continue;
      case '\\':
      [retval appendWithNSString:@"\\\\"];
      continue;
      default:
      if ((ch = [str charAtWithInt:i]) < (jint) 0x20 || ch > (jint) 0x7e) {
        NSString *s = JreStrcat("$$", @"0000", JavaLangInteger_toStringWithInt_withInt_(ch, 16));
        [retval appendWithNSString:JreStrcat("$$", @"\\u", [s java_substring:[s java_length] - 4 endIndex:[s java_length]])];
      }
      else {
        [retval appendWithChar:ch];
      }
      continue;
    }
  }
  return [retval description];
}

NSString *OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar) {
  OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initialize();
  return (JreStrcat("$I$I$$$$C", @"Lexical error at line ", errorLine, @", column ", errorColumn, @".  Encountered: ", (EOFSeen ? @"<EOF> " : JreStrcat("$$I$", (JreStrcat("C$C", '"', OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_addEscapesWithNSString_(NSString_java_valueOfChar_(curChar)), '"')), @" (", (jint) curChar, @"), ")), @"after : \"", OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_addEscapesWithNSString_(errorAfter), '"'));
}

void OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_init(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *self) {
  JavaLangError_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *new_OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError, init)
}

OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *create_OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError, init)
}

void OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *self, NSString *message, jint reason) {
  JavaLangError_initWithNSString_(self, message);
  self->errorCode_ = reason;
}

OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *new_OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError, initWithNSString_withInt_, message, reason)
}

OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *create_OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError, initWithNSString_withInt_, message, reason)
}

void OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *self, jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) {
  OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithNSString_withInt_(self, OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar), reason);
}

OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *new_OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError, initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_, EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar, reason)
}

OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError *create_OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError, initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_, EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar, reason)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardParserTokenMgrError)
