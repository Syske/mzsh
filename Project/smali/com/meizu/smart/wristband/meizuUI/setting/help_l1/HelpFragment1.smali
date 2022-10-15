.class public Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpFragment1;
.super Landroid/support/v4/app/Fragment;
.source "HelpFragment1.java"


# instance fields
.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

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
    const v0, 0x7f040066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpFragment1;->rootView:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpFragment1;->rootView:Landroid/view/View;

    return-object v0
.end method
