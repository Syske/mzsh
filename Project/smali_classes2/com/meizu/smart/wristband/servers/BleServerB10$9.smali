.class Lcom/meizu/smart/wristband/servers/BleServerB10$9;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10;->prepareOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB10;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$9;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$9;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/smart/wristband/servers/BleServerB10;->otaOrLogout:Z

    .line 256
    return-void
.end method
