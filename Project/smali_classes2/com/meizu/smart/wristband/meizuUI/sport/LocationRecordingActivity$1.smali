.class Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity$1;
.super Ljava/lang/Object;
.source "LocationRecordingActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const-string v3, "broadcast_notify_message_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "strNotifytion":Ljava/lang/String;
    const-string v3, "NT+HEART"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->parseCmdResponse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "param":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 57
    .local v2, "value":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;->onHeartReaded(I)V

    .line 59
    .end local v0    # "param":[Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity$1;->call(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
