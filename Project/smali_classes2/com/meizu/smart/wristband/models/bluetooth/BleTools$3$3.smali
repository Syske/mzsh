.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$3;
.super Ljava/lang/Object;
.source "BleTools.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
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
    .line 279
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$3;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$3;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$3;->call(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
