.class public Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;
.super Ljava/lang/Object;
.source "DrawUtil.java"


# static fields
.field public static final NAVBAR_LOCATION_BOTTOM:I = 0x2

.field public static final NAVBAR_LOCATION_RIGHT:I = 0x1

.field private static sClass:Ljava/lang/Class;

.field public static sDensity:F

.field public static sDensityDpi:I

.field public static sFontDensity:F

.field public static sHeightPixels:I

.field private static sMethodForHeight:Ljava/lang/reflect/Method;

.field private static sMethodForWidth:Ljava/lang/reflect/Method;

.field private static sNavBarHeight:I

.field public static sNavBarLocation:I

.field private static sNavBarWidth:I

.field private static sRealHeightPixels:I

.field private static sRealWidthPixels:I

.field public static sStatusBar:I

.field public static sStatusHeight:I

.field public static sTopStatusHeight:I

.field public static sTouchSlop:I

.field public static sVirtualDensity:F

.field public static sVirtualDensityDpi:F

.field public static sWidthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensity:F

    .line 39
    const/16 v0, 0xf

    sput v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sTouchSlop:I

    .line 42
    sput-object v1, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    .line 43
    sput-object v1, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sMethodForWidth:Ljava/lang/reflect/Method;

    .line 44
    sput-object v1, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sMethodForHeight:Ljava/lang/reflect/Method;

    .line 56
    sput v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sVirtualDensity:F

    .line 57
    sput v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sVirtualDensityDpi:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 338
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 339
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 340
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 404
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 409
    return-object v0
.end method

.method public static dip2px(F)I
    .locals 2
    .param p0, "dipVlue"    # F

    .prologue
    .line 71
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensity:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getNavBarHeight()I
    .locals 1

    .prologue
    .line 269
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->s_IS_SDK_ABOVE_KITKAT:Z

    if-eqz v0, :cond_0

    .line 270
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sNavBarHeight:I

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNavBarLocation()I
    .locals 2

    .prologue
    .line 288
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sRealWidthPixels:I

    sget v1, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    if-le v0, v1, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getNavBarWidth()I
    .locals 1

    .prologue
    .line 281
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->s_IS_SDK_ABOVE_KITKAT:Z

    if-eqz v0, :cond_0

    .line 282
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sNavBarWidth:I

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 300
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "resourceId":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 304
    .end local v1    # "resourceId":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRealHeight()I
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->s_IS_SDK_ABOVE_KITKAT:Z

    if-eqz v0, :cond_0

    .line 257
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sRealHeightPixels:I

    .line 259
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    goto :goto_0
.end method

