.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;
.super Landroid/support/v4/app/Fragment;
.source "SetPwdFrament.java"


# static fields
.field private static final DEFALUT_PIN:Ljava/lang/String; = "e#y$7%"


# instance fields
.field Handlerload:Landroid/os/Handler;

.field private act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

.field private btn_finish:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

.field private drErrorView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;

.field private drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

.field private edt_pwd1:Landroid/widget/EditText;

.field private edt_pwd2:Landroid/widget/EditText;

.field private imageView_refresh:Landroid/widget/ImageView;

.field private password:Ljava/lang/String;

.field private repassword:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private text_tip_content:Landroid/widget/TextView;

.field private text_tip_title:Landroid/widget/TextView;

.field private userInfoServer:Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 283
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->Handlerload:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->checkNextEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->gotoMainOrInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->lambda$setListener$66(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->lambda$setListener$67(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->lambda$setListener$68(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->lambda$showRegisterDialog$69(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->lambda$showRegisterDialog$70(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->lambda$goUploadPwd$71(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->lambda$goUploadPwd$72(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->lambda$goUploadPwd$73(Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkInputValue()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->password:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->repassword:Ljava/lang/String;

    .line 160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 163
    .local v0, "msg":Landroid/os/Message;
    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 165
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->Handlerload:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    :goto_0
    return v1

    .line 167
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd2:Landroid/widget/EditText;

    .line 168
    invoke-virtual {v2}, Landroid/widget/EditText;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->repassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    :cond_1
    const/16 v2, 0xa

    iput v2, v0, Landroid/os/Message;->what:I

    .line 170
    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->repassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 176
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 177
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 178
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->Handlerload:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_5

    .line 181
    const/16 v2, 0xc

    iput v2, v0, Landroid/os/Message;->what:I

    .line 182
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 183
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->Handlerload:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 186
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkNextEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 145
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "strPwd1":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "strPwd2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->btn_finish:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->btn_finish:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private goUploadPwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 322
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 323
    return-void
.end method

.method private gotoMainOrInfo()V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd1:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd2:Landroid/widget/EditText;

    .line 78
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->btn_finish:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    .line 79
    return-void
.end method

.method private synthetic lambda$goUploadPwd$71(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$goUploadPwd$72(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    const v2, 0x7f080220

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$goUploadPwd$73(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    const v2, 0x7f08021f

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setListener$66(Ljava/lang/Void;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/Void;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->back()V

    return-void
.end method

.method private synthetic lambda$setListener$67(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->checkInputValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$68(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->showRegisterDialog()V

    return-void
.end method

.method private synthetic lambda$showRegisterDialog$69(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->regesitSuccess()V

    return-void
.end method

.method private synthetic lambda$showRegisterDialog$70(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->regesitError(Ljava/lang/String;)V

    return-void
.end method

.method private regesitError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->text_tip_title:Landroid/widget/TextView;

    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->text_tip_content:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->imageView_refresh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 267
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->imageView_refresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->drErrorView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->text_tip_content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method private regesitSuccess()V
    .locals 6

    .prologue
    .line 243
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->text_tip_title:Landroid/widget/TextView;

    const v4, 0x7f080220

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->imageView_refresh:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 245
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->imageView_refresh:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-direct {v1, v3}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, "loginInfoServer":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->username:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->saveLoginInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-direct {v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->userInfoServer:Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    .line 252
    new-instance v2, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;-><init>()V

    .line 253
    .local v2, "logindata":Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->userInfoServer:Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->username:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/response/Logindata;)Z

    .line 254
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->setIsFirstLogin(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v2    # "logindata":Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->setVisibility(I)V

    .line 261
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 87
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lrx/functions/Func1;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 92
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd1:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->edt_pwd2:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    return-void
.end method

.method private showRegisterDialog()V
    .locals 8

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "layout":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 193
    .local v0, "ad":Landroid/app/Dialog;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 194
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 196
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 197
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04007b

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 198
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    const/high16 v6, 0x43a00000    # 320.0f

    invoke-static {v5, v6}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static {v6, v7}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 201
    const v4, 0x7f0e026c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->drErrorView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;

    .line 202
    const v4, 0x7f0e00dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    .line 203
    const v4, 0x7f0e0258

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->imageView_refresh:Landroid/widget/ImageView;

    .line 204
    const v4, 0x7f0e026d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->text_tip_title:Landroid/widget/TextView;

    .line 205
    const v4, 0x7f0e026e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->text_tip_content:Landroid/widget/TextView;

    .line 206
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    const v5, 0x7f05000e

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 207
    .local v1, "animation":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 208
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->imageView_refresh:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->drErrorView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$3;

    invoke-direct {v5, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->setOnDrawCompleteListenter(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;)V

    .line 217
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$4;

    invoke-direct {v5, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->setOnDrawCompleteListenter(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;)V

    .line 227
    .end local v1    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->password:Ljava/lang/String;

    const-string v7, "e#y$7%"

    invoke-static {v4, v5, v6, v7}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->registerWithPin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lrx/functions/Action1;

    move-result-object v5

    .line 229
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lrx/functions/Action1;

    move-result-object v5

    .line 230
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 231
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 233
    return-void
.end method


# virtual methods
.method public isEmail(Ljava/lang/String;)Z
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v2, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 278
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 279
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 280
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v0, 0x7f0400a6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->rootView:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    .line 70
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->initView()V

    .line 71
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->setListener()V

    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->rootView:Landroid/view/View;

    return-object v0
.end method
