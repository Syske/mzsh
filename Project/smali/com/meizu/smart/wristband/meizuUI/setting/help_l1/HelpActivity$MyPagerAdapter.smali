.class Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    .line 98
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
