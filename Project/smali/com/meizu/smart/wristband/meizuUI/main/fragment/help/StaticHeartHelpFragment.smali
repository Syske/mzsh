.class public Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;
.super Landroid/support/v4/app/Fragment;
.source "StaticHeartHelpFragment.java"


# instance fields
.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 27
    return-void
.end method

.method private setListener(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 30
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const v0, 0x7f0400a4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;->rootView:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;->initView(Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;->setListener(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
