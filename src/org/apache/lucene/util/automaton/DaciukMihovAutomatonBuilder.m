//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "java/util/HashMap.h"
#include "java/util/IdentityHashMap.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/UnicodeUtil.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder () {
 @public
  /*!
   @brief A "registry" for state interning.
   */
  JavaUtilHashMap *stateRegistry_;
  /*!
   @brief Root automaton state.
   */
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *root_;
  /*!
   @brief Previous sequence added to the automaton in <code>add(CharsRef)</code>.
   */
  OrgApacheLuceneUtilCharsRef *previous_;
}

/*!
 @brief Internal recursive traversal for conversion.
 */
+ (jint)convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)a
withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)s
                                     withJavaUtilIdentityHashMap:(JavaUtilIdentityHashMap *)visited;

/*!
 @brief Copy <code>current</code> into an internal buffer.
 */
- (jboolean)setPreviousWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)current;

/*!
 @brief Replace last child of <code>state</code> with an already registered state
  or stateRegistry the last child state.
 */
- (void)replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state;

/*!
 @brief Add a suffix of <code>current</code> starting at <code>fromIndex</code>
  (inclusive) to state <code>state</code>.
 */
- (void)addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state
                                                          withJavaLangCharSequence:(id<JavaLangCharSequence>)current
                                                                           withInt:(jint)fromIndex;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, stateRegistry_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, root_, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, previous_, OrgApacheLuceneUtilCharsRef *)

/*!
 @brief A comparator used for enforcing sorted UTF8 order, used in assertions only.
 */
inline id<JavaUtilComparator> OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_get_comparator(void);
static id<JavaUtilComparator> OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_comparator;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, comparator, id<JavaUtilComparator>)

__attribute__((unused)) static jint OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *a, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *s, JavaUtilIdentityHashMap *visited);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_setPreviousWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilCharsRef *current);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaLangCharSequence_withInt_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state, id<JavaLangCharSequence> current, jint fromIndex);

@interface OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State ()

- (instancetype)init;

/*!
 @brief Compare two lists of objects for reference-equality.
 */
+ (jboolean)referenceEqualsWithNSObjectArray:(IOSObjectArray *)a1
                           withNSObjectArray:(IOSObjectArray *)a2;

@end

/*!
 @brief An empty set of labels.
 */
inline IOSIntArray *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_get_NO_LABELS(void);
static IOSIntArray *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_LABELS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State, NO_LABELS, IOSIntArray *)

/*!
 @brief An empty set of states.
 */
inline IOSObjectArray *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_get_NO_STATES(void);
static IOSObjectArray *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_STATES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State, NO_STATES, IOSObjectArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *self);

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *create_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(void);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_referenceEqualsWithNSObjectArray_withNSObjectArray_(IOSObjectArray *a1, IOSObjectArray *a2);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder)

@implementation OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder

- (instancetype)initPackagePrivate {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initPackagePrivate(self);
  return self;
}

- (void)addWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)current {
  JreAssert(stateRegistry_ != nil, @"Automaton already built.");
  JreAssert(previous_ == nil || [((id<JavaUtilComparator>) nil_chk(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_comparator)) compareWithId:previous_ withId:current] <= 0, JreStrcat("$@$@", @"Input must be in sorted UTF-8 order: ", previous_, @" >= ", current));
  JreAssert(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_setPreviousWithOrgApacheLuceneUtilCharsRef_(self, current), @"org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.java:220 condition failed: assert setPrevious(current);");
  jint pos = 0;
  jint max = [((OrgApacheLuceneUtilCharsRef *) nil_chk(current)) java_length];
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *next;
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state = JreRetainedLocalValue(root_);
  while (pos < max && (next = [((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state)) lastChildWithInt:JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(current, pos)]) != nil) {
    state = next;
    pos += JavaLangCharacter_charCountWithInt_(JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(current, pos));
  }
  if ([((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state)) hasChildren]) OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(self, state);
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaLangCharSequence_withInt_(self, state, current, pos);
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)complete {
  if (self->stateRegistry_ == nil) @throw create_JavaLangIllegalStateException_init();
  if ([((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(root_)) hasChildren]) OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(self, root_);
  JreStrongAssign(&stateRegistry_, nil);
  return root_;
}

+ (jint)convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)a
withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)s
                                     withJavaUtilIdentityHashMap:(JavaUtilIdentityHashMap *)visited {
  return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(a, s, visited);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)buildWithJavaUtilCollection:(id<JavaUtilCollection>)input {
  return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_buildWithJavaUtilCollection_(input);
}

- (jboolean)setPreviousWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)current {
  return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_setPreviousWithOrgApacheLuceneUtilCharsRef_(self, current);
}

- (void)replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(self, state);
}

- (void)addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state
                                                          withJavaLangCharSequence:(id<JavaLangCharSequence>)current
                                                                           withInt:(jint)fromIndex {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaLangCharSequence_withInt_(self, state, current, fromIndex);
}

