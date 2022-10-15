.class Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ViewSystemUiVisibilityChangeOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 33
    return-void
.end method
