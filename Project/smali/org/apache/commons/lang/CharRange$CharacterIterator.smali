.class Lorg/apache/commons/lang/CharRange$CharacterIterator;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/CharRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterIterator"
.end annotation


# instance fields
.field private current:C

.field private hasNext:Z

.field private range:Lorg/apache/commons/lang/CharRange;


# direct methods
.method private constructor <init>(Lorg/apache/commons/lang/CharRange;)V
    .locals 3
    .param p1, "r"    # Lorg/apache/commons/lang/CharRange;

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->hasNext:Z

    .line 314
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang/CharRange;->access$100(Lorg/apache/commons/lang/CharRange;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang/CharRange;->access$200(Lorg/apache/commons/lang/CharRange;)C

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang/CharRange;->access$300(Lorg/apache/commons/lang/CharRange;)C

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 318
    iput-boolean v2, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->hasNext:Z

    .line 328
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang/CharRange;->access$300(Lorg/apache/commons/lang/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 323
    :cond_1
    iput-char v2, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang/CharRange;->access$200(Lorg/apache/commons/lang/CharRange;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/commons/lang/CharRange;Lorg/apache/commons/lang/CharRange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/lang/CharRange;
    .param p2, "x1"    # Lorg/apache/commons/lang/CharRange$1;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang/CharRange;)V

    return-void
.end method

.method private prepareNext()V
    .locals 4

    .prologue
    const v3, 0xffff

    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang/CharRange;->access$100(Lorg/apache/commons/lang/CharRange;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    if-ne v0, v3, :cond_0

    .line 336
    iput-boolean v2, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->hasNext:Z

    .line 351
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v1}, Lorg/apache/commons/lang/CharRange;->access$200(Lorg/apache/commons/lang/CharRange;)C

    move-result v1

    if-ne v0, v1, :cond_2

    .line 338
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang/CharRange;->access$300(Lorg/apache/commons/lang/CharRange;)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 339
    iput-boolean v2, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang/CharRange;->access$300(Lorg/apache/commons/lang/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 344
    :cond_2
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 346
    :cond_3
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    iget-object v1, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang/CharRange;

    invoke-static {v1}, Lorg/apache/commons/lang/CharRange;->access$300(Lorg/apache/commons/lang/CharRange;)C

    move-result v1

    if-ge v0, v1, :cond_4

    .line 347
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 349
    :cond_4
    iput-boolean v2, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 368
    iget-boolean v1, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->hasNext:Z

    if-nez v1, :cond_0

    .line 369
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 371
    :cond_0
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange$CharacterIterator;->current:C

    .line 372
    .local v0, "cur":C
    invoke-direct {p0}, Lorg/apache/commons/lang/CharRange$CharacterIterator;->prepareNext()V

    .line 373
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
