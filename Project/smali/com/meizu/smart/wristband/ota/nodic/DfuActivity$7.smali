.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$7;
.super Ljava/lang/Object;
.source "DfuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$7;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v3, "broadcast_connect_manutal"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "broadcast_notify_connect_state_data"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$7;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    new-instance v1, Landroid/content/Intent;

    const-string v3, "action_UNBUND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v1, "intent1":Landroid/content/Intent;
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$7;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-virtual {v3, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 506
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$7;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    const-class v4, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$7;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-virtual {v3, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->startActivity(Landroid/content/Intent;)V

    .line 508
    return-void
.end method
