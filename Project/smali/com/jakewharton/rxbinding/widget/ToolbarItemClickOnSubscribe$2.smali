.class Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "ToolbarItemClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;)Landroid/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 37
    return-void
.end method
