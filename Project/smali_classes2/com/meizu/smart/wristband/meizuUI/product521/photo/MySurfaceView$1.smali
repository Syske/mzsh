.class Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;
.super Ljava/lang/Object;
.source "MySurfaceView.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 38
    :try_start_0
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->access$000(Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 39
    .local v2, "display":Landroid/view/Display;
    const/4 v6, 0x0

    .line 41
    .local v6, "rotation":I
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->access$100(Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 43
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 76
    :goto_0
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    .line 91
    :goto_1
    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "bm":Landroid/graphics/Bitmap;
    add-int/lit16 v8, v6, 0xb4

    invoke-static {v0, v8}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, "file":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 98
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 100
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 101
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 107
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->access$000(Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "take photo successed at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 111
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->access$000(Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, "take photo successed!"

    invoke-static {v8, v9}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "display":Landroid/view/Display;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "rotation":I
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_2
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    iget-object v8, v8, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->startPreview()V

    .line 118
    return-void

    .line 45
    .restart local v2    # "display":Landroid/view/Display;
    .restart local v6    # "rotation":I
    :pswitch_0
    const/16 v6, 0x10e

    .line 46
    goto/16 :goto_0

    .line 48
    :pswitch_1
    const/16 v6, 0xb4

    .line 49
    goto/16 :goto_0

    .line 51
    :pswitch_2
    const/16 v6, 0x5a

    .line 52
    goto/16 :goto_0

    .line 54
    :pswitch_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 60
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_0

    .line 62
    :pswitch_4
    const/16 v6, 0x5a

    .line 63
    goto/16 :goto_0

    .line 65
    :pswitch_5
    const/4 v6, 0x0

    .line 66
    goto/16 :goto_0

    .line 68
    :pswitch_6
    const/16 v6, 0x10e

    .line 69
    goto/16 :goto_0

    .line 71
    :pswitch_7
    const/16 v6, 0xb4

    goto/16 :goto_0

    .line 78
    :pswitch_8
    const/16 v6, 0x10e

    .line 79
    goto/16 :goto_1

    .line 81
    :pswitch_9
    const/16 v6, 0xb4

    .line 82
    goto/16 :goto_1

    .line 84
    :pswitch_a
    const/16 v6, 0x5a

    .line 85
    goto/16 :goto_1

    .line 87
    :pswitch_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 112
    .end local v2    # "display":Landroid/view/Display;
    .end local v6    # "rotation":I
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 76
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 60
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
