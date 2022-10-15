.class public Lcom/meizu/smart/wristband/utils/NumAnim;
.super Ljava/lang/Object;
.source "NumAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/utils/NumAnim$Counter;
    }
.end annotation


# static fields
.field private static final COUNTPERS:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static NumberFormat(FI)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # F
    .param p1, "m"    # I

    .prologue
    .line 99
    float-to-int v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NumberFormatFloat(FI)F
    .locals 2
    .param p0, "f"    # F
    .param p1, "m"    # I

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/utils/NumAnim;->NumberFormat(FI)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "strfloat":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private static splitnum(FI)[Ljava/lang/Float;
    .locals 9
    .param p0, "num"    # F
    .param p1, "count"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 50
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 51
    .local v3, "random":Ljava/util/Random;
    move v2, p0

    .line 52
    .local v2, "numtemp":F
    const/4 v4, 0x0

    .line 53
    .local v4, "sum":F
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 54
    .local v1, "nums":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Float;>;"
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_0
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, p0

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    int-to-float v6, p1

    div-float/2addr v5, v6

    .line 56
    invoke-static {v5, v8}, Lcom/meizu/smart/wristband/utils/NumAnim;->NumberFormatFloat(FI)F

    move-result v0

    .line 60
    .local v0, "nextFloat":F
    sub-float v5, v2, v0

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_0

    .line 61
    add-float v5, v4, v0

    invoke-static {v5, v8}, Lcom/meizu/smart/wristband/utils/NumAnim;->NumberFormatFloat(FI)F

    move-result v4

    .line 62
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    sub-float/2addr v2, v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Float;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Float;

    return-object v5
.end method

.method public static startAnim(Landroid/widget/TextView;F)V
    .locals 4
    .param p0, "textV"    # Landroid/widget/TextView;
    .param p1, "num"    # F

    .prologue
    .line 16
    const/4 v0, 0x0

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v0, p1, v2, v3}, Lcom/meizu/smart/wristband/utils/NumAnim;->startAnim(Landroid/widget/TextView;FFJ)V

    .line 17
    return-void
.end method

.method public static startAnim(Landroid/widget/TextView;FF)V
    .locals 2
    .param p0, "textV"    # Landroid/widget/TextView;
    .param p1, "baseNum"    # F
    .param p2, "num"    # F

    .prologue
    .line 20
    const-wide/16 v0, 0x1f4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/meizu/smart/wristband/utils/NumAnim;->startAnim(Landroid/widget/TextView;FFJ)V

    .line 21
    return-void
.end method

.method public static startAnim(Landroid/widget/TextView;FFJ)V
    .locals 5
    .param p0, "textV"    # Landroid/widget/TextView;
    .param p1, "baseNum"    # F
    .param p2, "num"    # F
    .param p3, "time"    # J

    .prologue
    const/4 v4, 0x2

    .line 24
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    .line 25
    invoke-static {p2, v4}, Lcom/meizu/smart/wristband/utils/NumAnim;->NumberFormat(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_0
    return-void

    .line 30
    :cond_0
    sub-float/2addr p2, p1

    .line 32
    const/high16 v3, 0x43480000    # 200.0f

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    .line 33
    add-float v3, p1, p2

    invoke-static {v3, v4}, Lcom/meizu/smart/wristband/utils/NumAnim;->NumberFormat(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 37
    :cond_1
    long-to-float v3, p3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {p2, v3}, Lcom/meizu/smart/wristband/utils/NumAnim;->splitnum(FI)[Ljava/lang/Float;

    move-result-object v2

    .line 39
    .local v2, "nums":[Ljava/lang/Float;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 40
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    :cond_2
    new-instance v0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;

    invoke-direct {v0, p0, v2, p3, p4}, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;-><init>(Landroid/widget/TextView;[Ljava/lang/Float;J)V

    .line 45
    .local v0, "counter":Lcom/meizu/smart/wristband/utils/NumAnim$Counter;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
