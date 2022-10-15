.class public Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontHeight(Landroid/graphics/Paint;)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 22
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    return v1
.end method

.method public static getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method
