//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/PairOutputs.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/fst/Outputs.h"
#include "org/apache/lucene/util/fst/PairOutputs.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/fst/PairOutputs must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneUtilFstPairOutputs () {
 @public
  OrgApacheLuceneUtilFstPairOutputs_Pair *NO_OUTPUT_;
  OrgApacheLuceneUtilFstOutputs *outputs1_;
  OrgApacheLuceneUtilFstOutputs *outputs2_;
}

- (jboolean)validWithOrgApacheLuceneUtilFstPairOutputs_Pair:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstPairOutputs, NO_OUTPUT_, OrgApacheLuceneUtilFstPairOutputs_Pair *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstPairOutputs, outputs1_, OrgApacheLuceneUtilFstOutputs *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstPairOutputs, outputs2_, OrgApacheLuceneUtilFstOutputs *)

inline jlong OrgApacheLuceneUtilFstPairOutputs_get_BASE_NUM_BYTES(void);
static jlong OrgApacheLuceneUtilFstPairOutputs_BASE_NUM_BYTES;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilFstPairOutputs, BASE_NUM_BYTES, jlong)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(OrgApacheLuceneUtilFstPairOutputs *self, OrgApacheLuceneUtilFstPairOutputs_Pair *pair);

@interface OrgApacheLuceneUtilFstPairOutputs_Pair ()

- (instancetype)initWithId:(id)output1
                    withId:(id)output2;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(OrgApacheLuceneUtilFstPairOutputs_Pair *self, id output1, id output2);

__attribute__((unused)) static OrgApacheLuceneUtilFstPairOutputs_Pair *new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(id output1, id output2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilFstPairOutputs_Pair *create_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(id output1, id output2);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilFstPairOutputs)

@implementation OrgApacheLuceneUtilFstPairOutputs

- (instancetype)initWithOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs1
                    withOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs2 {
  OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(self, outputs1, outputs2);
  return self;
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)newPairWithId:(id)a
                                                   withId:(id)b {
  if ([nil_chk(a) isEqual:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) getNoOutput]]) {
    a = [outputs1_ getNoOutput];
  }
  if ([nil_chk(b) isEqual:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) getNoOutput]]) {
    b = [outputs2_ getNoOutput];
  }
  if (JreObjectEqualsEquals(a, [outputs1_ getNoOutput]) && JreObjectEqualsEquals(b, [outputs2_ getNoOutput])) {
    return NO_OUTPUT_;
  }
  else {
    OrgApacheLuceneUtilFstPairOutputs_Pair *p = create_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(a, b);
    JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, p), @"org/apache/lucene/util/fst/PairOutputs.java:91 condition failed: assert valid(p);");
    return p;
  }
}

- (jboolean)validWithOrgApacheLuceneUtilFstPairOutputs_Pair:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair {
  return OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, pair);
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)commonWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair1
                                                  withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair2 {
  JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, pair1), @"org/apache/lucene/util/fst/PairOutputs.java:122 condition failed: assert valid(pair1);");
  JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, pair2), @"org/apache/lucene/util/fst/PairOutputs.java:123 condition failed: assert valid(pair2);");
  return [self newPairWithId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) commonWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(pair1))->output1_ withId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(pair2))->output1_] withId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) commonWithId:pair1->output2_ withId:pair2->output2_]];
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)subtractWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output
                                                    withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)inc {
  JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, output), @"org/apache/lucene/util/fst/PairOutputs.java:130 condition failed: assert valid(output);");
  JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, inc), @"org/apache/lucene/util/fst/PairOutputs.java:131 condition failed: assert valid(inc);");
  return [self newPairWithId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) subtractWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_ withId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(inc))->output1_] withId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) subtractWithId:output->output2_ withId:inc->output2_]];
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)addWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)prefix
                                               withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output {
  JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, prefix), @"org/apache/lucene/util/fst/PairOutputs.java:138 condition failed: assert valid(prefix);");
  JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, output), @"org/apache/lucene/util/fst/PairOutputs.java:139 condition failed: assert valid(output);");
  return [self newPairWithId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) addWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(prefix))->output1_ withId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_] withId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) addWithId:prefix->output2_ withId:output->output2_]];
}

- (void)writeWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)writer {
  JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, output), @"org/apache/lucene/util/fst/PairOutputs.java:146 condition failed: assert valid(output);");
  [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) writeWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_ withOrgApacheLuceneStoreDataOutput:writer];
  [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) writeWithId:output->output2_ withOrgApacheLuceneStoreDataOutput:writer];
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  id output1 = JreRetainedLocalValue([((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) readWithOrgApacheLuceneStoreDataInput:inArg]);
  id output2 = JreRetainedLocalValue([((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) readWithOrgApacheLuceneStoreDataInput:inArg]);
  return [self newPairWithId:output1 withId:output2];
}

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) skipOutputWithOrgApacheLuceneStoreDataInput:inArg];
  [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) skipOutputWithOrgApacheLuceneStoreDataInput:inArg];
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)getNoOutput {
  return NO_OUTPUT_;
}

