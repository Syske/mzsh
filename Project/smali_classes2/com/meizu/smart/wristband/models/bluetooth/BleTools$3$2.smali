.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;
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
    .line 284
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 287
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    iget-object v2, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 288
    .local v0, "s1":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    iget-object v2, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$cmd:Ljava/lang/String;

    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v5

    .line 289
    .local v1, "s2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 294
    :goto_0
    return-object v2

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    iget-object v2, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    iget-object v3, v3, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 294
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;->call(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
