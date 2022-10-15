.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "FindPwdActivity.java"


# instance fields
.field private mGetIdentifyCardFrament:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

.field private mReSetPwdFrament:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

.field private mReSetPwdSucceseFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->finish()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public gotoStep1()V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 35
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0e0074

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->mGetIdentifyCardFrament:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 36
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 37
    return-void
.end method

.method public gotoStep2(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->mReSetPwdFrament:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    iput-object p1, v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->username:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 42
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0e0074

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->mReSetPwdFrament:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 44
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 45
    return-void
.end method

.method public gotoStep3()V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 49
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0e0074

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->mReSetPwdSucceseFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 51
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->mGetIdentifyCardFrament:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    .line 28
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->mReSetPwdFrament:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    .line 29
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->mReSetPwdSucceseFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdSucceseFragment;

    .line 30
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->gotoStep1()V

    .line 31
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->back()V

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->setContentView(I)V

    .line 22
    return-void
.end method