- (NSString *)outputToStringWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output {
  JreAssert(OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, output), @"org/apache/lucene/util/fst/PairOutputs.java:171 condition failed: assert valid(output);");
  return JreStrcat("$$C$C", @"<pair:", [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) outputToStringWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_], ',', [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) outputToStringWithId:output->output2_], '>');
}

- (NSString *)description {
  return JreStrcat("$@C@C", @"PairOutputs<", outputs1_, ',', outputs2_, '>');
}

- (jlong)ramBytesUsedWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output {
  jlong ramBytesUsed = OrgApacheLuceneUtilFstPairOutputs_BASE_NUM_BYTES;
  if (((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_ != nil) {
    ramBytesUsed += [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) ramBytesUsedWithId:output->output1_];
  }
  if (output->output2_ != nil) {
    ramBytesUsed += [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) ramBytesUsedWithId:output->output2_];
  }
  return ramBytesUsed;
}

- (void)dealloc {
  RELEASE_(NO_OUTPUT_);
  RELEASE_(outputs1_);
  RELEASE_(outputs2_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstPairOutputs_Pair;", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "Z", 0x2, 5, 6, -1, 7, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstPairOutputs_Pair;", 0x1, 8, 9, -1, 10, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstPairOutputs_Pair;", 0x1, 11, 9, -1, 10, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstPairOutputs_Pair;", 0x1, 12, 9, -1, 10, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 15, 16, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstPairOutputs_Pair;", 0x1, 17, 18, 15, 19, -1, -1 },
    { NULL, "V", 0x1, 20, 18, 15, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstPairOutputs_Pair;", 0x1, -1, -1, -1, 21, -1, -1 },
    { NULL, "LNSString;", 0x1, 22, 6, -1, 23, -1, -1 },
    { NULL, "LNSString;", 0x1, 24, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 25, 6, -1, 26, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilFstOutputs:withOrgApacheLuceneUtilFstOutputs:);
  methods[1].selector = @selector(newPairWithId:withId:);
  methods[2].selector = @selector(validWithOrgApacheLuceneUtilFstPairOutputs_Pair:);
  methods[3].selector = @selector(commonWithId:withId:);
  methods[4].selector = @selector(subtractWithId:withId:);
  methods[5].selector = @selector(addWithId:withId:);
  methods[6].selector = @selector(writeWithId:withOrgApacheLuceneStoreDataOutput:);
  methods[7].selector = @selector(readWithOrgApacheLuceneStoreDataInput:);
  methods[8].selector = @selector(skipOutputWithOrgApacheLuceneStoreDataInput:);
  methods[9].selector = @selector(getNoOutput);
  methods[10].selector = @selector(outputToStringWithId:);
  methods[11].selector = @selector(description);
  methods[12].selector = @selector(ramBytesUsedWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NO_OUTPUT_", "LOrgApacheLuceneUtilFstPairOutputs_Pair;", .constantValue.asLong = 0, 0x12, -1, -1, 27, -1 },
    { "outputs1_", "LOrgApacheLuceneUtilFstOutputs;", .constantValue.asLong = 0, 0x12, -1, -1, 28, -1 },
    { "outputs2_", "LOrgApacheLuceneUtilFstOutputs;", .constantValue.asLong = 0, 0x12, -1, -1, 29, -1 },
    { "BASE_NUM_BYTES", "J", .constantValue.asLong = 0, 0x1a, -1, 30, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilFstOutputs;LOrgApacheLuceneUtilFstOutputs;", "(Lorg/apache/lucene/util/fst/Outputs<TA;>;Lorg/apache/lucene/util/fst/Outputs<TB;>;)V", "newPair", "LNSObject;LNSObject;", "(TA;TB;)Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;", "valid", "LOrgApacheLuceneUtilFstPairOutputs_Pair;", "(Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;)Z", "common", "LOrgApacheLuceneUtilFstPairOutputs_Pair;LOrgApacheLuceneUtilFstPairOutputs_Pair;", "(Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;)Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;", "subtract", "add", "write", "LOrgApacheLuceneUtilFstPairOutputs_Pair;LOrgApacheLuceneStoreDataOutput;", "LJavaIoIOException;", "(Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;Lorg/apache/lucene/store/DataOutput;)V", "read", "LOrgApacheLuceneStoreDataInput;", "(Lorg/apache/lucene/store/DataInput;)Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;", "skipOutput", "()Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;", "outputToString", "(Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;)Ljava/lang/String;", "toString", "ramBytesUsed", "(Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;)J", "Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;", "Lorg/apache/lucene/util/fst/Outputs<TA;>;", "Lorg/apache/lucene/util/fst/Outputs<TB;>;", &OrgApacheLuceneUtilFstPairOutputs_BASE_NUM_BYTES, "<A:Ljava/lang/Object;B:Ljava/lang/Object;>Lorg/apache/lucene/util/fst/Outputs<Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstPairOutputs = { "PairOutputs", "org.apache.lucene.util.fst", ptrTable, methods, fields, 7, 0x1, 13, 4, -1, 6, -1, 31, -1 };
  return &_OrgApacheLuceneUtilFstPairOutputs;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilFstPairOutputs class]) {
    OrgApacheLuceneUtilFstPairOutputs_BASE_NUM_BYTES = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(create_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(nil, nil));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilFstPairOutputs)
  }
}

@end

void OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstPairOutputs *self, OrgApacheLuceneUtilFstOutputs *outputs1, OrgApacheLuceneUtilFstOutputs *outputs2) {
  OrgApacheLuceneUtilFstOutputs_init(self);
  JreStrongAssign(&self->outputs1_, outputs1);
  JreStrongAssign(&self->outputs2_, outputs2);
  JreStrongAssignAndConsume(&self->NO_OUTPUT_, new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_([((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1)) getNoOutput], [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2)) getNoOutput]));
}

