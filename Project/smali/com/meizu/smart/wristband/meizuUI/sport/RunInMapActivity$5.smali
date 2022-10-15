.class Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$5;
.super Ljava/lang/Object;
.source "RunInMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 636
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 637
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 638
    return-void
.end method
