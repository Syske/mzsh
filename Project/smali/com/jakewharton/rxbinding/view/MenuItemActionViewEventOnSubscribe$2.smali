.class Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "MenuItemActionViewEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 53
    return-void
.end method
