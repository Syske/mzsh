.class Lcom/meizu/smart/wristband/servers/SmsContentObserver$4$1;
.super Ljava/lang/Object;
.source "SmsContentObserver.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;->call([B)Lrx/Observable;
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
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver$4$1;->this$1:Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver$4$1;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/SmsContentObserver$4$1;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver$4$1;->this$1:Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver$4$1;->val$bytes:[B

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->pushByte([B)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
