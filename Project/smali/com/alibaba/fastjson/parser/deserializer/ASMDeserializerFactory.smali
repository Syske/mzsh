.class public Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
.super Ljava/lang/Object;
.source "ASMDeserializerFactory.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    }
.end annotation


# static fields
.field private static final instance:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;


# instance fields
.field private final classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

.field private final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->instance:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "parentClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    .line 68
    return-void
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 1
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;

    .prologue
    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V

    .line 693
    return-void
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V
    .locals 5
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "flag"    # Z

    .prologue
    .line 696
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 697
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 699
    .local v2, "notSet_":Lcom/alibaba/fastjson/asm/Label;
    if-eqz p3, :cond_0

    .line 700
    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V

    .line 703
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 704
    .local v0, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 706
    if-eqz p3, :cond_1

    .line 707
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 696
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "notSet_":Lcom/alibaba/fastjson/asm/Label;
    :cond_2
    return-void
.end method

.method private _createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 8
    .param p1, "cw"    # Lcom/alibaba/fastjson/asm/ClassWriter;
    .param p2, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    .line 1379
    const/4 v1, 0x1

    const-string v2, "createInstance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v3, Ljava/lang/reflect/Type;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")Ljava/lang/Object;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v6

    .line 1383
    .local v6, "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v0, 0xbb

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1384
    const/16 v0, 0x59

    invoke-interface {v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1385
    const/16 v0, 0xb7

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-interface {v6, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const/16 v0, 0xb0

    invoke-interface {v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1388
    invoke-interface {v6, v7, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1389
    invoke-interface {v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 1390
    return-void
.end method

.method private _createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 7
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;

    .prologue
    const/16 v6, 0xb7

    const/16 v5, 0x3a

    const/16 v2, 0x19

    .line 674
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getBeanInfo()Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 675
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    const/16 v1, 0xbb

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 677
    const/16 v1, 0x59

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 678
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-interface {p2, v6, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v1, "instance"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 689
    :goto_0
    return-void

    .line 682
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 683
    const/4 v1, 0x1

    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 684
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createInstance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")Ljava/lang/Object;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/16 v1, 0xc0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 687
    const-string v1, "instance"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_0
.end method

.method private _deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
    .locals 5
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0x19

    .line 1103
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 1105
    const/4 v0, 0x1

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1106
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1114
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1115
    const/16 v0, 0xb9

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deserialze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljava/lang/reflect/Type;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const/16 v0, 0xc0

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1119
    const/16 v0, 0x3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1120
    return-void

    .line 1109
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1110
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1111
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFieldType"

    const-string v3, "(Ljava/lang/String;)Ljava/lang/reflect/Type;"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 7
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "reset_"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    const/16 v6, 0xb6

    const/16 v5, 0xb2

    const/16 v4, 0x19

    .line 813
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 820
    .local v0, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    const/16 v1, 0x15

    const-string v2, "matchedCount"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    .line 821
    const/16 v1, 0x9e

    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 828
    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 829
    const-class v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    const-string v3, "()I"

    invoke-interface {p2, v6, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-class v1, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RBRACE"

    const-string v3, "I"

    invoke-interface {p2, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/16 v1, 0xa0

    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 834
    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 835
    const-class v1, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMMA"

    const-string v3, "I"

    invoke-interface {p2, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-class v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nextToken"

    const-string v3, "(I)V"

    invoke-interface {p2, v6, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 839
    return-void
.end method

.method private _deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 11
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "reset_"    # Lcom/alibaba/fastjson/asm/Label;
    .param p4, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p7, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/asm/Label;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p5, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 844
    .local v4, "matched_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 846
    .local v1, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "matchField"

    const-string v9, "([C)Z"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/16 v6, 0x9a

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 848
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 849
    const/16 v6, 0x3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_asm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 851
    const/16 v6, 0xa7

    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 853
    invoke-interface {p2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 854
    move/from16 v0, p7

    invoke-virtual {p0, p2, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 856
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 857
    .local v5, "valueNotNull_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 858
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "token"

    const-string v9, "()I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const/16 v6, 0xb2

    const-class v7, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "NULL"

    const-string v9, "I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const/16 v6, 0xa0

    invoke-interface {p2, v6, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 862
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 863
    const/16 v6, 0xb2

    const-class v7, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "COMMA"

    const-string v9, "I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nextToken"

    const-string v9, "(I)V"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 867
    const/16 v6, 0xc0

    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 868
    const/16 v6, 0x3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_asm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 871
    invoke-interface {p2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 873
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 874
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "token"

    const-string v9, "()I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/16 v6, 0xb2

    const-class v7, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "LBRACKET"

    const-string v9, "I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const/16 v6, 0xa0

    invoke-interface {p2, v6, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 879
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    .line 880
    const/16 v6, 0xb9

    const-class v7, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getFastMatchToken"

    const-string v9, "()I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/16 v6, 0x36

    const-string v7, "fastMatchToken"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 883
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 884
    const/16 v6, 0x15

    const-string v7, "fastMatchToken"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 885
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nextToken"

    const-string v9, "(I)V"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p5

    invoke-direct {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;)V

    .line 889
    const/16 v6, 0x3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_asm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 892
    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 893
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getContext"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/16 v6, 0x3a

    const-string v7, "listContext"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 897
    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 898
    const/16 v6, 0x19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_asm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 899
    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 900
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "setContext"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const/16 v6, 0x57

    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 905
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 906
    .local v2, "loop_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 909
    .local v3, "loop_end_":Lcom/alibaba/fastjson/asm/Label;
    const/4 v6, 0x3

    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 910
    const/16 v6, 0x36

    const-string v7, "i"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 911
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 913
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 914
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "token"

    const-string v9, "()I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const/16 v6, 0xb2

    const-class v7, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "RBRACKET"

    const-string v9, "I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/16 v6, 0x9f

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 921
    const/16 v6, 0x19

    const/4 v7, 0x0

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 922
    const/16 v6, 0xb4

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_list_item_deser__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 925
    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 926
    const/16 v6, 0x15

    const-string v7, "i"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 927
    const/16 v6, 0xb8

    const-class v7, Ljava/lang/Integer;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "valueOf"

    const-string v9, "(I)Ljava/lang/Integer;"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const/16 v6, 0xb9

    const-class v7, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "deserialze"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/16 v6, 0x3a

    const-string v7, "list_item_value"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 933
    const-string v6, "i"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    .line 935
    const/16 v6, 0x19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_asm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 936
    const/16 v6, 0x19

    const-string v7, "list_item_value"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 937
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 938
    const/16 v6, 0xb9

    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "add"

    const-string v9, "(Ljava/lang/Object;)Z"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :goto_0
    const/16 v6, 0x57

    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 944
    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 945
    const/16 v6, 0x19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_asm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 946
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "checkListResolve"

    const-string v9, "(Ljava/util/Collection;)V"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 954
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "token"

    const-string v9, "()I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/16 v6, 0xb2

    const-class v7, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "COMMA"

    const-string v9, "I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/16 v6, 0xa0

    invoke-interface {p2, v6, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 958
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 959
    const/16 v6, 0x15

    const-string v7, "fastMatchToken"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 960
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nextToken"

    const-string v9, "(I)V"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const/16 v6, 0xa7

    invoke-interface {p2, v6, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 963
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 968
    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 969
    const/16 v6, 0x19

    const-string v7, "listContext"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 970
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "setContext"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")V"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 975
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "token"

    const-string v9, "()I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const/16 v6, 0xb2

    const-class v7, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "RBRACKET"

    const-string v9, "I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const/16 v6, 0xa0

    invoke-interface {p2, v6, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 979
    const/16 v6, 0x19

    const-string v7, "lexer"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 980
    const/16 v6, 0xb2

    const-class v7, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "COMMA"

    const-string v9, "I"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nextToken"

    const-string v9, "(I)V"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 985
    return-void

    .line 940
    :cond_0
    const/16 v6, 0xb6

    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "add"

    const-string v9, "(Ljava/lang/Object;)Z"

    invoke-interface {p2, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
    .locals 7
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "reset_"    # Lcom/alibaba/fastjson/asm/Label;
    .param p4, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p6, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/asm/Label;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 1039
    .local p5, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1040
    .local v1, "matched_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1042
    .local v0, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    const/16 v2, 0x19

    const-string v3, "lexer"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1043
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1044
    const/16 v2, 0xb4

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm_prefix__"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[C"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "matchField"

    const-string v5, "([C)Z"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const/16 v2, 0x9a

    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1047
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1048
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1050
    const/16 v2, 0xa7

    invoke-interface {p2, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1052
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1054
    invoke-virtual {p0, p2, p1, p6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 1057
    const/16 v2, 0x15

    const-string v3, "matchedCount"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1058
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1059
    const/16 v2, 0x60

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1060
    const/16 v2, 0x36

    const-string v3, "matchedCount"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1062
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    .line 1064
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1065
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getResolveStatus"

    const-string v5, "()I"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NeedToResolve"

    const-string v5, "I"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const/16 v2, 0xa0

    invoke-interface {p2, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1073
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1074
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getLastResolveTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/16 v2, 0x3a

    const-string v3, "resolveTask"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1078
    const/16 v2, 0x19

    const-string v3, "resolveTask"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1079
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1080
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "setOwnerContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const/16 v2, 0x19

    const-string v3, "resolveTask"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1087
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1088
    invoke-virtual {p4}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1089
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getFieldDeserializer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Ljava/lang/String;)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "setFieldDeserializer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1095
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NONE"

    const-string v5, "I"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "setResolveStatus"

    const-string v5, "(I)V"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1100
    return-void
.end method

.method private _getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
    .locals 9
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p4, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v8, 0xb6

    const/16 v7, 0xb4

    const/4 v6, 0x0

    const/16 v5, 0x19

    .line 988
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 989
    .local v0, "notNull_":Lcom/alibaba/fastjson/asm/Label;
    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 990
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_list_item_deser__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const/16 v1, 0xc7

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 994
    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 996
    const/4 v1, 0x1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 997
    const-class v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1000
    const-class v1, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDeserializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljava/lang/reflect/Type;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/16 v1, 0xb5

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm_list_item_deser__"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1007
    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1008
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_list_item_deser__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method private _getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 9
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/16 v8, 0xb6

    const/16 v7, 0xb4

    const/4 v6, 0x0

    const/16 v5, 0x19

    .line 1123
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1124
    .local v0, "notNull_":Lcom/alibaba/fastjson/asm/Label;
    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1125
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_deser__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const/16 v1, 0xc7

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1129
    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1131
    const/4 v1, 0x1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1132
    const-class v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1135
    const-class v1, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDeserializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljava/lang/reflect/Type;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const/16 v1, 0xb5

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm_deser__"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1143
    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1144
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_deser__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method private _init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 12
    .param p1, "cw"    # Lcom/alibaba/fastjson/asm/ClassWriter;
    .param p2, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    .line 1315
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 1316
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1320
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm_prefix__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[C"

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v8

    .line 1321
    .local v8, "fw":Lcom/alibaba/fastjson/asm/FieldVisitor;
    invoke-interface {v8}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    .line 1315
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1324
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v8    # "fw":Lcom/alibaba/fastjson/asm/FieldVisitor;
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    :goto_1
    if-ge v9, v11, :cond_4

    .line 1325
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1326
    .restart local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v6

    .line 1328
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1324
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1332
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1336
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1337
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm_list_item_deser__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v8

    .line 1339
    .restart local v8    # "fw":Lcom/alibaba/fastjson/asm/FieldVisitor;
    invoke-interface {v8}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    goto :goto_2

    .line 1341
    .end local v8    # "fw":Lcom/alibaba/fastjson/asm/FieldVisitor;
    :cond_3
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm_deser__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v8

    .line 1343
    .restart local v8    # "fw":Lcom/alibaba/fastjson/asm/FieldVisitor;
    invoke-interface {v8}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    goto :goto_2

    .line 1347
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v8    # "fw":Lcom/alibaba/fastjson/asm/FieldVisitor;
    :cond_4
    const/4 v1, 0x1

    const-string v2, "<init>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v3, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v3, Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")V"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v10

    .line 1349
    .local v10, "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1350
    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {v10, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1351
    const/16 v0, 0x19

    const/4 v1, 0x2

    invoke-interface {v10, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1352
    const/16 v0, 0xb7

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1356
    const/16 v0, 0xb4

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serializer"

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFieldDeserializerMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const/16 v0, 0x57

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1363
    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    :goto_3
    if-ge v9, v11, :cond_5

    .line 1364
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1366
    .restart local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1368
    const/16 v0, 0xb6

    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toCharArray"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, [C

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const/16 v0, 0xb5

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_prefix__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[C"

    invoke-interface {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1373
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_5
    const/16 v0, 0xb1

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1374
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-interface {v10, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1375
    invoke-interface {v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 1376
    return-void
.end method

.method private _isEnable(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/Feature;)V
    .locals 5
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 660
    const/16 v0, 0x19

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 661
    const/16 v0, 0xb2

    const-class v1, Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/Feature;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isEnabled"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method private _loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 8
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x2

    const/16 v5, 0x19

    .line 713
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 714
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 716
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1

    .line 717
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 719
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_2

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_3

    .line 724
    :cond_2
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 726
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 727
    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_5

    .line 728
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 729
    const/16 v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 730
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 731
    const/16 v3, 0xb6

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 734
    const/16 v3, 0x57

    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    .line 737
    :cond_4
    const/16 v3, 0xb5

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 740
    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_6

    .line 741
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 742
    const/16 v3, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 743
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_0

    .line 744
    :cond_6
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_7

    .line 745
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 746
    const/16 v3, 0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 747
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_0

    .line 748
    :cond_7
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_8

    .line 749
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 751
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_0

    .line 752
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 753
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 755
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_0

    .line 756
    :cond_9
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 757
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 758
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 759
    .local v2, "itemType":Ljava/lang/reflect/Type;
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_a

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 761
    const/16 v3, 0xc0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 765
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_0

    .line 763
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 774
    .end local v2    # "itemType":Ljava/lang/reflect/Type;
    :cond_b
    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 776
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_0
.end method

.method private _newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;)V
    .locals 4
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v2, 0xbb

    const/16 v3, 0xb7

    const/16 v1, 0x59

    .line 1013
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1015
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1016
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :goto_0
    const/16 v0, 0xc0

    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1035
    return-void

    .line 1017
    :cond_0
    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    const-class v0, Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1019
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1020
    const-class v0, Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_1
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1022
    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1023
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1024
    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_2
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1026
    const-class v0, Ljava/util/TreeSet;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1027
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1028
    const-class v0, Ljava/util/TreeSet;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_3
    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1031
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1032
    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 4
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 782
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 783
    const/16 v0, 0xb6

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    const/16 v0, 0x57

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    const/16 v0, 0xb5

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 7
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;

    .prologue
    const/16 v6, 0xb6

    const/16 v5, 0x19

    .line 796
    const/4 v1, 0x1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 797
    const-string v1, "context"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 798
    const-class v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 802
    .local v0, "endIf_":Lcom/alibaba/fastjson/asm/Label;
    const-string v1, "childContext"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 803
    const/16 v1, 0xc6

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 805
    const-string v1, "childContext"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 806
    const-string v1, "instance"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 807
    const-class v1, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setObject"

    const-string v3, "(Ljava/lang/Object;)V"

    invoke-interface {p2, v6, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 810
    return-void
.end method

.method private defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 5
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;

    .prologue
    .line 667
    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 668
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getLexer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/16 v0, 0xc0

    const-class v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 670
    const/16 v0, 0x3a

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 671
    return-void
.end method

.method private getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p1, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 641
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 643
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 645
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 646
    check-cast v1, Ljava/lang/Class;

    .line 647
    .local v1, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 648
    new-instance v2, Lcom/alibaba/fastjson/asm/ASMException;

    const-string v3, "can not create ASMParser"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/asm/ASMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    .end local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/asm/ASMException;

    const-string v3, "can not create ASMParser"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/asm/ASMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .restart local p1    # "fieldType":Ljava/lang/reflect/Type;
    :cond_1
    const-class v1, Ljava/lang/Object;

    .end local p1    # "fieldType":Ljava/lang/reflect/Type;
    :cond_2
    return-object v1
.end method

.method public static final getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->instance:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    return-object v0
.end method


# virtual methods
.method _deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 30
    .param p1, "cw"    # Lcom/alibaba/fastjson/asm/ClassWriter;
    .param p2, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    .line 267
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 272
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v7

    .line 273
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v20

    .line 275
    .local v20, "fieldType":Ljava/lang/reflect/Type;
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v7, v2, :cond_0

    .line 279
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    move-object/from16 v0, v20

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    .line 281
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .end local v20    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v20 .. v20}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v24, v2, v3

    .line 282
    .local v24, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v24

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 293
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "itemType":Ljava/lang/reflect/Type;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 295
    const/4 v3, 0x1

    const-string v4, "deserialze"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v10, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v10, Ljava/lang/reflect/Type;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v4

    .line 300
    .local v4, "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 301
    .local v5, "reset_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v29, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v29 .. v29}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 302
    .local v29, "super_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v28, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v28 .. v28}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 303
    .local v28, "return_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v17, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 305
    .local v17, "end_":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 307
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_isEnable(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/Feature;)V

    .line 308
    const/16 v2, 0x99

    move-object/from16 v0, v29

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 311
    new-instance v25, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v25 .. v25}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 312
    .local v25, "next_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 313
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "token"

    const-string v11, "()I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "LBRACKET"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/16 v2, 0xa0

    move-object/from16 v0, v25

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 317
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 318
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 319
    const/16 v2, 0x19

    const/4 v3, 0x2

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 320
    const/16 v2, 0x19

    const/4 v3, 0x3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 321
    const/16 v2, 0xb7

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v10, "deserialzeArrayMapping"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Ljava/lang/reflect/Type;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/16 v2, 0xb0

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 326
    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 330
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 332
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanType"

    const-string v11, "(Ljava/lang/String;)I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "NOT_MATCH"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/16 v2, 0x9f

    move-object/from16 v0, v29

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 337
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 338
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "getContext"

    const-string v11, "()Lcom/alibaba/fastjson/parser/ParseContext;"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v2, 0x3a

    const-string v3, "mark_context"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 343
    const/4 v2, 0x3

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 344
    const/16 v2, 0x36

    const-string v3, "matchedCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 349
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 350
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "getContext"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/16 v2, 0x3a

    const-string v3, "context"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 354
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 355
    const/16 v2, 0x19

    const-string v3, "context"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 356
    const/16 v2, 0x19

    const-string v3, "instance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 357
    const/16 v2, 0x19

    const/4 v3, 0x3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 358
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "setContext"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/16 v2, 0x3a

    const-string v3, "childContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 364
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 365
    const/16 v2, 0xb4

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "matchStat"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "END"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/16 v2, 0x9f

    move-object/from16 v0, v28

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 369
    const/4 v2, 0x3

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 370
    const/16 v2, 0x36

    const-string v3, "matchStat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v19

    .line 373
    .local v19, "fieldListSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    .line 374
    const/4 v2, 0x3

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 375
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_asm_flag_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v10, v9, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 373
    add-int/lit8 v9, v9, 0x20

    goto :goto_2

    .line 379
    :cond_4
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v9, v0, :cond_b

    .line 380
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 381
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v7

    .line 383
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v2, :cond_5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v7, v2, :cond_5

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v7, v2, :cond_5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_6

    .line 387
    :cond_5
    const/4 v2, 0x3

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 388
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 379
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 389
    :cond_6
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_7

    .line 390
    const/16 v2, 0x9

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 391
    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_4

    .line 392
    :cond_7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_8

    .line 393
    const/16 v2, 0xb

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 394
    const/16 v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_4

    .line 395
    :cond_8
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_9

    .line 396
    const/16 v2, 0xe

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 397
    const/16 v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_4

    .line 399
    :cond_9
    const-class v2, Ljava/lang/String;

    if-ne v7, v2, :cond_a

    .line 400
    new-instance v21, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 401
    .local v21, "flagEnd_":Lcom/alibaba/fastjson/asm/Label;
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_isEnable(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/Feature;)V

    .line 402
    const/16 v2, 0x99

    move-object/from16 v0, v21

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 404
    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 406
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 407
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "stringDefaultValue"

    const-string v11, "()Ljava/lang/String;"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .end local v21    # "flagEnd_":Lcom/alibaba/fastjson/asm/Label;
    :goto_5
    const/16 v2, 0xc0

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 414
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_4

    .line 410
    :cond_a
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_5

    .line 418
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    const/4 v9, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v9, v0, :cond_18

    .line 419
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getFieldInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 420
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v7

    .line 421
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v20

    .line 423
    .restart local v20    # "fieldType":Ljava/lang/reflect/Type;
    new-instance v27, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v27 .. v27}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 425
    .local v27, "notMatch_":Lcom/alibaba/fastjson/asm/Label;
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_d

    .line 426
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 427
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 428
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldBoolean"

    const-string v11, "([C)Z"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 550
    :goto_7
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 551
    const/16 v2, 0xb4

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "matchStat"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v22, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 554
    .local v22, "flag_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v2, 0x9e

    move-object/from16 v0, v22

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 556
    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 558
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 559
    const/16 v2, 0xb4

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "matchStat"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/16 v2, 0x59

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 561
    const/16 v2, 0x36

    const-string v3, "matchStat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 563
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "NOT_MATCH"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/16 v2, 0x9f

    invoke-interface {v4, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 571
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 572
    const/16 v2, 0xb4

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "matchStat"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/16 v2, 0x9e

    move-object/from16 v0, v27

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 576
    const/16 v2, 0x15

    const-string v3, "matchedCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 577
    const/4 v2, 0x4

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 578
    const/16 v2, 0x60

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 579
    const/16 v2, 0x36

    const-string v3, "matchedCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 581
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 582
    const/16 v2, 0xb4

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "matchStat"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "END"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/16 v2, 0x9f

    move-object/from16 v0, v17

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 590
    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 592
    add-int/lit8 v2, v19, -0x1

    if-ne v9, v2, :cond_c

    .line 593
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 594
    const/16 v2, 0xb4

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "matchStat"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "END"

    const-string v11, "I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/16 v2, 0xa0

    invoke-interface {v4, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 418
    .end local v22    # "flag_":Lcom/alibaba/fastjson/asm/Label;
    :cond_c
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 431
    :cond_d
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_e

    .line 432
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 433
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 434
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldInt"

    const-string v11, "([C)I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    .line 438
    :cond_e
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_f

    .line 439
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 440
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 441
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldInt"

    const-string v11, "([C)I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    .line 445
    :cond_f
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_10

    .line 446
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 447
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 448
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldInt"

    const-string v11, "([C)I"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    .line 452
    :cond_10
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_11

    .line 453
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 454
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 455
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldLong"

    const-string v11, "([C)J"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    .line 459
    :cond_11
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_12

    .line 460
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 461
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 462
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldFloat"

    const-string v11, "([C)F"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/16 v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    .line 466
    :cond_12
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, v2, :cond_13

    .line 467
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 468
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 469
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldDouble"

    const-string v11, "([C)D"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/16 v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    .line 473
    :cond_13
    const-class v2, Ljava/lang/String;

    if-ne v7, v2, :cond_14

    .line 474
    new-instance v26, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v26 .. v26}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 476
    .local v26, "notEnd_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v2, 0x15

    const-string v3, "matchStat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    .line 477
    const/4 v2, 0x7

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 478
    const/16 v2, 0xa0

    move-object/from16 v0, v26

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 480
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 481
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "stringDefaultValue"

    const-string v11, "()Ljava/lang/String;"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 484
    const/16 v2, 0xa7

    move-object/from16 v0, v27

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 486
    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 488
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 489
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 490
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldString"

    const-string v11, "([C)Ljava/lang/String;"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    .line 495
    .end local v26    # "notEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_14
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 496
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 497
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 498
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v18, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 500
    .local v18, "enumNull_":Lcom/alibaba/fastjson/asm/Label;
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 501
    const/16 v2, 0xc0

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 502
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 504
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 505
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "getSymbolTable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldSymbol"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "([C"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")Ljava/lang/String;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/16 v2, 0x59

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 511
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm_enumName"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 513
    const/16 v2, 0xc6

    move-object/from16 v0, v18

    invoke-interface {v4, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 514
    const/16 v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm_enumName"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 515
    const/16 v2, 0xb8

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "valueOf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(Ljava/lang/String;)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 518
    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_7

    .line 520
    .end local v18    # "enumNull_":Lcom/alibaba/fastjson/asm/Label;
    :cond_15
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 521
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 522
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 523
    const/16 v2, 0xb4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_asm_prefix__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[C"

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    .line 527
    .local v8, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v8, v2, :cond_16

    .line 528
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 529
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanFieldStringArray"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "([CLjava/lang/Class;)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Ljava/util/Collection;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_asm"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    :cond_16
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 533
    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V

    .line 535
    add-int/lit8 v2, v19, -0x1

    if-ne v9, v2, :cond_c

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_8

    .end local v8    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move/from16 v16, v9

    .line 541
    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    .line 543
    add-int/lit8 v2, v19, -0x1

    if-ne v9, v2, :cond_c

    .line 544
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_8

    .line 600
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "fieldType":Ljava/lang/reflect/Type;
    .end local v27    # "notMatch_":Lcom/alibaba/fastjson/asm/Label;
    :cond_18
    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 606
    :cond_19
    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 609
    const/16 v2, 0x19

    const-string v3, "instance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 610
    const/16 v2, 0xb0

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 612
    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 614
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 615
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 616
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 617
    const/16 v2, 0x19

    const/4 v3, 0x2

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 618
    const/16 v2, 0x19

    const/4 v3, 0x3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 619
    const/16 v2, 0x19

    const-string v3, "instance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 620
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "parseRest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Ljava/lang/reflect/Type;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/16 v2, 0xc0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getClazz()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 624
    const/16 v2, 0xb0

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 626
    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 627
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 628
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 629
    const/16 v2, 0x19

    const/4 v3, 0x2

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 630
    const/16 v2, 0x19

    const/4 v3, 0x3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 631
    const/16 v2, 0xb7

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "deserialze"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Ljava/lang/reflect/Type;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v2, v3, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/16 v2, 0xb0

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 636
    const/4 v2, 0x5

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getVariantCount()I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 637
    invoke-interface {v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_0
.end method

.method _deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 18
    .param p1, "cw"    # Lcom/alibaba/fastjson/asm/ClassWriter;
    .param p2, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    .line 127
    const/4 v3, 0x1

    const-string v4, "deserialzeArrayMapping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v5, Ljava/lang/reflect/Type;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v15

    .line 131
    .local v15, "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getBeanInfo()Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getSortedFieldList()Ljava/util/List;

    move-result-object v17

    .line 136
    .local v17, "sortedFieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v10

    .line 137
    .local v10, "fieldListSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_10

    .line 138
    add-int/lit8 v2, v10, -0x1

    if-ne v12, v2, :cond_1

    const/4 v14, 0x1

    .line 139
    .local v14, "last":Z
    :goto_1
    if-eqz v14, :cond_2

    const/16 v16, 0x5d

    .line 141
    .local v16, "seperator":C
    :goto_2
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 142
    .local v9, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v8

    .line 143
    .local v8, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 144
    .local v11, "fieldType":Ljava/lang/reflect/Type;
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v8, v2, :cond_0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v8, v2, :cond_0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_3

    .line 147
    :cond_0
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 148
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 149
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanInt"

    const-string v5, "(C)I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 137
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 138
    .end local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v11    # "fieldType":Ljava/lang/reflect/Type;
    .end local v14    # "last":Z
    .end local v16    # "seperator":C
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 139
    .restart local v14    # "last":Z
    :cond_2
    const/16 v16, 0x2c

    goto :goto_2

    .line 151
    .restart local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v11    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v16    # "seperator":C
    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_4

    .line 152
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 153
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 154
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanLong"

    const-string v5, "(C)J"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_3

    .line 156
    :cond_4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_5

    .line 157
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 158
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 159
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanBoolean"

    const-string v5, "(C)Z"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 161
    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_6

    .line 162
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 163
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 164
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanFloat"

    const-string v5, "(C)F"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 166
    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_7

    .line 167
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 168
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 169
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanDouble"

    const-string v5, "(C)D"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/16 v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 171
    :cond_7
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v2, :cond_8

    .line 172
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 173
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 174
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanString"

    const-string v5, "(C)Ljava/lang/String;"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 176
    const/16 v2, 0xb6

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "charAt"

    const-string v5, "(I)C"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 178
    :cond_8
    const-class v2, Ljava/lang/String;

    if-ne v8, v2, :cond_9

    .line 179
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 180
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 181
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanString"

    const-string v5, "(C)Ljava/lang/String;"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 183
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 184
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 185
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 186
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 187
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSymbolTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 190
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanEnum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Ljava/lang/Class;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "C)Ljava/lang/Enum;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 v2, 0xc0

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 193
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 194
    :cond_a
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v13

    .line 196
    .local v13, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v13, v2, :cond_b

    .line 197
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 198
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 199
    const/16 v2, 0x10

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 200
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanStringArray"

    const-string v5, "(Ljava/lang/Class;C)Ljava/util/Collection;"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 205
    :cond_b
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 206
    if-nez v12, :cond_c

    .line 207
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LBRACKET"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_4
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LBRACKET"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accept"

    const-string v5, "(II)V"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;)V

    .line 215
    const/16 v2, 0x59

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 216
    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15, v9, v13}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    .line 218
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 219
    invoke-static {v13}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 220
    const/16 v2, 0x19

    const/4 v3, 0x3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 221
    const/16 v2, 0xb8

    const-class v3, Lcom/alibaba/fastjson/util/ASMUtils;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parseArray"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Ljava/util/Collection;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Ljava/lang/reflect/Type;Ljava/lang/Object;)V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 209
    :cond_c
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COMMA"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 229
    .end local v13    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 230
    if-nez v12, :cond_e

    .line 231
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LBRACKET"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_5
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LBRACKET"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accept"

    const-string v5, "(II)V"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15, v9, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    .line 240
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 241
    if-nez v14, :cond_f

    .line 242
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COMMA"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LBRACKET"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_6
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accept"

    const-string v5, "(II)V"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 233
    :cond_e
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COMMA"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 245
    :cond_f
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RBRACKET"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EOF"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 253
    .end local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v11    # "fieldType":Ljava/lang/reflect/Type;
    .end local v14    # "last":Z
    .end local v16    # "seperator":C
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V

    .line 256
    const/16 v2, 0x19

    const-string v3, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 257
    const/16 v2, 0xb2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONToken;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COMMA"

    const-string v5, "I"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/16 v2, 0xb6

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nextToken"

    const-string v5, "(I)V"

    invoke-interface {v15, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/16 v2, 0x19

    const-string v3, "instance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 261
    const/16 v2, 0xb0

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 262
    const/4 v2, 0x5

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getVariantCount()I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 263
    invoke-interface {v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 264
    return-void
.end method

.method _isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V
    .locals 3
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p3, "i"    # I
    .param p4, "label"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    .line 119
    const/16 v0, 0x15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_asm_flag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p3, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 120
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 121
    const/16 v0, 0x7e

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 123
    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 124
    return-void
.end method

.method _setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
    .locals 3
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p3, "i"    # I

    .prologue
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_asm_flag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p3, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "varName":Ljava/lang/String;
    const/16 v1, 0x15

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 113
    const/4 v1, 0x1

    shl-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 114
    const/16 v1, 0x80

    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 115
    const/16 v1, 0x36

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 116
    return-void
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 3
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1150
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 1152
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_1

    .line 1153
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->createStringFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 1157
    :goto_0
    return-object v1

    .line 1156
    :cond_1
    invoke-virtual {p1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializerWithoutASM(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 1157
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    goto :goto_0
.end method

.method public createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 11
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support type :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getGenClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "className":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    .line 87
    .local v0, "cw":Lcom/alibaba/fastjson/asm/ClassWriter;
    const/16 v1, 0x31

    const/16 v2, 0x21

    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-result-object v6

    .line 91
    .local v6, "beanInfo":Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v2, 0x3

    invoke-direct {v1, v3, p1, v6, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 92
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v2, 0x3

    invoke-direct {v1, v3, p1, v6, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 93
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v2, 0x4

    invoke-direct {v1, v3, p1, v6, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 94
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v2, 0x4

    invoke-direct {v1, v3, p1, v6, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 95
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v7

    .line 101
    .local v7, "code":[B
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    const/4 v2, 0x0

    array-length v4, v7

    invoke-virtual {v1, v3, v7, v2, v4}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v9

    .line 103
    .local v9, "exampleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v4, Lcom/alibaba/fastjson/parser/ParserConfig;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-class v4, Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 104
    .local v8, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 106
    .local v10, "instance":Ljava/lang/Object;
    check-cast v10, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .end local v10    # "instance":Ljava/lang/Object;
    return-object v10
.end method

.method public createStringFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 22
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1162
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v17

    .line 1163
    .local v17, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v19

    .line 1165
    .local v19, "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->getGenFieldDeserializer(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v6

    .line 1167
    .local v6, "className":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    .line 1169
    .local v3, "cw":Lcom/alibaba/fastjson/asm/ClassWriter;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 1170
    const-class v21, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;

    .line 1178
    .local v21, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1179
    const/16 v13, 0xb9

    .line 1184
    .local v13, "INVAKE_TYPE":I
    :goto_1
    const/16 v4, 0x31

    const/16 v5, 0x21

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1187
    const/4 v8, 0x1

    const-string v9, "<init>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljava/lang/Class;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v20

    .line 1190
    .local v20, "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v4, 0x19

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1191
    const/16 v4, 0x19

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1192
    const/16 v4, 0x19

    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1193
    const/16 v4, 0x19

    const/4 v5, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1194
    const/16 v4, 0xb7

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "<init>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Ljava/lang/Class;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")V"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const/16 v4, 0xb1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1199
    const/4 v4, 0x4

    const/4 v5, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1200
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 1203
    if-eqz v19, :cond_0

    .line 1204
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_4

    .line 1205
    const/4 v8, 0x1

    const-string v9, "setValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "I)V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v20

    .line 1207
    const/16 v4, 0x19

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1208
    const/16 v4, 0xc0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1209
    const/16 v4, 0x15

    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1210
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-interface {v0, v13, v4, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const/16 v4, 0xb1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1214
    const/4 v4, 0x3

    const/4 v5, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1215
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 1245
    :cond_0
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v14

    .line 1247
    .local v14, "code":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    const/4 v5, 0x0

    array-length v7, v14

    invoke-virtual {v4, v6, v14, v5, v7}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v16

    .line 1249
    .local v16, "exampleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Lcom/alibaba/fastjson/parser/ParserConfig;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-class v7, Ljava/lang/Class;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-class v7, Lcom/alibaba/fastjson/util/FieldInfo;

    aput-object v7, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 1250
    .local v15, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v15, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 1252
    .local v18, "instance":Ljava/lang/Object;
    check-cast v18, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .end local v18    # "instance":Ljava/lang/Object;
    return-object v18

    .line 1171
    .end local v13    # "INVAKE_TYPE":I
    .end local v14    # "code":[B
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v16    # "exampleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    .end local v21    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_2

    .line 1172
    const-class v21, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;

    .restart local v21    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_0

    .line 1174
    .end local v21    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v21, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;

    .restart local v21    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_0

    .line 1181
    :cond_3
    const/16 v13, 0xb6

    .restart local v13    # "INVAKE_TYPE":I
    goto/16 :goto_1

    .line 1216
    .restart local v20    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    :cond_4
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_5

    .line 1217
    const/4 v8, 0x1

    const-string v9, "setValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "J)V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v20

    .line 1219
    const/16 v4, 0x19

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1220
    const/16 v4, 0xc0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1221
    const/16 v4, 0x16

    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1222
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-interface {v0, v13, v4, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const/16 v4, 0xb1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1226
    const/4 v4, 0x3

    const/4 v5, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1227
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_2

    .line 1230
    :cond_5
    const/4 v8, 0x1

    const-string v9, "setValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v20

    .line 1232
    const/16 v4, 0x19

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1233
    const/16 v4, 0xc0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1234
    const/16 v4, 0x19

    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1235
    const/16 v4, 0xc0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1236
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-interface {v0, v13, v4, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const/16 v4, 0xb1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1240
    const/4 v4, 0x3

    const/4 v5, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1241
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_2
.end method

.method public getGenClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fastjson_ASM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenFieldDeserializer(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;
    .locals 4
    .param p2, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fastjson_ASM__Field_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
