.class Lcom/meizu/smart/wristband/servers/BleServerB10$7;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10;->getBtVer(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
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
        "Ljava/lang/String;",
        "Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;",
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
    .line 188
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$7;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->parseBtDevVer(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    move-result-object v0

    .line 192
    .local v0, "btver":Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$7;->call(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    move-result-object v0

    return-object v0
.end method
