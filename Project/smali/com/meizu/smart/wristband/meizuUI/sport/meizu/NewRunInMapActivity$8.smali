.class Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$8;
.super Ljava/lang/Object;
.source "NewRunInMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 884
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 887
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 888
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 889
    return-void
.end method
