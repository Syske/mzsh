.class Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ViewLayoutChangeOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;

.field final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe$2;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe$2;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 33
    return-void
.end method
