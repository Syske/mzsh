.class Lcom/trello/rxlifecycle/RxLifecycle$1$1;
.super Ljava/lang/Object;
.source "RxLifecycle.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trello/rxlifecycle/RxLifecycle$1;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TR;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trello/rxlifecycle/RxLifecycle$1;


# direct methods
.method constructor <init>(Lcom/trello/rxlifecycle/RxLifecycle$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/trello/rxlifecycle/RxLifecycle$1;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/trello/rxlifecycle/RxLifecycle$1$1;->this$0:Lcom/trello/rxlifecycle/RxLifecycle$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "lifecycleEvent":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/trello/rxlifecycle/RxLifecycle$1$1;->this$0:Lcom/trello/rxlifecycle/RxLifecycle$1;

    iget-object v0, v0, Lcom/trello/rxlifecycle/RxLifecycle$1;->val$event:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/RxLifecycle$1$1;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
