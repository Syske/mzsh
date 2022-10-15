.class Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;
.super Landroid/os/Handler;
.source "SetPwdFrament.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    :pswitch_0
    return-void

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    const v2, 0x7f0802ad

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    const v2, 0x7f08029d

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    const v2, 0x7f0802a4

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    const v2, 0x7f0802a3

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    const v2, 0x7f0802a8

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
