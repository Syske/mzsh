.class public Lcom/tencent/bugly/beta/ui/e;
.super Lcom/tencent/bugly/beta/ui/a;
.source "BUGLY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/bugly/beta/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/bugly/beta/ui/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 28
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/e;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/e;->i:Lcom/tencent/bugly/beta/global/ResBean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "#757575"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    const-string v1, "beta_tip_message"

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 34
    const-string/jumbo v1, "\u68c0\u6d4b\u5230\u5f53\u524d\u7248\u672c\u9700\u8981\u91cd\u542f\uff0c\u662f\u5426\u91cd\u542f\u5e94\u7528\uff1f"

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/e;->e:Landroid/widget/TextView;

    const-string/jumbo v3, "\u66f4\u65b0\u63d0\u793a"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v3, Lcom/tencent/bugly/beta/global/b;

    const/16 v4, 0x8

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/tencent/bugly/beta/global/b;-><init>(I[Ljava/lang/Object;)V

    const-string/jumbo v4, "\u91cd\u542f\u5e94\u7528"

    new-instance v5, Lcom/tencent/bugly/beta/global/b;

    const/4 v6, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/tencent/bugly/beta/global/b;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/tencent/bugly/beta/ui/e;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    return-object v0
.end method
