.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$3;
.super Ljava/lang/Object;
.source "DeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->startDeviceScan()V
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
    .line 137
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$300(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    .line 142
    return-void
.end method
