.class public Lcom/tencent/bugly/beta/ui/f;
.super Lcom/tencent/bugly/beta/ui/a;
.source "BUGLY"


# instance fields
.field public m:Lcom/tencent/bugly/beta/download/DownloadTask;

.field protected n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/bugly/beta/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 34
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v0, v0, Lcom/tencent/bugly/beta/global/e;->j:I

    iput v0, p0, Lcom/tencent/bugly/beta/ui/f;->k:I

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/bugly/beta/ui/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 36
    iget v0, p0, Lcom/tencent/bugly/beta/ui/f;->k:I

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/f;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    .line 41
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/f;->i:Lcom/tencent/bugly/beta/global/ResBean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "#757575"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    const-string v2, "beta_tip_message"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/f;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    sget-object v2, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/f;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsCancelBtn:Ljava/lang/String;

    new-instance v2, Lcom/tencent/bugly/beta/global/b;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/b;-><init>(I[Ljava/lang/Object;)V

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsConfirmBtn:Ljava/lang/String;

    new-instance v4, Lcom/tencent/bugly/beta/global/b;

    const/4 v5, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/tencent/bugly/beta/ui/f;->m:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/tencent/bugly/beta/global/b;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/tencent/bugly/beta/ui/f;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_1
    return-object v1

    .line 48
    :cond_1
    const-string v0, "beta_tip_message"

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    iget v2, p0, Lcom/tencent/bugly/beta/ui/f;->k:I

    if-eqz v2, :cond_2

    .line 59
    const-string v2, "please confirm your argument: [Beta.tipsDialogLayoutId] is correct"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 61
    :cond_2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/a;->onDestroyView()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/f;->n:Landroid/widget/TextView;

    .line 72
    return-void
.end method
