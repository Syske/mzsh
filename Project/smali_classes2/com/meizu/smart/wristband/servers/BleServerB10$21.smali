.class Lcom/meizu/smart/wristband/servers/BleServerB10$21;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10;->saveAlarm(Ljava/lang/String;)Lrx/Observable;
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
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB10;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$21;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$21;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lrx/Observable;
    .locals 4
    .param p1, "alarm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "alram":[Ljava/lang/String;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 370
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setAlarmClock1(Ljava/lang/String;)Lrx/Observable;

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "alram":[Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method
