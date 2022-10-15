.class Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;
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
    .line 386
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    :pswitch_0
    return-void

    .line 392
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    const v2, 0x7f0802ad

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    const v2, 0x7f0802a4

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    const v2, 0x7f0802a3

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    const v2, 0x7f0802a7

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    const v2, 0x7f0802a8

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
