.class Lcom/meizu/smart/wristband/servers/BleServerB52$28;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52;->getStaticHeartRate()Lrx/Observable;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB52;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$28;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$28;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->saveStaticHeartRate(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 596
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$28;->call(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
