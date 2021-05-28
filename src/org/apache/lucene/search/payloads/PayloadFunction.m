//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadFunction.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/payloads/PayloadFunction.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/payloads/PayloadFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchPayloadsPayloadFunction

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchPayloadsPayloadFunction_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)currentScoreWithInt:(jint)docId
                 withNSString:(NSString *)field
                      withInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)numPayloadsSeen
                    withFloat:(jfloat)currentScore
                    withFloat:(jfloat)currentPayloadScore {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)docScoreWithInt:(jint)docId
             withNSString:(NSString *)field
                  withInt:(jint)numPayloadsSeen
                withFloat:(jfloat)payloadScore {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)docId
                                        withNSString:(NSString *)field
                                             withInt:(jint)numPayloadsSeen
                                           withFloat:(jfloat)payloadScore {
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([self docScoreWithInt:docId withNSString:field withInt:numPayloadsSeen withFloat:payloadScore], JreStrcat("$$", [[self java_getClass] getSimpleName], @".docScore()"), [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (NSUInteger)hash {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isEqual:(id)o {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 5, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(currentScoreWithInt:withNSString:withInt:withInt:withInt:withFloat:withFloat:);
  methods[2].selector = @selector(docScoreWithInt:withNSString:withInt:withFloat:);
  methods[3].selector = @selector(explainWithInt:withNSString:withInt:withFloat:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "currentScore", "ILNSString;IIIFF", "docScore", "ILNSString;IF", "explain", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadFunction = { "PayloadFunction", "org.apache.lucene.search.payloads", ptrTable, methods, NULL, 7, 0x401, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadFunction;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadFunction_init(OrgApacheLuceneSearchPayloadsPayloadFunction *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadFunction)
