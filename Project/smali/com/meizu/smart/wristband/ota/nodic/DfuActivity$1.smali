.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DfuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;
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
    .line 132
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "action":Ljava/lang/String;
    const-string v0, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "progress":I
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "currentPart":I
    sget-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->EXTRA_PARTS_TOTAL:Ljava/lang/ThreadLocal;

    .line 146
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 147
    .local v3, "totalParts":I
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$000(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;IIIZZ)V

    .line 170
    .end local v1    # "progress":I
    .end local v2    # "currentPart":I
    .end local v3    # "totalParts":I
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v0, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 152
    .local v6, "error":I
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_2

    move v10, v9

    .line 155
    .local v10, "connectionStateError":Z
    :goto_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    move v7, v4

    move v8, v4

    invoke-static/range {v5 .. v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;IIIZZ)V

    .line 159
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$200(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1$1;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1$1;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v10    # "connectionStateError":Z
    :cond_2
    move v10, v4

    .line 152
    goto :goto_1
.end method
