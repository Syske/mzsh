.class Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$2;
.super Ljava/lang/Object;
.source "FBBleApi1.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->call(Lrx/Subscriber;)V
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
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$2;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$2;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 562
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 566
    return-void
.end method
