.class Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ViewDragOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;->access$100(Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 40
    return-void
.end method
