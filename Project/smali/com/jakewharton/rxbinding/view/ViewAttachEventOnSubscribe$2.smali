.class Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ViewAttachEventOnSubscribe.java"


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

.field final synthetic val$listener:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$2;->val$listener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$2;->val$listener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 43
    return-void
.end method
