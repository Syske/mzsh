.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;->call(Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Landroid/content/Intent;)Ljava/lang/Void;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcast_notify_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const-string v3, "broadcast_notify_message_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "message":Ljava/lang/String;
    const-string v3, "NT+TOPACE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->parseCmdResponse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "param":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 219
    .local v0, "i":I
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I

    move-result v3

    if-le v3, v0, :cond_0

    .line 220
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I

    move-result v0

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v4, v4, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v3, v4, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->setData(Landroid/content/Context;I)V

    .line 227
    .end local v0    # "i":I
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "param":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
