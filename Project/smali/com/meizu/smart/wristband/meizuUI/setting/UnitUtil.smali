.class public Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;
.super Ljava/lang/Object;
.source "UnitUtil.java"


# static fields
.field public static unit_length_Metric:Z

.field public static unit_weight_Metric:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KmToMi(D)Ljava/lang/String;
    .locals 4
    .param p0, "km"    # D

    .prologue
    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide v2, 0x3fe3df3b645a1cacL    # 0.621

    mul-double/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static MiToKm(D)Ljava/lang/String;
    .locals 4
    .param p0, "mi"    # D

    .prologue
    .line 50
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide v2, 0x3fe3df3b645a1cacL    # 0.621

    div-double v2, p0, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKilogram(D)D
    .locals 2
    .param p0, "kilogram"    # D

    .prologue
    .line 34
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_weight_Metric:Z

    if-eqz v0, :cond_0

    .line 37
    .end local p0    # "kilogram":D
    :goto_0
    return-wide p0

    .restart local p0    # "kilogram":D
    :cond_0
    const-wide v0, 0x4001a3d70a3d70a4L    # 2.205

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double p0, v0

    goto :goto_0
.end method

.method public static getMeter(I)I
    .locals 4
    .param p0, "meter"    # I

    .prologue
    .line 25
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_weight_Metric:Z

    if-eqz v0, :cond_0

    .line 28
    .end local p0    # "meter":I
    :goto_0
    return p0

    .restart local p0    # "meter":I
    :cond_0
    int-to-double v0, p0

    const-wide v2, 0x400a3f7ced916873L    # 3.281

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0
.end method

.method public static getUnit(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    const-string v0, "0"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLengthUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    .line 19
    const-string v0, "0"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getWeightUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_weight_Metric:Z

    .line 21
    return-void

    :cond_0
    move v0, v2

    .line 18
    goto :goto_0

    :cond_1
    move v1, v2

    .line 19
    goto :goto_1
.end method

.method public static poundToKg(I)D
    .locals 4
    .param p0, "pound"    # I

    .prologue
    .line 41
    int-to-double v0, p0

    const-wide v2, 0x4001a3d70a3d70a4L    # 2.205

    div-double/2addr v0, v2

    return-wide v0
.end method
