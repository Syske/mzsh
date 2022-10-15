.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;
    }
.end annotation


# static fields
.field private static final DEFALUT_PIN:Ljava/lang/String; = "m#y$7%"

.field private static final MSG_ACTION_CCALLBACK:I = 0x2

.field private static final MSG_CANCEL_NOTIFY:I = 0x3

.field private static final MSG_TOAST:I = 0x1


# instance fields
.field Handlerload:Landroid/os/Handler;

.field private ad:Landroid/app/Dialog;

.field private bShowPwd:Z

.field private btn_login:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

.field private edt_account:Landroid/widget/EditText;

.field private edt_pwd:Landroid/widget/EditText;

.field private iv_edt_pwd_eye:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mPlatformName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private thirdHeadUrl:Ljava/lang/String;

.field private thirdNickName:Ljava/lang/String;

.field public user:Lcom/meizu/smart/wristband/models/database/entity/User;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->bShowPwd:Z

    .line 386
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->Handlerload:Landroid/os/Handler;

    .line 715
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$6;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private CheckLoginIsEnable()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->btn_login:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->btn_login:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private FlymeLogin()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->CheckLoginIsEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdNickName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdHeadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$24(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$25(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$doLogin$34(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$doLogin$35()V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$thirdPartRegesitOrLogin$36(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$13(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$thirdPartRegesitOrLogin$37(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$regesitError$38(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$15(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$regesitError$39(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$16(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$regesitError$40()V

    return-void
.end method

.method static synthetic access$lambda$17(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$regesitSuccess$41(Ljava/lang/String;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$18(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Object;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$regesitSuccess$42(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$19(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$regesitSuccess$43(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$26(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$20(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$regesitSuccess$44(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$21(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$regesitSuccess$45()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$27(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$28(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$29(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$30(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$31(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$setListener$32(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->lambda$doLogin$33(Ljava/lang/Void;)V

    return-void
.end method

.method private checkInputValid()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 351
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->username:Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->password:Ljava/lang/String;

    .line 353
    const/4 v1, 0x0

    .line 355
    .local v1, "retValue":Z
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 356
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 357
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->username:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/CommonData;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->username:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/CommonData;->isPhoneLegal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    const v2, 0x7f0802a5

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    const/4 v2, 0x0

    .line 373
    :goto_0
    return v2

    .line 361
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 363
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 371
    :goto_1
    iget v2, v0, Landroid/os/Message;->what:I

    if-eq v2, v4, :cond_1

    .line 372
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->Handlerload:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    move v2, v1

    .line 373
    goto :goto_0

    .line 364
    :cond_2
    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 365
    const/16 v2, 0xa

    iput v2, v0, Landroid/os/Message;->what:I

    .line 366
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 369
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private doLogin()V
    .locals 2

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->showLoginDialog()V

    .line 255
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gologin(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$11;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action0;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Lrx/Observable;->finallyDo(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 259
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 260
    return-void
.end method

.method private doShowOrHidePwd()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->bShowPwd:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    .line 239
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->bShowPwd:Z

    .line 241
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->iv_edt_pwd_eye:Landroid/widget/ImageView;

    const v1, 0x7f020144

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 251
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    .line 245
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->bShowPwd:Z

    .line 247
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->iv_edt_pwd_eye:Landroid/widget/ImageView;

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static filterEmoji(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "slipStr"    # Ljava/lang/String;

    .prologue
    .line 613
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "[\\ud800\\udc00-\\udbff\\udfff\\ud800-\\udfff]"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 616
    .end local p0    # "source":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private gologin(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/Login;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/Login;-><init>()V

    .line 335
    .local v0, "loginparam":Lcom/meizu/smart/wristband/models/newwork/request/Login;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/newwork/request/Login;->setUsername(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/Login;->setPasswd(Ljava/lang/String;)V

    .line 338
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->loginForData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method private gotoFindPwd()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method private gotoMainOrInfo()V
    .locals 3

    .prologue
    .line 307
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 308
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getIsEmpty()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 315
    :goto_0
    return-void

    .line 312
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private gotoRegist()V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method private gotoRegister()V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 320
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 110
    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_account:Landroid/widget/EditText;

    .line 111
    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    .line 112
    const v0, 0x7f0e0291

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->iv_edt_pwd_eye:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->btn_login:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    .line 115
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->btn_login:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_account:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    return-void
.end method

.method private synthetic lambda$doLogin$33(Ljava/lang/Void;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/Void;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gotoMainOrInfo()V

    return-void
.end method

.method private synthetic lambda$doLogin$34(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080185

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doLogin$35()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$regesitError$38(Ljava/lang/Void;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/Void;

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gotoMainOrInfo()V

    return-void
.end method

.method private synthetic lambda$regesitError$39(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080185

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$regesitError$40()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$regesitSuccess$41(Ljava/lang/String;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "Void"    # Ljava/lang/Boolean;

    .prologue
    .line 568
    invoke-direct {p0, p1, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gologin(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$regesitSuccess$42(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .param p1, "Void"    # Ljava/lang/Object;

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->uploadUserInfo()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$regesitSuccess$43(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gotoRegister()V

    return-void
.end method

.method private synthetic lambda$regesitSuccess$44(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080185

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$regesitSuccess$45()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$setListener$24(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->checkInputValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$25(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->doLogin()V

    return-void
.end method

.method private synthetic lambda$setListener$26(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gotoFindPwd()V

    return-void
.end method

.method private synthetic lambda$setListener$27(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gotoRegist()V

    return-void
.end method

.method private synthetic lambda$setListener$28(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->doShowOrHidePwd()V

    return-void
.end method

.method private synthetic lambda$setListener$29(Ljava/lang/Void;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 187
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdSinaLogin(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setListener$30(Ljava/lang/Void;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 191
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdSinaLogin(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setListener$31(Ljava/lang/Void;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 195
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdSinaLogin(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setListener$32(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->FlymeLogin()V

    return-void
.end method

.method private synthetic lambda$thirdPartRegesitOrLogin$36(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->regesitSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$thirdPartRegesitOrLogin$37(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->regesitError(Ljava/lang/String;)V

    return-void
.end method

.method private regesitError(Ljava/lang/String;)V
    .locals 2
    .param p1, "usdId"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->showLoginDialog()V

    .line 546
    invoke-direct {p0, p1, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gologin(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$15;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$16;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$17;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action0;

    move-result-object v1

    .line 549
    invoke-virtual {v0, v1}, Lrx/Observable;->finallyDo(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 550
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 551
    return-void
.end method

.method private regesitSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "usdId"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->showLoginDialog()V

    .line 567
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)Lrx/functions/Func1;

    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V

    .line 569
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$19;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$20;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 598
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$21;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 599
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$22;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action0;

    move-result-object v1

    .line 600
    invoke-virtual {v0, v1}, Lrx/Observable;->finallyDo(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 601
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 602
    return-void
.end method

.method private setListener()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    .line 164
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 165
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 171
    const v0, 0x7f0e00c5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 172
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 174
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 176
    const v0, 0x7f0e00c6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 177
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 179
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 182
    const v0, 0x7f0e0291

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 186
    const v0, 0x7f0e0294

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 190
    const v0, 0x7f0e0293

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 194
    const v0, 0x7f0e0295

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 198
    const v0, 0x7f0e0296

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 203
    return-void
.end method

.method private showLoginDialog()V
    .locals 7

    .prologue
    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, "layout":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    .line 268
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 269
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 271
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 272
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400b8

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 274
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 275
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f020061

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 276
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x437a0000    # 250.0f

    invoke-static {p0, v5}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x43160000    # 150.0f

    invoke-static {p0, v6}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 277
    const v4, 0x7f0e0258

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 278
    .local v1, "imageView_refresh":Landroid/widget/ImageView;
    const v4, 0x7f05000e

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 279
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 280
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "imageView_refresh":Landroid/widget/ImageView;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method private thirdPartRegesitOrLogin(Ljava/lang/String;)V
    .locals 2
    .param p1, "usdId"    # Ljava/lang/String;

    .prologue
    .line 538
    const-string v0, "m#y$7%"

    invoke-static {p0, p1, p1, v0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->registerWithPin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$13;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)Lrx/functions/Action1;

    move-result-object v1

    .line 539
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$14;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)Lrx/functions/Action1;

    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 541
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 542
    return-void
.end method

.method private thirdSinaLogin(Ljava/lang/String;)V
    .locals 2
    .param p1, "platformName"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->mPlatformName:Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 424
    .local v0, "pf":Lcn/sharesdk/framework/Platform;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 426
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 428
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->authorize()V

    .line 429
    return-void
.end method

.method private uploadInfo(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p1, "sportAim"    # Ljava/lang/String;
    .param p2, "sleepAim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdHeadUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 624
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdHeadUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)V

    .line 625
    .local v0, "imgThread":Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 626
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 629
    .end local v0    # "imgThread":Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$MyImgThread;
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method

.method private uploadUserInfo()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 711
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-static {p0, v0, v1, v1}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitUserInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;ZZ)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/StartActivity;->quit_flag:Ljava/lang/Boolean;

    .line 302
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->finish()V

    .line 304
    return-void
.end method

.method public getImgBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 660
    const/4 v1, 0x0

    .line 661
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 662
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 664
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 665
    .local v5, "myFileUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 666
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 667
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 669
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 670
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 671
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 678
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 679
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v6, v1

    .line 685
    .end local v5    # "myFileUrl":Ljava/net/URL;
    :goto_1
    return-object v6

    .line 680
    .restart local v5    # "myFileUrl":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 682
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 672
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "myFileUrl":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 673
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 674
    const/4 v6, 0x0

    .line 677
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 678
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 679
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 680
    :catch_2
    move-exception v3

    .line 682
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 676
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 677
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 678
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 679
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 683
    :goto_2
    throw v6

    .line 680
    :catch_3
    move-exception v3

    .line 682
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 478
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 534
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 480
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "text":Ljava/lang/String;
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 485
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 490
    :pswitch_3
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->mPlatformName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 491
    .local v1, "pf":Lcn/sharesdk/framework/Platform;
    const-string v4, "sharesdk use_id"

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v4, "sharesdk use_name"

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v4, "sharesdk use_icon"

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserIcon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sharesdk/framework/PlatformDb;->getUserIcon()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdHeadUrl:Ljava/lang/String;

    .line 498
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdNickName:Ljava/lang/String;

    .line 500
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdNickName:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->filterEmoji(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdNickName:Ljava/lang/String;

    .line 502
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "userId":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->mPlatformName:Ljava/lang/String;

    sget-object v5, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "unionid"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 509
    :cond_1
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdPartRegesitOrLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .end local v1    # "pf":Lcn/sharesdk/framework/Platform;
    .end local v3    # "userId":Ljava/lang/String;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 528
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 529
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 485
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public isEmail(Ljava/lang/String;)Z
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string v2, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 381
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 382
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 383
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 216
    const-string v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdNickName:Ljava/lang/String;

    .line 217
    const-string v1, "icon"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdHeadUrl:Ljava/lang/String;

    .line 218
    const-string v1, "user_id"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "userId":I
    if-eqz v0, :cond_1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flyme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->thirdPartRegesitOrLogin(Ljava/lang/String;)V

    .line 227
    .end local v0    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v0    # "userId":I
    :cond_1
    const-string/jumbo v1, "\u83b7\u53d6flyme\u8d26\u53f7ID\u4e3a\u7a7a"

    invoke-static {p0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 453
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 454
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 455
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 456
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 457
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 459
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p3, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 441
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 442
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 443
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 444
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 445
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 446
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->initView()V

    .line 106
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->setListener()V

    .line 107
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x2

    .line 466
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 468
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 469
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 471
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 472
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 474
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/meizu/smart/wristband/StartActivity;->quit_flag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->finish()V

    .line 289
    :cond_0
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onResume()V

    .line 290
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->setContentView(I)V

    .line 99
    return-void
.end method
