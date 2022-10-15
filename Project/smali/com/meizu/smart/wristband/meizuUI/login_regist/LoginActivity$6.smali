.class Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$6;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x64

    .line 719
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 720
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    .line 723
    .local v3, "photo":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 724
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " baos.toByteArray().length=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 726
    const/16 v2, 0x64

    .line 728
    .local v2, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    if-le v4, v6, :cond_0

    .line 729
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 731
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 732
    add-int/lit8 v2, v2, -0xa

    goto :goto_0

    .line 734
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " baos.toByteArray().length=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 736
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-static {v5}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    iput-object v5, v4, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 737
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v4, v4, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    if-eqz v4, :cond_1

    .line 739
    :try_start_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v4, v4, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setPortrait(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "options":I
    .end local v3    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-void

    .line 740
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "options":I
    .restart local v3    # "photo":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
