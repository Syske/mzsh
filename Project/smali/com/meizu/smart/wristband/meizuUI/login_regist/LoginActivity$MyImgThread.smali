.class Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyImgThread"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private imgPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;
    .param p2, "imgpath"    # Ljava/lang/String;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;->imgPath:Ljava/lang/String;

    .line 642
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 647
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;->imgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getImgBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;->bitmap:Landroid/graphics/Bitmap;

    .line 648
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 649
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 651
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 652
    return-void
.end method
