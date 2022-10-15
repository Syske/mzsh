.class Lcom/meizu/smart/wristband/servers/BleServerB52$27;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
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
    .line 601
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$27;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 604
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getStaticHeartRateEnd()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 605
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 601
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$27;->call(Ljava/lang/Boolean;)V

    return-void
.end method
