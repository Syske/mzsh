.class Lcom/meizu/smart/wristband/servers/BleServerB52$19;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52;->saveLongSit(Ljava/lang/String;)Lrx/Observable;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

.field final synthetic val$longsit:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB52;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$19;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$19;->val$longsit:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 442
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$19;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$19;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$19;->val$longsit:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveLongSitString(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 446
    return-void
.end method
