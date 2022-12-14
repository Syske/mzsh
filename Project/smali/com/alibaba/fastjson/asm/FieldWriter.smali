.class final Lcom/alibaba/fastjson/asm/FieldWriter;
.super Ljava/lang/Object;
.source "FieldWriter.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/FieldVisitor;


# instance fields
.field private final access:I

.field private final desc:I

.field private final name:I

.field next:Lcom/alibaba/fastjson/asm/FieldWriter;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cw"    # Lcom/alibaba/fastjson/asm/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    if-nez v0, :cond_0

    .line 75
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 79
    :goto_0
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->lastField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 80
    iput p2, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->access:I

    .line 81
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->name:I

    .line 82
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->desc:I

    .line 83
    return-void

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->lastField:Lcom/alibaba/fastjson/asm/FieldWriter;

    iput-object p0, v0, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_0
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x8

    return v0
.end method

.method put(Lcom/alibaba/fastjson/asm/ByteVector;)V
    .locals 5
    .param p1, "out"    # Lcom/alibaba/fastjson/asm/ByteVector;

    .prologue
    .line 111
    const/high16 v2, 0x60000

    iget v3, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->access:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x40

    or-int v1, v2, v3

    .line 112
    .local v1, "mask":I
    iget v2, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->access:I

    xor-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->name:I

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->desc:I

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "attributeCount":I
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 115
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
