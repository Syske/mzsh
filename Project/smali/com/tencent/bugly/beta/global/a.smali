.class public Lcom/tencent/bugly/beta/global/a;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    :try_start_0
    const-string v0, "connectivity"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    move v0, v1

    .line 100
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 67
    const-string v0, "phone"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 69
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 91
    goto :goto_0

    .line 77
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 87
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 89
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 112
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static varargs a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 18

    .prologue
    .line 157
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 158
    :cond_0
    const/4 v2, 0x0

    .line 239
    :goto_0
    return-object v2

    .line 161
    :cond_1
    const/4 v4, 0x0

    .line 162
    const/4 v3, 0x0

    .line 163
    if-nez p1, :cond_4

    .line 164
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    const/4 v2, 0x0

    goto :goto_0

    .line 167
    :cond_2
    new-instance v4, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    cmp-long v2, v6, v8

    if-lez v2, :cond_12

    .line 169
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    .line 172
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    move-object v6, v4

    .line 175
    :goto_1
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->B:Landroid/util/DisplayMetrics;

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 177
    const/4 v2, 0x0

    .line 178
    if-lez v7, :cond_f

    .line 179
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 180
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    if-nez p1, :cond_8

    .line 183
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 188
    :cond_5
    :goto_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 189
    int-to-float v4, v7

    mul-float/2addr v3, v4

    float-to-int v8, v3

    .line 191
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 194
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v10, v3

    .line 195
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v12, v3

    .line 197
    mul-int v3, v7, v8

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    .line 199
    :goto_3
    const/4 v4, -0x1

    if-ne v9, v4, :cond_b

    const/16 v4, 0x80

    .line 203
    :goto_4
    if-ge v4, v3, :cond_6

    .line 208
    :cond_6
    mul-int/2addr v7, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c

    const/4 v7, -0x1

    if-ne v9, v7, :cond_c

    .line 209
    const/4 v3, 0x1

    move v4, v3

    .line 216
    :cond_7
    :goto_5
    const/16 v3, 0x8

    if-gt v4, v3, :cond_d

    .line 217
    const/4 v3, 0x1

    .line 218
    :goto_6
    if-ge v3, v4, :cond_e

    .line 219
    shl-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 184
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 236
    :catch_0
    move-exception v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 197
    :cond_a
    mul-double v14, v10, v12

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    int-to-double v0, v8

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    .line 198
    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v3, v14

    goto :goto_3

    .line 199
    :cond_b
    int-to-double v14, v9

    div-double/2addr v10, v14

    .line 200
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    int-to-double v14, v9

    div-double/2addr v12, v14

    .line 201
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    .line 200
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-int v4, v10

    goto :goto_4

    .line 210
    :cond_c
    const/4 v7, -0x1

    if-ne v9, v7, :cond_7

    move v4, v3

    .line 211
    goto :goto_5

    .line 222
    :cond_d
    add-int/lit8 v3, v4, 0x7

    div-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x8

    .line 225
    :cond_e
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 226
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 227
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 228
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 231
    :cond_f
    if-nez p1, :cond_10

    .line 232
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    .line 233
    :cond_10
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    move v5, v3

    move-object v6, v4

    goto/16 :goto_1

    :cond_12
    move v5, v3

    move-object v6, v4

    goto/16 :goto_1
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 404
    .line 406
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 407
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 408
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    .line 415
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 422
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 418
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 417
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;IIF)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 126
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->B:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->B:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 128
    if-eqz p0, :cond_0

    mul-int v1, p1, p2

    if-le v1, v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 131
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 132
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 134
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 136
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v8, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 138
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 139
    const/high16 v2, -0x1000000

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    invoke-virtual {v0, v1, p3, p3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 141
    const/4 v1, 0x0

    int-to-float v3, p1

    int-to-float v4, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    invoke-virtual {v0, p0, v1, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 145
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 478
    const-class v2, Lcom/tencent/bugly/beta/global/a;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/p;->c()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 479
    if-nez v0, :cond_0

    move-object v0, v1

    .line 488
    :goto_0
    monitor-exit v2

    return-object v0

    .line 483
    :cond_0
    :try_start_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 484
    if-eqz v0, :cond_1

    array-length v3, v0

    if-gtz v3, :cond_2

    :cond_1
    move-object v0, v1

    .line 485
    goto :goto_0

    .line 488
    :cond_2
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/au;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 433
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    :cond_0
    return-void

    .line 436
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 437
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 441
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 442
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 443
    const-string v5, "cannot delete file:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 441
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 252
    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    const-string v0, "MD5"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/au;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const-string v0, "md5 error [file md5: %s] [target md5: %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    .line 307
    :goto_0
    return v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 262
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    const-string v5, "application/vnd.android.package-archive"

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_4

    .line 265
    const-string v0, "android.support.v4.content.FileProvider"

    .line 266
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 269
    if-nez v6, :cond_1

    .line 270
    const-string v0, "can\'t find class android.support.v4.content.FileProvider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    .line 271
    goto :goto_0

    .line 275
    :cond_1
    const-string v6, "getUriForFile"

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/io/File;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v12

    iget-object v12, v12, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".fileProvider"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    .line 275
    invoke-static {v0, v6, v7, v8, v9}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 281
    if-nez v0, :cond_2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file location is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 283
    const-string v0, "install failed, contentUri is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    .line 284
    goto/16 :goto_0

    .line 286
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentUri is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    :goto_1
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 297
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "installApkMd5"

    .line 298
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    move v0, v2

    .line 300
    goto/16 :goto_0

    .line 289
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move v0, v1

    .line 307
    goto/16 :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 362
    .line 363
    const/4 v1, 0x0

    .line 364
    const/4 v2, 0x0

    .line 367
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    :cond_0
    if-eqz v3, :cond_1

    .line 385
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 387
    :cond_1
    if-eqz v3, :cond_2

    .line 388
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    :cond_2
    :goto_0
    return v0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 371
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    const/high16 v1, 0x100000

    :try_start_4
    new-array v1, v1, [B

    .line 375
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_5

    .line 376
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 380
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 381
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 384
    if-eqz v3, :cond_4

    .line 385
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 387
    :cond_4
    if-eqz v2, :cond_2

    .line 388
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 390
    :catch_2
    move-exception v1

    .line 391
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 379
    :cond_5
    const/4 v0, 0x1

    .line 384
    if-eqz v4, :cond_6

    .line 385
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 387
    :cond_6
    if-eqz v2, :cond_2

    .line 388
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 390
    :catch_3
    move-exception v1

    .line 391
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    move-object v4, v3

    .line 384
    :goto_3
    if-eqz v4, :cond_7

    .line 385
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 387
    :cond_7
    if-eqz v3, :cond_8

    .line 388
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 392
    :cond_8
    :goto_4
    throw v0

    .line 390
    :catch_4
    move-exception v1

    .line 391
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 383
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    .line 380
    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/au;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    :cond_0
    const-string v0, "checkFileUniqueId failed [file  uniqueId %s] [target uniqueId %s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 330
    :cond_1
    :goto_0
    return v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string v0, "checkFileUniqueId exception"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    .line 330
    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 492
    const-class v1, Lcom/tencent/bugly/beta/global/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/p;->c(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/os/Parcelable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 459
    const-class v1, Lcom/tencent/bugly/beta/global/a;

    monitor-enter v1

    if-nez p1, :cond_1

    .line 464
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 462
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Landroid/os/Parcelable;)[B

    move-result-object v2

    .line 464
    if-eqz v2, :cond_0

    sget-object v3, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    const/16 v4, 0x3ea

    .line 465
    invoke-virtual {v3, v4, p0, v2}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/tencent/bugly/proguard/ad;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/ad;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ad;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
