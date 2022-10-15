.class public Lcom/meizu/smart/wristband/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static final IMAGE_FILE_LOCATION:Ljava/lang/String; = "file:///sdcard/temp.jpg"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/meizu/smart/wristband/utils/BitmapUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/utils/BitmapUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToByte(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, "o":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static bitmapToString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->bitmapToByte(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static buildImageCaptureIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 217
    return-object v0
.end method

.method public static buildImageCropIntent(Landroid/graphics/Bitmap;IIIIZ)Landroid/content/Intent;
    .locals 3
    .param p0, "data"    # Landroid/graphics/Bitmap;
    .param p1, "aspectX"    # I
    .param p2, "aspectY"    # I
    .param p3, "outputX"    # I
    .param p4, "outputY"    # I
    .param p5, "returnData"    # Z

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v1, "outputX"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v1, "outputY"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string v1, "return-data"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    return-object v0
.end method

.method public static buildImageCropIntent(Landroid/net/Uri;Landroid/net/Uri;IIIIZ)Landroid/content/Intent;
    .locals 3
    .param p0, "uriFrom"    # Landroid/net/Uri;
    .param p1, "uriTo"    # Landroid/net/Uri;
    .param p2, "aspectX"    # I
    .param p3, "aspectY"    # I
    .param p4, "outputX"    # I
    .param p5, "outputY"    # I
    .param p6, "returnData"    # Z

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "outputX"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v1, "outputY"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    return-object v0
.end method

.method public static buildImageCropIntent(Landroid/net/Uri;Landroid/net/Uri;IIZ)Landroid/content/Intent;
    .locals 7
    .param p0, "uriFrom"    # Landroid/net/Uri;
    .param p1, "uriTo"    # Landroid/net/Uri;
    .param p2, "outputX"    # I
    .param p3, "outputY"    # I
    .param p4, "returnData"    # Z

    .prologue
    const/4 v2, 0x1

    .line 180
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->buildImageCropIntent(Landroid/net/Uri;Landroid/net/Uri;IIIIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildImageGetIntent(Landroid/net/Uri;IIIIZ)Landroid/content/Intent;
    .locals 3
    .param p0, "saveTo"    # Landroid/net/Uri;
    .param p1, "aspectX"    # I
    .param p2, "aspectY"    # I
    .param p3, "outputX"    # I
    .param p4, "outputY"    # I
    .param p5, "returnData"    # Z

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.VERSION.SDK_INT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 162
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :goto_0
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "output"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v1, "outputX"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v1, "outputY"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const-string v1, "return-data"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    return-object v0

    .line 164
    :cond_0
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static buildImageGetIntent(Landroid/net/Uri;IIZ)Landroid/content/Intent;
    .locals 6
    .param p0, "saveTo"    # Landroid/net/Uri;
    .param p1, "outputX"    # I
    .param p2, "outputY"    # I
    .param p3, "returnData"    # Z

    .prologue
    const/4 v1, 0x1

    .line 155
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->buildImageGetIntent(Landroid/net/Uri;IIIIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildImagePickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    return-object v0
.end method

.method public static byteToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 48
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 227
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 228
    .local v0, "h":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 229
    .local v4, "w":I
    const/4 v1, 0x0

    .line 230
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 231
    :cond_0
    int-to-float v5, v4

    int-to-float v6, p1

    div-float v3, v5, v6

    .line 232
    .local v3, "ratioW":F
    int-to-float v5, v0

    int-to-float v6, p2

    div-float v2, v5, v6

    .line 233
    .local v2, "ratioH":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v1, v5

    .line 235
    .end local v2    # "ratioH":F
    .end local v3    # "ratioW":F
    :cond_1
    const/4 v5, 0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 236
    return v1
.end method

.method public static createBitmapThumbnail(Landroid/graphics/Bitmap;ZII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitMap"    # Landroid/graphics/Bitmap;
    .param p1, "needRecycle"    # Z
    .param p2, "newHeight"    # I
    .param p3, "newWidth"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 113
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 115
    .local v4, "height":I
    int-to-float v0, p3

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 116
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 118
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 119
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 121
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 122
    .local v7, "newBitMap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    :cond_0
    return-object v7
.end method

.method public static dncodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "photoStrUtf8"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 301
    .local v1, "output":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    .line 302
    .local v2, "photo":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 306
    .end local v2    # "photo":[B
    :goto_0
    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6
    .param p0, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v5, 0x64

    .line 277
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 278
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " baos.toByteArray().length=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 280
    const/16 v2, 0x64

    .line 282
    .local v2, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    if-le v3, v5, :cond_0

    .line 283
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 285
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 286
    add-int/lit8 v2, v2, -0xa

    goto :goto_0

    .line 288
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " baos.toByteArray().length=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 290
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_1
    return-object v3

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 294
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getSmallBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 240
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 241
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 242
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 243
    invoke-static {v0, p1, p2}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 244
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 128
    if-nez p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v3

    .line 130
    :cond_1
    const/4 v1, 0x0

    .line 132
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 134
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    const/4 v3, 0x1

    .line 139
    if-eqz v2, :cond_0

    .line 141
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    .line 141
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 142
    :catch_2
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 141
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 144
    :cond_2
    :goto_3
    throw v3

    .line 142
    :catch_3
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 136
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "absPath"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static scaleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "org"    # Landroid/graphics/Bitmap;
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F

    .prologue
    const/4 v1, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 87
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 88
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static scaleImageTo(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "org"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 76
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->scaleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 28
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 313
    .local v23, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 316
    .local v14, "height":I
    move/from16 v0, v23

    if-gt v0, v14, :cond_0

    .line 318
    div-int/lit8 v24, v23, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 319
    .local v20, "roundPx":F
    const/16 v22, 0x0

    .line 320
    .local v22, "top":F
    move/from16 v0, v23

    int-to-float v5, v0

    .line 321
    .local v5, "bottom":F
    const/4 v15, 0x0

    .line 322
    .local v15, "left":F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    .line 323
    .local v19, "right":F
    move/from16 v14, v23

    .line 324
    const/4 v11, 0x0

    .line 325
    .local v11, "dst_left":F
    const/4 v13, 0x0

    .line 326
    .local v13, "dst_top":F
    move/from16 v0, v23

    int-to-float v12, v0

    .line 327
    .local v12, "dst_right":F
    move/from16 v0, v23

    int-to-float v10, v0

    .line 343
    .local v10, "dst_bottom":F
    :goto_0
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 344
    .local v16, "output":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 346
    .local v6, "canvas":Landroid/graphics/Canvas;
    const v8, -0xbdbdbe

    .line 347
    .local v8, "color":I
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 348
    .local v17, "paint":Landroid/graphics/Paint;
    new-instance v21, Landroid/graphics/Rect;

    float-to-int v0, v15

    move/from16 v24, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v26, v0

    float-to-int v0, v5

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    .local v21, "src":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v0, v11

    move/from16 v24, v0

    float-to-int v0, v13

    move/from16 v25, v0

    float-to-int v0, v12

    move/from16 v26, v0

    float-to-int v0, v10

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    .local v9, "dst":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 354
    .local v18, "rectF":Landroid/graphics/RectF;
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 357
    const v24, -0xbdbdbe

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 360
    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 362
    return-object v16

    .line 330
    .end local v5    # "bottom":F
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "color":I
    .end local v9    # "dst":Landroid/graphics/Rect;
    .end local v10    # "dst_bottom":F
    .end local v11    # "dst_left":F
    .end local v12    # "dst_right":F
    .end local v13    # "dst_top":F
    .end local v15    # "left":F
    .end local v16    # "output":Landroid/graphics/Bitmap;
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v18    # "rectF":Landroid/graphics/RectF;
    .end local v19    # "right":F
    .end local v20    # "roundPx":F
    .end local v21    # "src":Landroid/graphics/Rect;
    .end local v22    # "top":F
    :cond_0
    div-int/lit8 v24, v14, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 331
    .restart local v20    # "roundPx":F
    sub-int v24, v23, v14

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v7, v0

    .line 332
    .local v7, "clip":F
    move v15, v7

    .line 333
    .restart local v15    # "left":F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v19, v24, v7

    .line 334
    .restart local v19    # "right":F
    const/16 v22, 0x0

    .line 335
    .restart local v22    # "top":F
    int-to-float v5, v14

    .line 336
    .restart local v5    # "bottom":F
    move/from16 v23, v14

    .line 337
    const/4 v11, 0x0

    .line 338
    .restart local v11    # "dst_left":F
    const/4 v13, 0x0

    .line 339
    .restart local v13    # "dst_top":F
    int-to-float v12, v14

    .line 340
    .restart local v12    # "dst_right":F
    int-to-float v10, v14

    .restart local v10    # "dst_bottom":F
    goto/16 :goto_0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 93
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 94
    .local v5, "width":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 96
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 99
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 104
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 108
    return-object v2
.end method


# virtual methods
.method public compressBitmapQuikly(Ljava/lang/String;)[B
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 269
    const/16 v0, 0x1e0

    const/16 v1, 0x320

    const/16 v2, 0x32

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->compressBitmapToBytes(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method

.method public compressBitmapQuiklySmallTo(Ljava/lang/String;I)[B
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "maxLenth"    # I

    .prologue
    .line 273
    const/16 v0, 0x1e0

    const/16 v1, 0x320

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->compressBitmapSmallTo(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method

.method public compressBitmapSmallTo(Ljava/lang/String;III)[B
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .param p4, "maxLenth"    # I

    .prologue
    .line 259
    const/16 v1, 0x64

    .line 260
    .local v1, "quality":I
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->compressBitmapToBytes(Ljava/lang/String;III)[B

    move-result-object v0

    .line 261
    .local v0, "bytes":[B
    :goto_0
    array-length v2, v0

    if-le v2, p4, :cond_0

    if-lez v1, :cond_0

    .line 262
    div-int/lit8 v1, v1, 0x2

    .line 263
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->compressBitmapToBytes(Ljava/lang/String;III)[B

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_0
    return-object v0
.end method

.method public compressBitmapToBytes(Ljava/lang/String;III)[B
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .param p4, "quality"    # I

    .prologue
    .line 249
    invoke-static {p1, p2, p3}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->getSmallBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 250
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 252
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 253
    .local v2, "bytes":[B
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap compressed success, size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 255
    return-object v2
.end method
