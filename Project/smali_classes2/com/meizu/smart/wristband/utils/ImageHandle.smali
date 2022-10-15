.class public Lcom/meizu/smart/wristband/utils/ImageHandle;
.super Ljava/lang/Object;
.source "ImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;
    }
.end annotation


# instance fields
.field drawable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/smart/wristband/utils/ImageHandle;->drawable:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 89
    .local v1, "photo":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "output":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .end local v0    # "output":Landroid/graphics/Bitmap;
    .end local v1    # "photo":[B
    :goto_0
    return-object v2

    .line 91
    :catch_0
    move-exception v2

    .line 93
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadImageFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v5, 0x0

    .line 54
    .local v5, "i":Ljava/io/InputStream;
    const-string v3, ""

    .line 57
    .local v3, "headstring":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    .local v7, "m":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/InputStream;

    move-object v5, v0

    .line 59
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v8, "outStream":Ljava/io/ByteArrayOutputStream;
    const v9, 0x12d000

    new-array v1, v9, [B

    .line 61
    .local v1, "buffer":[B
    const/4 v6, 0x0

    .line 62
    .local v6, "len":I
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 64
    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1    # "buffer":[B
    .end local v6    # "len":I
    .end local v7    # "m":Ljava/net/URL;
    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 66
    .restart local v1    # "buffer":[B
    .restart local v6    # "len":I
    .restart local v7    # "m":Ljava/net/URL;
    .restart local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v4, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3    # "headstring":Ljava/lang/String;
    .local v4, "headstring":Ljava/lang/String;
    move-object v3, v4

    .line 73
    .end local v4    # "headstring":Ljava/lang/String;
    .restart local v3    # "headstring":Ljava/lang/String;
    goto :goto_1

    .line 70
    :catch_1
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public loadDrawable(Ljava/lang/String;Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;)Ljava/lang/String;
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageCallback"    # Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;

    .prologue
    .line 22
    new-instance v0, Lcom/meizu/smart/wristband/utils/ImageHandle$1;

    invoke-direct {v0, p0, p2}, Lcom/meizu/smart/wristband/utils/ImageHandle$1;-><init>(Lcom/meizu/smart/wristband/utils/ImageHandle;Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;)V

    .line 29
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/meizu/smart/wristband/utils/ImageHandle$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/meizu/smart/wristband/utils/ImageHandle$2;-><init>(Lcom/meizu/smart/wristband/utils/ImageHandle;Ljava/lang/String;Landroid/os/Handler;)V

    .line 46
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->start()V

    .line 47
    iget-object v1, p0, Lcom/meizu/smart/wristband/utils/ImageHandle;->drawable:Ljava/lang/String;

    return-object v1
.end method
