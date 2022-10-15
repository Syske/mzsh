.class public Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "WechatSportActivity.java"


# instance fields
.field private btSave:Landroid/widget/Button;

.field private device:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

.field private ivQrCode:Landroid/widget/ImageView;

.field private layoutQrScan:Landroid/widget/LinearLayout;

.field private layoutQrShow:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private strSavePath:Ljava/lang/String;

.field private tvTip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method private CreateQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->strSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->tvTip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->ivQrCode:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->btSave:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->lambda$setListener$287(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->lambda$setListener$288(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->lambda$setListener$289(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->lambda$setListener$290(Ljava/lang/Void;)V

    return-void
.end method

.method public static createQRImage(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 21
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "widthPix"    # I
    .param p2, "heightPix"    # I
    .param p3, "logoBm"    # Landroid/graphics/Bitmap;
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 252
    if-eqz p0, :cond_0

    :try_start_0
    const-string v3, ""

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    :cond_0
    const/4 v3, 0x0

    .line 293
    :goto_0
    return v3

    .line 257
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v8, "hints":Ljava/util/Map;
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v4, "utf-8"

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v17

    .line 266
    .local v17, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v3, p1, p2

    new-array v10, v3, [I

    .line 269
    .local v10, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 270
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 271
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    mul-int v3, v20, p1

    add-int v3, v3, v19

    const/high16 v4, -0x1000000

    aput v4, v10, v3

    .line 270
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 274
    :cond_2
    mul-int v3, v20, p1

    add-int v3, v3, v19

    const/4 v4, -0x1

    aput v4, v10, v3
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 289
    .end local v8    # "hints":Ljava/util/Map;
    .end local v10    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :catch_0
    move-exception v18

    .line 290
    .local v18, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const/4 v3, 0x0

    goto :goto_0

    .line 269
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v8    # "hints":Ljava/util/Map;
    .restart local v10    # "pixels":[I
    .restart local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 280
    .end local v19    # "x":I
    :cond_4
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 281
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p1

    move/from16 v15, p1

    move/from16 v16, p2

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 283
    if-eqz p3, :cond_5

    .line 288
    :cond_5
    if-eqz v9, :cond_6

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 289
    .end local v8    # "hints":Ljava/util/Map;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v20    # "y":I
    :catch_1
    move-exception v18

    goto :goto_4
.end method

.method private getQrText(Ljava/lang/String;)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/String;)V

    .line 142
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 173
    const v0, 0x7f0e02dd

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->ivQrCode:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0e0228

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->tvTip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 175
    const v0, 0x7f0e02de

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->btSave:Landroid/widget/Button;

    .line 177
    const v0, 0x7f0e02df

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->layoutQrScan:Landroid/widget/LinearLayout;

    .line 178
    const v0, 0x7f0e02dc

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->layoutQrShow:Landroid/widget/LinearLayout;

    .line 180
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->layoutQrShow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->layoutQrScan:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    return-void
.end method

.method private jumpToBind()V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->finish()V

    .line 212
    return-void
.end method

.method private jumpToWechat()V
    .locals 6

    .prologue
    .line 228
    :try_start_0
    const-string v3, "weixin://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 229
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "\u65e0\u6cd5\u8df3\u8f6c\u5230\u5fae\u4fe1\uff0c\u8bf7\u68c0\u67e5\u60a8\u662f\u5426\u5b89\u88c5\u4e86\u5fae\u4fe1\uff01"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private synthetic lambda$setListener$287(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->saveQRImage()V

    return-void
.end method

.method private synthetic lambda$setListener$288(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$289(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->jumpToWechat()V

    return-void
.end method

.method private synthetic lambda$setListener$290(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->jumpToBind()V

    return-void
.end method

.method private saveQRImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5df2\u4fdd\u5b58\u5230"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->strSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 217
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->layoutQrShow:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->layoutQrScan:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "scanIntent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->strSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 192
    const v0, 0x7f0e02de

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 196
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 199
    const v0, 0x7f0e02e0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 202
    const v0, 0x7f0e0228

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 206
    return-void
.end method


# virtual methods
.method public getQrTextFormNetwork(Ljava/lang/String;)V
    .locals 10
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {}, Lcom/meizu/smart/wristband/models/newwork/SSLSocketFactoryEx;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 337
    .local v3, "httpCient":Lorg/apache/http/client/HttpClient;
    const-string v7, "https://wxapp.meiklife.cn/api/wxsports/watch?"

    .line 338
    .local v7, "url":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "productid=20245&did="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&mac="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&operate=createqr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getQrTextFormNetwork url = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 343
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 350
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 352
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 353
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    const-string v8, "utf-8"

    invoke-static {v2, v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "response":Ljava/lang/String;
    const-class v8, Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;

    invoke-static {v6, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;

    .line 356
    .local v0, "codeData":Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;->isStatus()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 357
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;->getResult()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->CreateQrCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v0    # "codeData":Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "response":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 359
    .restart local v0    # "codeData":Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v6    # "response":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "\u83b7\u53d6\u4e8c\u7ef4\u7801\u5931\u8d25,\u8bf7\u786e\u8ba4\u624b\u73afMAC\u662f\u5426\u5728\u6388\u6743\u8303\u56f4!"

    invoke-direct {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->ShowToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v0    # "codeData":Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    const-string/jumbo v8, "\u83b7\u53d6\u4e8c\u7ef4\u7801\u5931\u8d25,\u8bf7\u786e\u5b9a\u7f51\u7edc\u662f\u5426\u6b63\u786e!"

    invoke-direct {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->ShowToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->device:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .line 102
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->initView()V

    .line 103
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->setListener()V

    .line 106
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->device:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    if-eqz v4, :cond_1

    .line 107
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->device:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "mac":Ljava/lang/String;
    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qrcode mac = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 111
    const-string v4, "meizu"

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSdCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qrcode path1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "DirPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    const-string v3, "/mnt/sdcard/meizu"

    .line 118
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qrcode path2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->strSavePath:Ljava/lang/String;

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qrcode strSavePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->strSavePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->strSavePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->tvTip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 126
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->ivQrCode:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->btSave:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->ivQrCode:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->strSavePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    .end local v0    # "DirPath":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mac":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 130
    .restart local v0    # "DirPath":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "mac":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->getQrText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f04009b

    invoke-super {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->setContentView(I)V

    .line 95
    return-void
.end method
