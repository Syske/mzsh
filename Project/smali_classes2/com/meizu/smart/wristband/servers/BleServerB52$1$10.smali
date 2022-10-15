.class Lcom/meizu/smart/wristband/servers/BleServerB52$1$10;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$10;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$10;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->savePace(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 145
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$10;->call(Ljava/lang/Integer;)V

    return-void
.end method
