//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexableField.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexableField.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/IndexableField must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexIndexableField : NSObject

@end

@implementation OrgApacheLuceneIndexIndexableField

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexableFieldType;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaIoReader;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSNumber;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x401, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(name);
  methods[1].selector = @selector(fieldType);
  methods[2].selector = @selector(boost);
  methods[3].selector = @selector(binaryValue);
  methods[4].selector = @selector(stringValue);
  methods[5].selector = @selector(readerValue);
  methods[6].selector = @selector(numericValue);
  methods[7].selector = @selector(tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "tokenStream", "LOrgApacheLuceneAnalysisAnalyzer;LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexableField = { "IndexableField", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x609, 8, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexIndexableField;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexableField)
