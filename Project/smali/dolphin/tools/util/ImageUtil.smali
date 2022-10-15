.class public Ldolphin/tools/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4
    .param p0, "paramOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I

    .prologue
    .line 11
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 12
    .local v0, "i":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 13
    .local v2, "k":I
    const/4 v1, 0x1

    .line 15
    .local v1, "j":I
    if-gt v0, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 16
    :cond_0
    if-le v2, v0, :cond_2

    .line 17
    div-int v3, v0, p2

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 22
    :cond_1
    :goto_0
    return v1

    .line 19
    :cond_2
    div-int v3, v2, p1

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "paramResources"    # Landroid/content/res/Resources;
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .param p3, "paramInt3"    # I

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v0, "localOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 30
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 32
    invoke-static {v0, p2, p3}, Ldolphin/tools/util/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
