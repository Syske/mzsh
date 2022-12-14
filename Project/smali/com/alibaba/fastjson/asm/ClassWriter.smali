.class public Lcom/alibaba/fastjson/asm/ClassWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# static fields
.field static final ACC_SYNTHETIC_ATTRIBUTE:I = 0x40000

.field static final CLASS:I = 0x7

.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final IINC_INSN:I = 0xc

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INT:I = 0x3

.field static final ITFDYNMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0x9

.field static final LABEL_INSN:I = 0x8

.field static final LDCW_INSN:I = 0xb

.field static final LDC_INSN:I = 0xa

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xe

.field static final MANA_INSN:I = 0xf

.field static final METH:I = 0xa

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xd

.field static final TYPE:[B

.field static final TYPE_INSN:I = 0x5

.field static final TYPE_MERGED:I = 0xf

.field static final TYPE_NORMAL:I = 0xd

.field static final TYPE_UNINIT:I = 0xe

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x10


# instance fields
.field private access:I

.field firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

.field firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

.field index:I

.field private interfaceCount:I

.field private interfaces:[I

.field items:[Lcom/alibaba/fastjson/asm/Item;

.field final key:Lcom/alibaba/fastjson/asm/Item;

.field final key2:Lcom/alibaba/fastjson/asm/Item;

.field final key3:Lcom/alibaba/fastjson/asm/Item;

.field lastField:Lcom/alibaba/fastjson/asm/FieldWriter;

.field lastMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

.field private name:I

.field final pool:Lcom/alibaba/fastjson/asm/ByteVector;

.field private superName:I

.field thisName:Ljava/lang/String;

.field threshold:I

.field typeTable:[Lcom/alibaba/fastjson/asm/Item;

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 343
    const/16 v3, 0xdc

    new-array v0, v3, [B

    .line 344
    .local v0, "b":[B
    const-string v2, "AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHHFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII"

    .line 345
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_0
    sput-object v0, Lcom/alibaba/fastjson/asm/ClassWriter;->TYPE:[B

    .line 417
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>(I)V

    .line 425
    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    .line 435
    new-instance v0, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    .line 436
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/alibaba/fastjson/asm/Item;

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    .line 437
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    .line 438
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    .line 439
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    .line 440
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    .line 441
    return-void
.end method

.method private get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "key"    # Lcom/alibaba/fastjson/asm/Item;

    .prologue
    .line 679
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    iget v2, p1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 680
    .local v0, "i":Lcom/alibaba/fastjson/asm/Item;
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->type:I

    iget v2, p1, Lcom/alibaba/fastjson/asm/Item;->type:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/Item;->isEqualTo(Lcom/alibaba/fastjson/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 681
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    goto :goto_0

    .line 683
    :cond_1
    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 638
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 640
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 642
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 643
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 645
    :cond_0
    return-object v0
.end method

.method private put(Lcom/alibaba/fastjson/asm/Item;)V
    .locals 12
    .param p1, "i"    # Lcom/alibaba/fastjson/asm/Item;

    .prologue
    .line 692
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    if-le v7, v8, :cond_2

    .line 693
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v4, v7

    .line 694
    .local v4, "ll":I
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v6, v7, 0x1

    .line 695
    .local v6, "nl":I
    new-array v5, v6, [Lcom/alibaba/fastjson/asm/Item;

    .line 696
    .local v5, "newItems":[Lcom/alibaba/fastjson/asm/Item;
    add-int/lit8 v3, v4, -0x1

    .local v3, "l":I
    :goto_0
    if-ltz v3, :cond_1

    .line 697
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aget-object v1, v7, v3

    .line 698
    .local v1, "j":Lcom/alibaba/fastjson/asm/Item;
    :goto_1
    if-eqz v1, :cond_0

    .line 699
    iget v7, v1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    array-length v8, v5

    rem-int v0, v7, v8

    .line 700
    .local v0, "index":I
    iget-object v2, v1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 701
    .local v2, "k":Lcom/alibaba/fastjson/asm/Item;
    aget-object v7, v5, v0

    iput-object v7, v1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 702
    aput-object v1, v5, v0

    .line 703
    move-object v1, v2

    .line 704
    goto :goto_1

    .line 696
    .end local v0    # "index":I
    .end local v2    # "k":Lcom/alibaba/fastjson/asm/Item;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 706
    .end local v1    # "j":Lcom/alibaba/fastjson/asm/Item;
    :cond_1
    iput-object v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    .line 707
    int-to-double v8, v6

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    .line 709
    .end local v3    # "l":I
    .end local v4    # "ll":I
    .end local v5    # "newItems":[Lcom/alibaba/fastjson/asm/Item;
    .end local v6    # "nl":I
    :cond_2
    iget v7, p1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v8, v8

    rem-int v0, v7, v8

    .line 710
    .restart local v0    # "index":I
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aget-object v7, v7, v0

    iput-object v7, p1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 711
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aput-object p1, v7, v0

    .line 712
    return-void
.end method

.method private put122(III)V
    .locals 1
    .param p1, "b"    # I
    .param p2, "s1"    # I
    .param p3, "s2"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 723
    return-void
.end method


# virtual methods
.method public newClass(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    return v0
.end method

.method newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x7

    .line 574
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 576
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 577
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 578
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 579
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 581
    :cond_0
    return-object v0
.end method

.method newConstItem(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/Item;
    .locals 5
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 538
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 539
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 540
    .local v1, "val":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newInteger(I)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v2

    .line 545
    .end local v1    # "val":I
    :goto_0
    return-object v2

    .line 541
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 542
    check-cast p1, Ljava/lang/String;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v2

    goto :goto_0

    .line 543
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/alibaba/fastjson/asm/Type;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 544
    check-cast v0, Lcom/alibaba/fastjson/asm/Type;

    .line 545
    .local v0, "t":Lcom/alibaba/fastjson/asm/Type;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 547
    .end local v0    # "t":Lcom/alibaba/fastjson/asm/Type;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x9

    .line 598
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, p2, p3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 600
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 601
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v3, v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->put122(III)V

    .line 602
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 603
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 605
    :cond_0
    return-object v0
.end method

.method newInteger(I)Lcom/alibaba/fastjson/asm/Item;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 552
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/asm/Item;->set(I)V

    .line 553
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 554
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 555
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 556
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 557
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 559
    :cond_0
    return-object v0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .prologue
    .line 619
    if-eqz p4, :cond_1

    const/16 v1, 0xb

    .line 620
    .local v1, "type":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 622
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 623
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->put122(III)V

    .line 624
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 625
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 627
    :cond_0
    return-object v0

    .line 619
    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    .end local v1    # "type":I
    :cond_1
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    return v0
.end method

.method newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xc

    .line 661
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, p2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 663
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v3, v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->put122(III)V

    .line 665
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 666
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 668
    :cond_0
    return-object v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 563
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v2, p1, v3, v3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 565
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 567
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 568
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 570
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    return v1
.end method

.method public toByteArray()[B
    .locals 13

    .prologue
    .line 481
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v8, v9, 0x18

    .line 482
    .local v8, "size":I
    const/4 v5, 0x0

    .line 483
    .local v5, "nbFields":I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 484
    .local v1, "fb":Lcom/alibaba/fastjson/asm/FieldWriter;
    :goto_0
    if-eqz v1, :cond_0

    .line 485
    add-int/lit8 v5, v5, 0x1

    .line 486
    invoke-virtual {v1}, Lcom/alibaba/fastjson/asm/FieldWriter;->getSize()I

    move-result v9

    add-int/2addr v8, v9

    .line 487
    iget-object v1, v1, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_0

    .line 489
    :cond_0
    const/4 v6, 0x0

    .line 490
    .local v6, "nbMethods":I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 491
    .local v4, "mb":Lcom/alibaba/fastjson/asm/MethodWriter;
    :goto_1
    if-eqz v4, :cond_1

    .line 492
    add-int/lit8 v6, v6, 0x1

    .line 493
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->getSize()I

    move-result v9

    add-int/2addr v8, v9

    .line 494
    iget-object v4, v4, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_1

    .line 496
    :cond_1
    const/4 v0, 0x0

    .line 497
    .local v0, "attributeCount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v9, v9, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v8, v9

    .line 500
    new-instance v7, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>(I)V

    .line 501
    .local v7, "out":Lcom/alibaba/fastjson/asm/ByteVector;
    const v9, -0x35014542    # -8346975.0f

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v9

    iget v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->version:I

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 502
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v10, v10, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v12, v12, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-virtual {v9, v10, v11, v12}, Lcom/alibaba/fastjson/asm/ByteVector;->putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 503
    const/high16 v9, 0x60000

    iget v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    const/high16 v11, 0x40000

    and-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x40

    or-int v3, v9, v10

    .line 504
    .local v3, "mask":I
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    xor-int/lit8 v10, v3, -0x1

    and-int/2addr v9, v10

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v9

    iget v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->name:I

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v9

    iget v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->superName:I

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 505
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 506
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    if-ge v2, v9, :cond_2

    .line 507
    iget-object v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    aget v9, v9, v2

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 509
    :cond_2
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 510
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 511
    :goto_3
    if-eqz v1, :cond_3

    .line 512
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/asm/FieldWriter;->put(Lcom/alibaba/fastjson/asm/ByteVector;)V

    .line 513
    iget-object v1, v1, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_3

    .line 515
    :cond_3
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 516
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 517
    :goto_4
    if-eqz v4, :cond_4

    .line 518
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/asm/MethodWriter;->put(Lcom/alibaba/fastjson/asm/ByteVector;)V

    .line 519
    iget-object v4, v4, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_4

    .line 521
    :cond_4
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 522
    iget-object v9, v7, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-object v9
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .prologue
    .line 448
    iput p1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->version:I

    .line 449
    iput p2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    .line 450
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->name:I

    .line 451
    iput-object p3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->thisName:Ljava/lang/String;

    .line 452
    if-nez p4, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->superName:I

    .line 453
    if-eqz p5, :cond_1

    array-length v1, p5

    if-lez v1, :cond_1

    .line 454
    array-length v1, p5

    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    .line 455
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    aget-object v2, p5, v0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 460
    :cond_1
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
    .locals 1
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 463
    new-instance v0, Lcom/alibaba/fastjson/asm/FieldWriter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 467
    new-instance v0, Lcom/alibaba/fastjson/asm/MethodWriter;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
