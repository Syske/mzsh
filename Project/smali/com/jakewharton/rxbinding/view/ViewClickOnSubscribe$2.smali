.class Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ViewClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
