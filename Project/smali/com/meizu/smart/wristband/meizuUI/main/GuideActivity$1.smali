.class Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;
.super Landroid/os/Handler;
.source "GuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$008(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)I

    .line 61
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$002(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;I)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 65
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