- (void)dealloc {
  RELEASE_(stateRegistry_);
  RELEASE_(root_);
  RELEASE_(previous_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 2, 3, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 5, 6, -1, 7, -1, -1 },
    { NULL, "Z", 0x2, 8, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 11, 12, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(addWithOrgApacheLuceneUtilCharsRef:);
  methods[2].selector = @selector(complete);
  methods[3].selector = @selector(convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:withJavaUtilIdentityHashMap:);
  methods[4].selector = @selector(buildWithJavaUtilCollection:);
  methods[5].selector = @selector(setPreviousWithOrgApacheLuceneUtilCharsRef:);
  methods[6].selector = @selector(replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:);
  methods[7].selector = @selector(addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:withJavaLangCharSequence:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "stateRegistry_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x2, -1, -1, 13, -1 },
    { "root_", "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "previous_", "LOrgApacheLuceneUtilCharsRef;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "comparator", "LJavaUtilComparator;", .constantValue.asLong = 0, 0x1a, -1, 14, 15, -1 },
  };
  static const void *ptrTable[] = { "add", "LOrgApacheLuceneUtilCharsRef;", "convert", "LOrgApacheLuceneUtilAutomatonAutomaton_Builder;LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;LJavaUtilIdentityHashMap;", "(Lorg/apache/lucene/util/automaton/Automaton$Builder;Lorg/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder$State;Ljava/util/IdentityHashMap<Lorg/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder$State;Ljava/lang/Integer;>;)I", "build", "LJavaUtilCollection;", "(Ljava/util/Collection<Lorg/apache/lucene/util/BytesRef;>;)Lorg/apache/lucene/util/automaton/Automaton;", "setPrevious", "replaceOrRegister", "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", "addSuffix", "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;LJavaLangCharSequence;I", "Ljava/util/HashMap<Lorg/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder$State;Lorg/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder$State;>;", &OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_comparator, "Ljava/util/Comparator<Lorg/apache/lucene/util/CharsRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder = { "DaciukMihovAutomatonBuilder", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x10, 8, 4, -1, 10, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder class]) {
    JreStrongAssign(&OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_comparator, OrgApacheLuceneUtilCharsRef_getUTF16SortedAsUTF8Comparator());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder)
  }
}

@end

void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initPackagePrivate(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->stateRegistry_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->root_, new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init());
}

OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, initPackagePrivate)
}

OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *create_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, initPackagePrivate)
}

jint OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *a, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *s, JavaUtilIdentityHashMap *visited) {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initialize();
  JavaLangInteger *converted = JreRetainedLocalValue([((JavaUtilIdentityHashMap *) nil_chk(visited)) getWithId:s]);
  if (converted != nil) {
    return [converted intValue];
  }
  converted = JavaLangInteger_valueOfWithInt_([((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(a)) createState]);
  [a setAcceptWithInt:[converted intValue] withBoolean:((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(s))->is_final_];
  [visited putWithId:s withId:converted];
  jint i = 0;
  IOSIntArray *labels = s->labels_;
  {
    IOSObjectArray *a__ = s->states_;
    OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *target = *b__++;
      [a addTransitionWithInt:[converted intValue] withInt:OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(a, target, visited) withInt:IOSIntArray_Get(nil_chk(labels), i++)];
    }
  }
  return [converted intValue];
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_buildWithJavaUtilCollection_(id<JavaUtilCollection> input) {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initialize();
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *builder = create_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initPackagePrivate();
  IOSCharArray *chars = [IOSCharArray arrayWithLength:0];
  OrgApacheLuceneUtilCharsRef *ref = create_OrgApacheLuceneUtilCharsRef_init();
  for (OrgApacheLuceneUtilBytesRef * __strong b in nil_chk(input)) {
    chars = OrgApacheLuceneUtilArrayUtil_growWithCharArray_withInt_(chars, ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->length_);
    jint len = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withCharArray_(b, chars);
    JreStrongAssign(&ref->chars_, chars);
    ref->length_ = len;
    [builder addWithOrgApacheLuceneUtilCharsRef:ref];
  }
  OrgApacheLuceneUtilAutomatonAutomaton_Builder *a = create_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(a, [builder complete], create_JavaUtilIdentityHashMap_init());
  return [a finish];
}

jboolean OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_setPreviousWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilCharsRef *current) {
  JreStrongAssign(&self->previous_, OrgApacheLuceneUtilCharsRef_deepCopyOfWithOrgApacheLuceneUtilCharsRef_(current));
  return true;
}

void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state) {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *child = [((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state)) lastChild];
  if ([((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(child)) hasChildren]) OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(self, child);
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *registered = [((JavaUtilHashMap *) nil_chk(self->stateRegistry_)) getWithId:child];
  if (registered != nil) {
    [state replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:registered];
  }
  else {
    [((JavaUtilHashMap *) nil_chk(self->stateRegistry_)) putWithId:child withId:child];
  }
}

void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaLangCharSequence_withInt_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state, id<JavaLangCharSequence> current, jint fromIndex) {
  jint len = [((id<JavaLangCharSequence>) nil_chk(current)) java_length];
  while (fromIndex < len) {
    jint cp = JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(current, fromIndex);
    state = [((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state)) newStateWithInt:cp];
    fromIndex += JavaLangCharacter_charCountWithInt_(cp);
  }
  ((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state))->is_final_ = true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State)

