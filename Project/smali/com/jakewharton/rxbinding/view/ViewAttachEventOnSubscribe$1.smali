.class Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "ViewAttachEventOnSubscribe.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;->ATTACH:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    invoke-static {v1, v2}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->create(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;->DETACH:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    invoke-static {v1, v2}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->create(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method
