.class Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "ViewScrollChangeEventOnSubscribe.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p5}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->create(Landroid/view/View;IIII)Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method
