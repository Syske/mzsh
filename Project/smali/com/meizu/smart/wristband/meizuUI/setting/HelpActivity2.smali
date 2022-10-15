.class public Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "HelpActivity2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;
    }
.end annotation


# instance fields
.field private mView:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f0e0234

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->mView:Landroid/widget/ExpandableListView;

    .line 34
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->mView:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->mView:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 36
    const v1, 0x7f0e0073

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;)V

    .line 43
    .local v0, "mMyAdapter":Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->mView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onDestroy()V

    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onPause()V

    .line 55
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f04005d

    invoke-super {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->setContentView(I)V

    .line 28
    return-void
.end method
