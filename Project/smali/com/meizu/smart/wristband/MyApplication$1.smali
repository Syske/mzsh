.class Lcom/meizu/smart/wristband/MyApplication$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/MyApplication;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/MyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/MyApplication;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/MyApplication$1;->this$0:Lcom/meizu/smart/wristband/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "rawBinder"    # Landroid/os/IBinder;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/smart/wristband/MyApplication$1;->this$0:Lcom/meizu/smart/wristband/MyApplication;

    check-cast p2, Lcom/meizu/smart/wristband/bluetooth/BleService$LocalBinder;

    .end local p2    # "rawBinder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/meizu/smart/wristband/bluetooth/BleService$LocalBinder;->getService()Lcom/meizu/smart/wristband/bluetooth/BleService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/MyApplication;->access$002(Lcom/meizu/smart/wristband/MyApplication;Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/meizu/smart/wristband/bluetooth/BleService;

    .line 36
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "classname"    # Landroid/content/ComponentName;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/MyApplication$1;->this$0:Lcom/meizu/smart/wristband/MyApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/MyApplication;->access$002(Lcom/meizu/smart/wristband/MyApplication;Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/meizu/smart/wristband/bluetooth/BleService;

    .line 41
    return-void
.end method
