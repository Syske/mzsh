.class public Lcom/meizu/smart/wristband/bluetooth/BleService$LocalBinder;
.super Landroid/os/Binder;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$LocalBinder;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/meizu/smart/wristband/bluetooth/BleService;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$LocalBinder;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    return-object v0
.end method
