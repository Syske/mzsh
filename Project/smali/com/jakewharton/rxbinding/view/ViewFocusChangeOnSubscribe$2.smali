.class Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ViewFocusChangeOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 32
    return-void
.end method
