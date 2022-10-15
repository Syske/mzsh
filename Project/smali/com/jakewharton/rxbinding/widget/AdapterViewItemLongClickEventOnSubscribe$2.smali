.class Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "AdapterViewItemLongClickEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;->access$100(Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;)Landroid/widget/AdapterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 45
    return-void
.end method