.method public static getRealWidth()I
    .locals 1

    .prologue
    .line 249
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->s_IS_SDK_ABOVE_KITKAT:Z

    if-eqz v0, :cond_0

    .line 250
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sRealWidthPixels:I

    .line 252
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    .line 314
    if-eqz p0, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 315
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 317
    .local v2, "moutBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 318
    .local v0, "mcanvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 319
    .local v1, "mcolor":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 320
    .local v3, "mpaint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 321
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 322
    .local v4, "mrect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 323
    .local v5, "mrectF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v6, v7

    .line 324
    .local v6, "mroundPX":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 326
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 328
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 329
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 332
    .end local v0    # "mcanvas":Landroid/graphics/Canvas;
    .end local v1    # "mcolor":I
    .end local v2    # "moutBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "mpaint":Landroid/graphics/Paint;
    .end local v4    # "mrect":Landroid/graphics/Rect;
    .end local v5    # "mrectF":Landroid/graphics/RectF;
    .end local v6    # "mroundPX":F
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 232
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 233
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 234
    .local v5, "x":I
    const/4 v4, 0x0

    .line 236
    .local v4, "top":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 238
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 241
    sput v4, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sTopStatusHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTabletScreenHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "height":I
    if-eqz p0, :cond_2

    .line 188
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 189
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 191
    .local v0, "display":Landroid/view/Display;
    :try_start_0
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 192
    const-string v3, "android.view.Display"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    .line 194
    :cond_0
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sMethodForHeight:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 195
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    const-string v4, "getRealHeight"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sMethodForHeight:Ljava/lang/reflect/Method;

    .line 197
    :cond_1
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sMethodForHeight:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 207
    sget v1, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    .line 210
    :cond_3
    return v1

    .line 198
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v2    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getTabletScreenWidth(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "width":I
    if-eqz p0, :cond_2

    .line 161
    :try_start_0
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 162
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 163
    .local v0, "display":Landroid/view/Display;
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 164
    const-string v3, "android.view.Display"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    .line 166
    :cond_0
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sMethodForWidth:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 167
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    const-string v4, "getRealWidth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sMethodForWidth:Ljava/lang/reflect/Method;

    .line 169
    :cond_1
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sMethodForWidth:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 179
    sget v1, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    .line 182
    :cond_3
    return v1

    .line 170
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isPad()Z
    .locals 8

    .prologue
    const/16 v7, 0x320

    const/16 v6, 0x1e0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
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

    .line 226
    :cond_1
    :goto_0
    return v0

    .line 217
    :cond_2
    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    sget v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    if-ge v2, v3, :cond_4

    .line 218
    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    if-le v2, v6, :cond_3

    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    if-gt v2, v7, :cond_1

    :cond_3
    move v0, v1

    .line 226
    goto :goto_0

    .line 222
    :cond_4
    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    if-le v2, v7, :cond_3

    sget v2, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    if-le v2, v6, :cond_3

    goto :goto_0
.end method

.method public static px2dip(F)I
    .locals 3
    .param p0, "pxValue"    # F

    .prologue
    .line 81
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensity:F

    .line 82
    .local v0, "scale":F
    div-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2sp(F)I
    .locals 2
    .param p0, "pxValue"    # F

    .prologue
    .line 103
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensity:F

    .line 104
    .local v0, "scale":F
    div-float v1, p0, v0

    float-to-int v1, v1

    return v1
.end method

.method public static resetDensity(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 110
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensity:F

    .line 111
    iget v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sFontDensity:F

    .line 112
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    .line 113
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    .line 114
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensityDpi:I

    .line 115
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/Machine;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->getTabletScreenHeight(Landroid/content/Context;)I

    move-result v3

    sget v4, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    sub-int/2addr v3, v4

    sput v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sStatusHeight:I

    .line 119
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 120
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    sput v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sTouchSlop:I

    .line 123
    :cond_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->getStatusBarHeight(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :goto_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sStatusBar:I

    .line 130
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->resetNavBarHeight(Landroid/content/Context;)V

    .line 131
    return-void

    .line 124
    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Error;
    const-string v3, "DrawUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetDensity has error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static resetNavBarHeight(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 134
    if-eqz p0, :cond_1

    .line 135
    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 136
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 138
    .local v0, "display":Landroid/view/Display;
    :try_start_0
    sget-object v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    if-nez v5, :cond_0

    .line 139
    const-string v5, "android.view.Display"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    .line 141
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 142
    .local v3, "realSize":Landroid/graphics/Point;
    sget-object v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sClass:Ljava/lang/Class;

    const-string v6, "getRealSize"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/graphics/Point;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 143
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget v5, v3, Landroid/graphics/Point;->x:I

    sput v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sRealWidthPixels:I

    .line 145
    iget v5, v3, Landroid/graphics/Point;->y:I

    sput v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sRealHeightPixels:I

    .line 146
    iget v5, v3, Landroid/graphics/Point;->x:I

    sget v6, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    sub-int/2addr v5, v6

    sput v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sNavBarWidth:I

    .line 147
    iget v5, v3, Landroid/graphics/Point;->y:I

    sget v6, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    sub-int/2addr v5, v6

    sput v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sNavBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "realSize":Landroid/graphics/Point;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->getNavBarLocation()I

    move-result v5

    sput v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sNavBarLocation:I

    .line 155
    return-void

    .line 148
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v4    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    sget v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sWidthPixels:I

    sput v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sRealWidthPixels:I

    .line 150
    sget v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sHeightPixels:I

    sput v5, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sRealHeightPixels:I

    .line 151
    sput v10, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sNavBarHeight:I

    goto :goto_0
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 345
    move-object v0, p0

    .line 346
    .local v0, "BitmapOrg":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 347
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 348
    .local v4, "height":I
    move v8, p1

    .line 349
    .local v8, "newWidth":I
    move v7, p2

    .line 351
    .local v7, "newHeight":I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 352
    .local v11, "scaleWidth":F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 354
    .local v10, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 355
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 358
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 360
    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v9
.end method

.method public static setNoTranslucentStatusBar(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const/high16 v3, 0x4000000

    const/high16 v2, -0x80000000

    .line 381
    const-string/jumbo v0, "zou"

    const-string v1, "DrawUtil setNoTranslucentStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 384
    const-string/jumbo v0, "zou"

    const-string v1, "DrawUtil setNoTranslucentStatusBar1111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 386
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 388
    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 389
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 391
    const-string/jumbo v0, "zou"

    const-string v1, "DrawUtil setNoTranslucentStatusBar2222"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 393
    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static setTranslucentStatusBar(Landroid/view/Window;)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const/high16 v2, 0x4000000

    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 367
    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 368
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 371
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 375
    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static sp2px(F)I
    .locals 2
    .param p0, "spValue"    # F

    .prologue
    .line 92
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sDensity:F

    .line 93
    .local v0, "scale":F
    mul-float v1, v0, p0

    float-to-int v1, v1

    return v1
.end method
