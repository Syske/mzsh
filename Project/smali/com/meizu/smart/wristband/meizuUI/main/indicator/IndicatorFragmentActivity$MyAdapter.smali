.class public Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "IndicatorFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;>;"
    const/4 v0, 0x0

    .line 59
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;

    .line 60
    invoke-direct {p0, p3}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 55
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    .line 56
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->context:Landroid/content/Context;

    .line 61
    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    .line 62
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->context:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 70
    .local v1, "tab":Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    if-nez v1, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 74
    .end local v1    # "tab":Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    :goto_0
    return-object v2

    .line 72
    .restart local v1    # "tab":Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    :cond_0
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v1    # "tab":Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    :cond_1
    move-object v2, v0

    .line 74
    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 79
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 91
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 92
    .local v1, "tab":Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 94
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 95
    return-object v0
.end method
