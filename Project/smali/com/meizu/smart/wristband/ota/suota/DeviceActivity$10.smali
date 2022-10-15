.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$10;
.super Ljava/lang/Object;
.source "DeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$10;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$10;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "broadcast_connect_manutal"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 528
    return-void
.end method
