.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "RegistActivity.java"


# instance fields
.field private mPhoneRegistFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

.field private mSetPwdFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->finish()V

    .line 78
    return-void
.end method

.method public gotoPwdRegist()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0e0074

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->mSetPwdFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 68
    return-void
.end method

.method public gotoStep1()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 34
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0e0074

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->mPhoneRegistFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    return-void
.end method

.method public gotoStep2(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->mSetPwdFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    iput-object p1, v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->username:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0e0074

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->mSetPwdFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    return-void
.end method

.method public gotoStepPrivacy()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public gotoStepTerms()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->mSetPwdFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    .line 26
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->mPhoneRegistFragment:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    .line 27
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->gotoStep1()V

    .line 30
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->back()V

    .line 84
    const/4 v0, 0x1

    .line 86
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
    .line 19
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->setContentView(I)V

    .line 20
    return-void
.end method
