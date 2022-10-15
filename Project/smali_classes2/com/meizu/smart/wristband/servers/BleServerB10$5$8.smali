.class Lcom/meizu/smart/wristband/servers/BleServerB10$5$8;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10$5;->call(Lrx/Subscriber;)V
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
.field final synthetic this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$8;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$8;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB10$5;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->savePace(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 133
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$8;->call(Ljava/lang/Integer;)V

    return-void
.end method
