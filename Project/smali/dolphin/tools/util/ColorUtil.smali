.class public Ldolphin/tools/util/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static offset(II)I
    .locals 5
    .param p0, "original"    # I
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 8
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int v2, v4, p1

    .line 9
    .local v2, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int v1, v4, p1

    .line 10
    .local v1, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int v0, v4, p1

    .line 12
    .local v0, "b":I
    if-gez v2, :cond_0

    move v2, v3

    .end local v2    # "r":I
    :cond_0
    if-gez v1, :cond_1

    move v1, v3

    .end local v1    # "g":I
    :cond_1
    if-gez v0, :cond_2

    move v0, v3

    .end local v0    # "b":I
    :cond_2
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method public static offset(IIII)I
    .locals 5
    .param p0, "original"    # I
    .param p1, "offsetR"    # I
    .param p2, "offsetG"    # I
    .param p3, "offsetB"    # I

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int v2, v4, p1

    .line 17
    .local v2, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int v1, v4, p2

    .line 18
    .local v1, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int v0, v4, p3

    .line 20
    .local v0, "b":I
    if-gez v2, :cond_0

    move v2, v3

    .end local v2    # "r":I
    :cond_0
    if-gez v1, :cond_1

    move v1, v3

    .end local v1    # "g":I
    :cond_1
    if-gez v0, :cond_2

    move v0, v3

    .end local v0    # "b":I
    :cond_2
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method
