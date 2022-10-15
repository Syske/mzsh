.class Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;
.super Ljava/lang/Object;
.source "NewRunInMapActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUnLocked(Z)V
    .locals 4
    .param p1, "lock"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 856
    if-eqz p1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$002(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Z)Z

    .line 858
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->pauseRecord()V

    .line 859
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$700(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    .line 860
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$1000(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$1100(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 866
    :cond_0
    return-void
.end method
