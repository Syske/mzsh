.class final Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$2;
.super Ljava/lang/Object;
.source "NetWorkApi1.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$2;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53d7\u6570\u636e1(http),url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->access$000(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
