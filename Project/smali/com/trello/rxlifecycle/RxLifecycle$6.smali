.class final Lcom/trello/rxlifecycle/RxLifecycle$6;
.super Ljava/lang/Object;
.source "RxLifecycle.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trello/rxlifecycle/RxLifecycle;
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
        "Lcom/trello/rxlifecycle/ActivityEvent;",
        "Lcom/trello/rxlifecycle/ActivityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/trello/rxlifecycle/ActivityEvent;)Lcom/trello/rxlifecycle/ActivityEvent;
    .locals 3
    .param p1, "lastEvent"    # Lcom/trello/rxlifecycle/ActivityEvent;

    .prologue
    .line 238
    sget-object v0, Lcom/trello/rxlifecycle/RxLifecycle$8;->$SwitchMap$com$trello$rxlifecycle$ActivityEvent:[I

    invoke-virtual {p1}, Lcom/trello/rxlifecycle/ActivityEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_0
    sget-object v0, Lcom/trello/rxlifecycle/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle/ActivityEvent;

    .line 248
    :goto_0
    return-object v0

    .line 242
    :pswitch_1
    sget-object v0, Lcom/trello/rxlifecycle/ActivityEvent;->STOP:Lcom/trello/rxlifecycle/ActivityEvent;

    goto :goto_0

    .line 244
    :pswitch_2
    sget-object v0, Lcom/trello/rxlifecycle/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle/ActivityEvent;

    goto :goto_0

    .line 246
    :pswitch_3
    sget-object v0, Lcom/trello/rxlifecycle/ActivityEvent;->STOP:Lcom/trello/rxlifecycle/ActivityEvent;

    goto :goto_0

    .line 248
    :pswitch_4
    sget-object v0, Lcom/trello/rxlifecycle/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle/ActivityEvent;

    goto :goto_0

    .line 250
    :pswitch_5
    new-instance v0, Lcom/trello/rxlifecycle/RxLifecycle$OutsideLifecycleException;

    const-string v1, "Cannot bind to Activity lifecycle when outside of it."

    invoke-direct {v0, v1}, Lcom/trello/rxlifecycle/RxLifecycle$OutsideLifecycleException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    check-cast p1, Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/RxLifecycle$6;->call(Lcom/trello/rxlifecycle/ActivityEvent;)Lcom/trello/rxlifecycle/ActivityEvent;

    move-result-object v0

    return-object v0
.end method
