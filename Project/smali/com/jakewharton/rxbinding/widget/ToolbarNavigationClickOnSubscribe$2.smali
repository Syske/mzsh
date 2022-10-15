.class Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ToolbarNavigationClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;)Landroid/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
