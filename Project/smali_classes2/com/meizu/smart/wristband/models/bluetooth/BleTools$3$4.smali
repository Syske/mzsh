.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$4;
.super Ljava/lang/Object;
.source "BleTools.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->call(Lrx/Subscriber;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$4;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 274
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$4;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$4;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    return-void
.end method
