.class Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$4;
.super Landroid/os/Handler;
.source "ReSetPwdFrament.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    const v2, 0x7f0802a4

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    const v2, 0x7f0802a3

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
