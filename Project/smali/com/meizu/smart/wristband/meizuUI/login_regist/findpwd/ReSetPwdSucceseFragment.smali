.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;
.super Landroid/support/v4/app/Fragment;
.source "ReSetPwdSucceseFragment.java"


# instance fields
.field private act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;)Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    return-object v0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;)V

    .line 34
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 40
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    .line 26
    const v0, 0x7f0400a9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;->rootView:Landroid/view/View;

    .line 27
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;->setListener()V

    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
