.class Lcom/meizu/smart/wristband/servers/BleServerB10$20;
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
        "Ljava/lang/Boolean;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

.field final synthetic val$alarm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB10;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$20;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$20;->val$alarm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$20;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 4
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$20;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$20;->val$alarm:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveAlarmString(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 379
    .local v0, "b":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method
