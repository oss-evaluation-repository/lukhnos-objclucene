//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/Dictionary.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/spell/Dictionary.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/spell/Dictionary must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSpellDictionary : NSObject

@end

@implementation OrgApacheLuceneSearchSpellDictionary

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneSearchSuggestInputIterator;", 0x401, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getEntryIterator);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellDictionary = { "Dictionary", "org.apache.lucene.search.spell", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpellDictionary;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellDictionary)
