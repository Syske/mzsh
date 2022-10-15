.class Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ViewScrollChangeEventOnSubscribe.java"


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


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 36
    return-void
.end method
