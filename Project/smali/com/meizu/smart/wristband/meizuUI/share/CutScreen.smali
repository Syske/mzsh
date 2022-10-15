.class public Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;
.super Ljava/lang/Object;
.source "CutScreen.java"


# instance fields
.field private savename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "share.png"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->savename:Ljava/lang/String;

    return-void
.end method

.method private savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_0

    .line 62
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 63
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 64
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    const/4 v3, 0x1

    move-object v1, v2

    .line 72
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 67
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public getBitmappath(Landroid/view/View;I)Ljava/lang/String;
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getShareCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 23
    .local v6, "rangkPath":Ljava/lang/String;
    const-string v7, ""

    .line 24
    .local v7, "savepath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 25
    .local v5, "oksave":Z
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->shot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    .local v0, "BP":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 27
    const/4 v2, 0x0

    .line 29
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 34
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-object v2, v3

    .line 36
    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->savename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 37
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 41
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>>>>>>>>>>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, v0, v7}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v5

    .line 43
    if-nez v5, :cond_3

    .line 44
    const-string v8, ""

    .line 46
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    return-object v8

    .line 30
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 33
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    throw v8

    .end local v2    # "f":Ljava/io/File;
    :cond_3
    move-object v8, v7

    .line 46
    goto :goto_1

    .restart local v3    # "f":Ljava/io/File;
    :cond_4
    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto :goto_0
.end method

.method public shot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 53
    return-object v0
.end method
