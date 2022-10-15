.class public Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;
.super Ljava/lang/Object;
.source "Machine.java"


# static fields
.field private static sCheckTablet:Z

.field private static sIsTablet:Z

.field public static s_IS_SDK_ABOVE_KITKAT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->sCheckTablet:Z

    .line 13
    sput-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->sIsTablet:Z

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->s_IS_SDK_ABOVE_KITKAT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPad()Z
    .locals 8

    .prologue
    const/16 v7, 0x320

    const/16 v6, 0x1e0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensity:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, v2, v4

    if-gez v2, :cond_0

    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_0
    move v0, v1

    .line 31
    :cond_1
    :goto_0
    return v0

    .line 22
    :cond_2
    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    sget v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    if-ge v2, v3, :cond_4

    .line 23
    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    if-le v2, v6, :cond_3

    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    if-gt v2, v7, :cond_1

    :cond_3
    move v0, v1

    .line 31
    goto :goto_0

    .line 27
    :cond_4
    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    if-le v2, v7, :cond_3

    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    if-le v2, v6, :cond_3

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 35
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->sCheckTablet:Z

    if-ne v0, v1, :cond_0

    .line 36
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->sIsTablet:Z

    .line 40
    :goto_0
    return v0

    .line 38
    :cond_0
    sput-boolean v1, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->sCheckTablet:Z

    .line 39
    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->isPad()Z

    move-result v0

    sput-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->sIsTablet:Z

    .line 40
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->sIsTablet:Z

    goto :goto_0
.end method