@implementation OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)getStateWithInt:(jint)label {
  jint index = JavaUtilArrays_binarySearchWithIntArray_withInt_(labels_, label);
  return index >= 0 ? IOSObjectArray_Get(nil_chk(states_), index) : nil;
}

- (jboolean)isEqual:(id)obj {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *other = (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) cast_chk(obj, [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State class]);
  return is_final_ == ((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(other))->is_final_ && JavaUtilArrays_equalsWithIntArray_withIntArray_(self->labels_, other->labels_) && OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_referenceEqualsWithNSObjectArray_withNSObjectArray_(self->states_, other->states_);
}

- (NSUInteger)hash {
  jint hash_ = is_final_ ? 1 : 0;
  hash_ ^= hash_ * 31 + ((IOSIntArray *) nil_chk(self->labels_))->size_;
  {
    IOSIntArray *a__ = self->labels_;
    jint const *b__ = a__->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint c = *b__++;
      hash_ ^= hash_ * 31 + c;
    }
  }
  {
    IOSObjectArray *a__ = self->states_;
    OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *s = *b__++;
      hash_ ^= JavaLangSystem_identityHashCodeWithId_(s);
    }
  }
  return hash_;
}

- (jboolean)hasChildren {
  return ((IOSIntArray *) nil_chk(labels_))->size_ > 0;
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)newStateWithInt:(jint)label {
  JreAssert(JavaUtilArrays_binarySearchWithIntArray_withInt_(labels_, label) < 0, JreStrcat("$I", @"State already has transition labeled: ", label));
  JreStrongAssign(&labels_, JavaUtilArrays_copyOfWithIntArray_withInt_(labels_, ((IOSIntArray *) nil_chk(labels_))->size_ + 1));
  JreStrongAssign(&states_, JavaUtilArrays_copyOfWithNSObjectArray_withInt_(states_, ((IOSObjectArray *) nil_chk(states_))->size_ + 1));
  *IOSIntArray_GetRef(labels_, ((IOSIntArray *) nil_chk(labels_))->size_ - 1) = label;
  return IOSObjectArray_SetAndConsume(states_, ((IOSObjectArray *) nil_chk(states_))->size_ - 1, new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init());
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)lastChild {
  JreAssert([self hasChildren], @"No outgoing transitions.");
  return IOSObjectArray_Get(states_, ((IOSObjectArray *) nil_chk(states_))->size_ - 1);
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)lastChildWithInt:(jint)label {
  jint index = ((IOSIntArray *) nil_chk(labels_))->size_ - 1;
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *s = nil;
  if (index >= 0 && IOSIntArray_Get(labels_, index) == label) {
    s = IOSObjectArray_Get(nil_chk(states_), index);
  }
  JreAssert(JreObjectEqualsEquals(s, [self getStateWithInt:label]), @"org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.java:158 condition failed: assert s == getState(label);");
  return s;
}

- (void)replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state {
  JreAssert([self hasChildren], @"No outgoing transitions.");
  IOSObjectArray_Set(states_, ((IOSObjectArray *) nil_chk(states_))->size_ - 1, state);
}

+ (jboolean)referenceEqualsWithNSObjectArray:(IOSObjectArray *)a1
                           withNSObjectArray:(IOSObjectArray *)a2 {
  return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_referenceEqualsWithNSObjectArray_withNSObjectArray_(a1, a2);
}

- (void)dealloc {
  RELEASE_(labels_);
  RELEASE_(states_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", 0x0, 5, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", 0x0, 6, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getStateWithInt:);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(hasChildren);
  methods[5].selector = @selector(newStateWithInt:);
  methods[6].selector = @selector(lastChild);
  methods[7].selector = @selector(lastChildWithInt:);
  methods[8].selector = @selector(replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:);
  methods[9].selector = @selector(referenceEqualsWithNSObjectArray:withNSObjectArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NO_LABELS", "[I", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "NO_STATES", "[LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "labels_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "states_", "[LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "is_final_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getState", "I", "equals", "LNSObject;", "hashCode", "newState", "lastChild", "replaceLastChild", "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;", "referenceEquals", "[LNSObject;[LNSObject;", &OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_LABELS, &OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_STATES, "LOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State = { "State", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x1a, 10, 5, 13, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_LABELS, [IOSIntArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_STATES, [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_class_()]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State)
  }
}

@end

void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *self) {
  NSObject_init(self);
  JreStrongAssign(&self->labels_, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_LABELS);
  JreStrongAssign(&self->states_, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_STATES);
}

OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State, init)
}

OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *create_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State, init)
}

jboolean OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_referenceEqualsWithNSObjectArray_withNSObjectArray_(IOSObjectArray *a1, IOSObjectArray *a2) {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_initialize();
  if (((IOSObjectArray *) nil_chk(a1))->size_ != ((IOSObjectArray *) nil_chk(a2))->size_) {
    return false;
  }
  for (jint i = 0; i < a1->size_; i++) {
    if (!JreObjectEqualsEquals(IOSObjectArray_Get(a1, i), IOSObjectArray_Get(a2, i))) {
      return false;
    }
  }
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State)
