.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;
.super Landroid/support/v4/app/Fragment;
.source "ReSetPwdFrament.java"


# instance fields
.field Handlerload:Landroid/os/Handler;

.field private act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

.field private btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

.field private mEditText_rePwd1:Landroid/widget/EditText;

.field private mEditText_rePwd2:Landroid/widget/EditText;

.field private password:Ljava/lang/String;

.field private repassword:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 144
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$4;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->Handlerload:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->checkNextEnable()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->lambda$setListener$20(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->lambda$setListener$21(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->lambda$goUploadrePwd$22(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->lambda$goUploadrePwd$23(Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkInputValue()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->password:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->repassword:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 127
    .local v0, "msg":Landroid/os/Message;
    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->repassword:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    :cond_0
    const/16 v2, 0xa

    iput v2, v0, Landroid/os/Message;->what:I

    .line 130
    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 141
    :goto_0
    return v1

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->repassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 137
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 138
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->Handlerload:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 141
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkNextEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 104
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "strPwd1":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
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

    .line 107
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private goUploadrePwd()V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->modifyPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 117
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 118
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd1:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0249

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd2:Landroid/widget/EditText;

    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    .line 50
    return-void
.end method

.method private synthetic lambda$goUploadrePwd$22(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->gotoStep3()V

    return-void
.end method

.method private synthetic lambda$goUploadrePwd$23(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setListener$20(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->checkInputValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$21(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->goUploadrePwd()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)V

    .line 55
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)Lrx/functions/Func1;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd1:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->mEditText_rePwd2:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    .line 40
    const v0, 0x7f0400a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->rootView:Landroid/view/View;

    .line 41
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->initView()V

    .line 42
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->setListener()V

    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->rootView:Landroid/view/View;

    return-object v0
.end method
