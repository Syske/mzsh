.class public final Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "TextViewBeforeTextChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private final after:I

.field private final count:I

.field private final start:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "after"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->text:Ljava/lang/CharSequence;

    .line 31
    iput p3, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->start:I

    .line 32
    iput p4, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->count:I

    .line 33
    iput p5, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->after:I

    .line 34
    return-void
.end method

.method public static create(Landroid/widget/TextView;Ljava/lang/CharSequence;III)Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;
    .locals 6
    .param p0, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    return-object v0
.end method


# virtual methods
.method public after()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->after:I

    return v0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->count:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    instance-of v3, p1, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;

    .line 51
    .local v0, "other":Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;
    invoke-virtual {v0}, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->view()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->view()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->text:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->text:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->start:I

    iget v4, v0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->start:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->count:I

    iget v4, v0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->count:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->after:I

    iget v4, v0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->after:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0x11

    .line 60
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 61
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 62
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->start:I

    add-int v0, v1, v2

    .line 63
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->count:I

    add-int v0, v1, v2

    .line 64
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->after:I

    add-int v0, v1, v2

    .line 65
    return v0
.end method

.method public start()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->start:I

    return v0
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextViewBeforeTextChangeEvent{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
