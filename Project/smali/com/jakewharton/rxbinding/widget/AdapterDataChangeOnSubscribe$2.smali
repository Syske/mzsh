.class Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "AdapterDataChangeOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

.field final synthetic val$observer:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    .prologue
    .line 31
    .local p0, "this":Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;, "Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;"
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;->val$observer:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;, "Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;"
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;)Landroid/widget/Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;->val$observer:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 34
    return-void
.end method