OrgApacheLuceneUtilFstPairOutputs *new_OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstOutputs *outputs1, OrgApacheLuceneUtilFstOutputs *outputs2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstPairOutputs, initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_, outputs1, outputs2)
}

OrgApacheLuceneUtilFstPairOutputs *create_OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstOutputs *outputs1, OrgApacheLuceneUtilFstOutputs *outputs2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstPairOutputs, initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_, outputs1, outputs2)
}

jboolean OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(OrgApacheLuceneUtilFstPairOutputs *self, OrgApacheLuceneUtilFstPairOutputs_Pair *pair) {
  jboolean noOutput1 = [nil_chk(((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(pair))->output1_) isEqual:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(self->outputs1_)) getNoOutput]];
  jboolean noOutput2 = [nil_chk(pair->output2_) isEqual:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(self->outputs2_)) getNoOutput]];
  if (noOutput1 && !JreObjectEqualsEquals(pair->output1_, [self->outputs1_ getNoOutput])) {
    return false;
  }
  if (noOutput2 && !JreObjectEqualsEquals(pair->output2_, [self->outputs2_ getNoOutput])) {
    return false;
  }
  if (noOutput1 && noOutput2) {
    if (!JreObjectEqualsEquals(pair, self->NO_OUTPUT_)) {
      return false;
    }
    else {
      return true;
    }
  }
  else {
    return true;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstPairOutputs)

@implementation OrgApacheLuceneUtilFstPairOutputs_Pair

- (instancetype)initWithId:(id)output1
                    withId:(id)output2 {
  OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(self, output1, output2);
  return self;
}

- (jboolean)isEqual:(id)other {
  if (JreObjectEqualsEquals(other, self)) {
    return true;
  }
  else if ([other isKindOfClass:[OrgApacheLuceneUtilFstPairOutputs_Pair class]]) {
    OrgApacheLuceneUtilFstPairOutputs_Pair *pair = (OrgApacheLuceneUtilFstPairOutputs_Pair *) other;
    return [nil_chk(output1_) isEqual:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(pair))->output1_] && [nil_chk(output2_) isEqual:pair->output2_];
  }
  else {
    return false;
  }
}

- (NSUInteger)hash {
  return ((jint) [nil_chk(output1_) hash]) + ((jint) [nil_chk(output2_) hash]);
}

- (NSString *)description {
  return JreStrcat("$@C@C", @"Pair(", output1_, ',', output2_, ')');
}

- (void)dealloc {
  RELEASE_(output1_);
  RELEASE_(output2_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithId:withId:);
  methods[1].selector = @selector(isEqual:);
  methods[2].selector = @selector(hash);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "output1_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 6, -1 },
    { "output2_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;LNSObject;", "(TA;TB;)V", "equals", "LNSObject;", "hashCode", "toString", "TA;", "TB;", "LOrgApacheLuceneUtilFstPairOutputs;", "<A:Ljava/lang/Object;B:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstPairOutputs_Pair = { "Pair", "org.apache.lucene.util.fst", ptrTable, methods, fields, 7, 0x9, 4, 2, 8, -1, -1, 9, -1 };
  return &_OrgApacheLuceneUtilFstPairOutputs_Pair;
}

@end

void OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(OrgApacheLuceneUtilFstPairOutputs_Pair *self, id output1, id output2) {
  NSObject_init(self);
  JreStrongAssign(&self->output1_, output1);
  JreStrongAssign(&self->output2_, output2);
}

OrgApacheLuceneUtilFstPairOutputs_Pair *new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(id output1, id output2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstPairOutputs_Pair, initWithId_withId_, output1, output2)
}

OrgApacheLuceneUtilFstPairOutputs_Pair *create_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(id output1, id output2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstPairOutputs_Pair, initWithId_withId_, output1, output2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstPairOutputs_Pair)
