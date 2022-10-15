.class public Lcom/meizu/smart/wristband/utils/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field public static final fontByteSize:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap2Bytes(ILandroid/graphics/Bitmap;I)[[B
    .locals 7
    .param p0, "offset"    # I
    .param p1, "bi"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 49
    .local v0, "bytes":[[B
    div-int/lit8 v1, p0, 0x2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 50
    div-int/lit8 v2, p0, 0x2

    .local v2, "j":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 51
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 52
    .local v3, "pixel":I
    aget-object v5, v0, v1

    if-le v3, p2, :cond_0

    const/4 v4, 0x0

    :goto_2
    aput-byte v4, v5, v2

    .line 53
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    aget-byte v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 50
    add-int/2addr v2, p0

    goto :goto_1

    .line 52
    :cond_0
    const/4 v4, 0x1

    goto :goto_2

    .line 55
    .end local v3    # "pixel":I
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 49
    add-int/2addr v1, p0

    goto :goto_0

    .line 57
    .end local v2    # "j":I
    :cond_2
    return-object v0
.end method

.method public static font2Bitmap(IIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "fontSize"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xff

    .line 32
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, "bi":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .local v1, "g":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 36
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    int-to-float v4, p2

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .local v3, "r":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, p3, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 42
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, p0, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, p1, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, p3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 44
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/16 v3, 0xc8

    .line 22
    .local v3, "w":I
    const/16 v1, 0x28

    .line 23
    .local v1, "h":I
    const-string v2, "\u5965 \u5df4 \u9a6c"

    .line 26
    .local v2, "str":Ljava/lang/String;
    const/16 v4, 0x14

    invoke-static {v3, v1, v4, v2}, Lcom/meizu/smart/wristband/utils/MatrixUtil;->font2Bitmap(IIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, "bi":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const v5, -0x333334

    invoke-static {v4, v0, v5}, Lcom/meizu/smart/wristband/utils/MatrixUtil;->bitmap2Bytes(ILandroid/graphics/Bitmap;I)[[B

    .line 29
    return-void
.end method

.method public static unicode2Bytes(Landroid/content/Context;I)[B
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unicode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x4e00

    .line 87
    const/16 v2, 0x4e00

    .line 88
    .local v2, "BASE_UNICODE":I
    const/16 v0, 0x20

    .line 89
    .local v0, "BASE_EN_UNICODE":I
    const/16 v1, 0x51a6

    .line 93
    .local v1, "BASE_EN_UNICODE_START":I
    const/4 v6, 0x0

    .line 94
    .local v6, "index":I
    if-ge p1, v9, :cond_1

    const/16 v8, 0x20

    if-lt p1, v8, :cond_1

    .line 95
    add-int/lit8 v8, p1, -0x20

    add-int/lit16 v8, v8, 0x51a6

    mul-int/lit8 v6, v8, 0x48

    .line 101
    :goto_0
    if-gez v6, :cond_3

    const/4 v3, 0x0

    .line 125
    :cond_0
    :goto_1
    return-object v3

    .line 96
    :cond_1
    if-lt p1, v9, :cond_2

    const v8, 0x9fa5

    if-gt p1, v8, :cond_2

    .line 97
    add-int/lit16 v8, p1, -0x4e00

    mul-int/lit8 v6, v8, 0x48

    goto :goto_0

    .line 99
    :cond_2
    const v6, 0x16f6b0

    goto :goto_0

    .line 103
    :cond_3
    const/16 v8, 0x48

    new-array v3, v8, [B

    .line 104
    .local v3, "buf":[B
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "ziku24_all.bin"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 106
    .local v7, "is":Ljava/io/InputStream;
    int-to-long v8, v6

    :try_start_0
    invoke-virtual {v7, v8, v9}, Ljava/io/InputStream;->skip(J)J

    .line 107
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 108
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v8, v3

    if-ge v5, v8, :cond_5

    .line 109
    rem-int/lit8 v8, v5, 0x10

    if-nez v8, :cond_4

    .line 110
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    .line 112
    :cond_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "%x "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-byte v12, v3, v5

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 119
    .end local v5    # "i":I
    :cond_5
    if-eqz v7, :cond_0

    .line 120
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 121
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 116
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    if-eqz v7, :cond_0

    .line 120
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 121
    :catch_2
    move-exception v4

    .line 122
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 119
    if-eqz v7, :cond_6

    .line 120
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    :cond_6
    :goto_3
    throw v8

    .line 121
    :catch_3
    move-exception v4

    .line 122
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
