//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/Encoder.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/highlight/Encoder.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/highlight/Encoder must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchHighlightEncoder : NSObject

@end

@implementation OrgApacheLuceneSearchHighlightEncoder

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(encodeTextWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "encodeText", "LNSString;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightEncoder = { "Encoder", "org.apache.lucene.search.highlight", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchHighlightEncoder;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightEncoder)
